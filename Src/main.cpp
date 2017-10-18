//*******************************************************************
#define PLL_M 8

#include "lib.h"
#include "Controller.h"
#include "VGA.h"

cHwPinConfig::MAP cHwPinConfig::table[] = 
{
	
	END_OF_TABLE
};

cHwPort_N portD(cHwPort_N::PD);
cDevDigital led(portD, 15, cDevDigital::Out, 0);

Controller controller1(cHwPort_N::PD, 6, 7, 5);
Controller controller2(cHwPort_N::PD, 1, 3, 0);

VGA vga2(cHwPort_N::PE);

extern "C" {
	
	void TIM2_IRQHandler(void)
	{
		TIM2->CR1&=~TIM_CR1_CEN;
		
		//controller1.update();
		//controller2.update();
	}
}

//*******************************************************************
int main(void)
{
	
	vga2.init();
	
	
	/*RCC->APB1ENR |= RCC_APB1ENR_TIM2EN;
	TIM2->ARR  = 500-1;
	TIM2->CR1  = TIM_CR1_CEN;  // counter enable
  TIM2->DIER = TIM_DIER_UIE; // update interrupt enable
  //TIM2->EGR  = TIM_EGR_UG;   // re-initialize timer
  TIM2->PSC  = 84-1;*/
	
	while(1)
	{
		controller1.update();
		controller2.update();
		led.set(controller2.getState().buttons.A);
	}
}

//EOF
