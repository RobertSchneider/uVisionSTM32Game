//*******************************************************************
#define PLL_M 8

#include "lib.h"
#include "Controller.h"
#include "VGA.h"
#include "DMA_STM32F04.h"

cHwPinConfig::MAP cHwPinConfig::table[] = 
{
	
	END_OF_TABLE
};

cHwPort_N portD(cHwPort_N::PD);
cDevDigital led(portD, 15, cDevDigital::Out, 0);

Controller controller1(cHwPort_N::PD, 6, 7, 5);
Controller controller2(cHwPort_N::PD, 1, 3, 0);

const uint32_t _dmaPinMask = (1<<8)|(1<<9)|(1<<10)|(1<<11)|(1<<12)|(1<<13)|(1<<14)|(1<<15);
DMA_STM32F04 dma(320, cHwPort_N::PE, _dmaPinMask);
VGA vga2(&dma.dmaPort, &dma);

void color_test(void)
{
	volatile int cnter = 0;
	uint8_t color = 0xFF;
	int incl = 0;
	
	while(1)
	{
		color = 0x00;
		while(incl++ < 100)
		{
			vga2.disp.setPaintColor(color);
			vga2.disp.putRectangle(incl, incl, 320-incl*2, 200-incl*2);
			color+=3;
		}
	}
}

//*******************************************************************
int main(void)
{
	vga2.init();
	
	vga2.disp.resetArea();
	
	//color_test();
	
	while(1)
	{
		//controller1.update();
		//controller2.update();
		//led.set(controller2.getState().buttons.A);
	}
}

//EOF
