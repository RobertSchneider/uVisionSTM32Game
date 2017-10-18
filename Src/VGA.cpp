#include "VGA.h"

void VGA::update(void)
{
	
}

static VGA *vga;

extern "C" {	
	void RaiseHSyncLine(void) {vga->pinHSync.set(1);}
	void RaiseVSyncLine(void) {vga->pinVSync.set(1);}
	void LowerHSyncLine(void) {vga->pinHSync.set(0);}
	void LowerVSyncLine(void) {vga->pinVSync.set(0);}
}

static volatile uint32_t Frame;
static uint32_t FrameBufferAddress;
static uint32_t CurrentLineAddress;
static uint32_t PixelsPerRow;
uint32_t Line;

#define ADDR_BUFF1 ((uint8_t*)0x20000400)
#define ADDR_BUFF2 ((uint8_t*)0x20010000)

void enable_IRQ(uint8_t irq, uint8_t preemptiveprio, int subprio)
{
	uint8_t tmpprio=0x00, tmppre=0x00,tmpsub=0x0F;
	tmpprio = (0x700 - ((SCB->AIRCR) & (uint32_t)0x700)) >> 0x08;
	tmppre = (0x4 - tmpprio);
	tmpsub = tmpsub >> tmpprio;
	tmpprio = preemptiveprio << tmppre;
	tmpprio |= (uint8_t)(subprio & tmpsub);
	tmpprio = tmpprio << 0x04;
	NVIC->IP[irq] = tmpprio;
	NVIC->ISER[irq >> 0x05] = (uint32_t)0x01 << (irq & (uint8_t)0x1F);
}

void initPins(MTYPE mask)
{
	uint32_t pinpos = 0x00, pos = 0x00, currentpin=0x00;
	for	(pinpos=0x00; pinpos < 0x10; pinpos++)
	{
		pos = ((uint32_t)0x01) << pinpos;
		currentpin = mask & pos;
		if (currentpin == pos)
		{
			GPIOE->MODER &= ~(GPIO_MODER_MODER0 << (pinpos*2));
			GPIOE->MODER |= (((uint32_t)0x01) << (pinpos*2));
			
			GPIOE->OSPEEDR &= ~(0x3 << (pinpos * 2));
			GPIOE->OSPEEDR |= ((uint32_t)0x02 << (pinpos * 2));
			
			GPIOE->OTYPER &= ~(0x1 << ((uint16_t)pinpos));
			GPIOE->OTYPER |= (uint16_t)(0x00 << ((uint16_t)pinpos));
		}
		GPIOE->PUPDR &= ~(0x3 << ((uint16_t)pinpos * 2));
		GPIOE->PUPDR |= ((uint32_t)(0x1) << ((uint16_t)pinpos * 2));
	}
}

void VGA::init(void)
{
	vga = this;
	
	//memset(ADDR_BUFF1, 0xFF, 320*200);
	memset(ADDR_BUFF2, 0xD3, 320*200);
	
	uint8_t *ptr = ADDR_BUFF2;
	while(ptr < ADDR_BUFF2+320*200)
	{
		*ptr = (ptr-ADDR_BUFF2) / 2;
		ptr++;
	}
	
	FrameBufferAddress = (uint32_t)ADDR_BUFF2;
	
	CurrentLineAddress = FrameBufferAddress;
	PixelsPerRow = 320;
	
	dacPort.setMode(dacPinMask, cHwPort::Out);
	dacPort.clr(dacPinMask);
	
	RCC->AHB1ENR |= (uint32_t)0x00000010 | RCC_AHB1ENR_DMA2EN;
	RCC->APB2ENR |= RCC_APB2ENR_TIM8EN | RCC_APB2ENR_TIM9EN | RCC_APB2ENR_SYSCFGEN;
	
	initPins(dacPinMask);
	initPins(1 << 6);
	initPins(1 << 7);
	
	RaiseHSyncLine();
	RaiseVSyncLine();
	
	TIM8->CR1=TIM_CR1_ARPE;
	TIM8->DIER=TIM_DIER_UDE;
	TIM8->PSC=0;
	TIM8->ARR=12;
	
	DMA2_Stream1->CR&=~DMA_SxCR_EN;
	enable_IRQ(DMA2_Stream1_IRQn, 0, 0);
	
	TIM9->CR1=TIM_CR1_ARPE;
	TIM9->DIER=TIM_DIER_UIE|TIM_DIER_CC1IE|TIM_DIER_CC2IE;
	TIM9->CCMR1=0;
	TIM9->CCER=0;
	TIM9->PSC=0;
	
	TIM9->ARR=5338;
	TIM9->CCR1=640;
	TIM9->CCR2=959;
	//TIM9->ARR=5338;
	//TIM9->CCR1=640;
	//TIM9->CCR2=959;
	
	enable_IRQ(TIM1_BRK_TIM9_IRQn, 0, 0);
	
	TIM9->CR1|=TIM_CR1_CEN;
}

extern "C" {		
	void DMA2_Stream1_IRQHandler(void)
	{
		vga->dacPort.clr(vga->dacPinMask);
		DMA2->LIFCR|=DMA_LIFCR_CTCIF1;
		
		TIM8->CR1&=~TIM_CR1_CEN;
		DMA2_Stream1->CR=0;
	}
}

extern "C" {	
	static inline void StartPixelDMA()
	{
		DMA2_Stream1->CR=(7*DMA_SxCR_CHSEL_0)|
		(3*DMA_SxCR_PL_0)|
		(0*DMA_SxCR_PSIZE_0)|
		(0*DMA_SxCR_MSIZE_0)|
		DMA_SxCR_MINC|
		(1*DMA_SxCR_DIR_0)|
		DMA_SxCR_TCIE;
		DMA2_Stream1->NDTR=PixelsPerRow;
		DMA2_Stream1->PAR=(((uint32_t)&GPIOE->ODR)+1);
		DMA2_Stream1->M0AR=CurrentLineAddress;
		DMA2_Stream1->CR|=DMA_SxCR_EN;
		
		TIM8->CR1|=TIM_CR1_CEN;
	}
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
					StartPixelDMA();
					if (Line&1) CurrentLineAddress += PixelsPerRow;
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
					Line = -1;
					CurrentLineAddress = FrameBufferAddress;
				}
				Line++;
				break;
		}
	}
}
