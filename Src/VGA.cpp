#include "VGA.h"
#include "InterruptManager.h"

static VGA *__vga;

extern "C" {	
	void RaiseHSyncLine(void) {__vga->pinHSync.set(1);}
	void RaiseVSyncLine(void) {__vga->pinVSync.set(1);}
	void LowerHSyncLine(void) {__vga->pinHSync.set(0);}
	void LowerVSyncLine(void) {__vga->pinVSync.set(0);}
}

static volatile uint32_t Frame;
static uint32_t FrameBufferAddress;
static uint32_t CurrentLineAddress;
uint32_t Line;

void VGA::puts(char *s, int len)
{
	while(--len >= 0)
	{
		disp.putChar(*(s++));
	}
}

void VGA::init(void)
{
	__vga = this;
	
	FrameBufferAddress = (uint32_t)disp.buffer;
	
	disp.setBackColor(0x00);
	disp.clear();
	disp.setPaintColor(0xFF);
	disp.putRectangle(10, 10, 10, 10);
	puts("this is a test test test", 25);
	disp.gotoPixelPos(10, 20);
	
	CurrentLineAddress = FrameBufferAddress;
	
	RCC->APB2ENR |= RCC_APB2ENR_TIM9EN;
	
	initPins(1 << 6);
	initPins(1 << 7);
	
	RaiseHSyncLine();
	RaiseVSyncLine();
	
	TIM9->CR1=TIM_CR1_ARPE;
	TIM9->DIER=TIM_DIER_UIE|TIM_DIER_CC1IE|TIM_DIER_CC2IE;
	TIM9->CCMR1=0;
	TIM9->CCER=0;
	TIM9->PSC=0;
	
	TIM9->ARR=5338;
	TIM9->CCR1=640;
	TIM9->CCR2=959;
	
	enable_IRQ(TIM1_BRK_TIM9_IRQn, 0, 0);
	
	TIM9->CR1|=TIM_CR1_CEN;
}

extern "C" {
	void TIM1_BRK_TIM9_IRQHandler(void)
	{
		uint32_t sr=TIM9->SR;
		TIM9->SR=0;
		switch(sr)
		{
			case 1: LowerHSyncLine(); break;
			case 2: RaiseHSyncLine(); break;
			case 4:
				if (Line < 400)
				{
					__vga->vgaDMA->startDMA(CurrentLineAddress);
					if (Line&1) CurrentLineAddress += __vga->vgaDMA->pixelsPerRow;
				}
				else if (Line == 400)
				{
					Frame++;
				}
				else if (Line == 412)
				{
					RaiseVSyncLine();
				}
				else if (Line == 414)
				{
					LowerVSyncLine();
				}
				else if (Line == 448)
				{
					Line = (uint32_t)-1;
					CurrentLineAddress = FrameBufferAddress;
				}
				Line++;
				break;
		}
	}
}
