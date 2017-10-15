//*******************************************************************
#include "lib.h"
#include "Controller.h"

cHwPinConfig::MAP cHwPinConfig::table[] = 
{
  // Timer (PWM)
  TIM2_CH1_PA_0,
  TIM2_CH2_PA_1,
  TIM2_CH3_PA_2,
  TIM2_CH4_PA_3,
  TIM4_CH2_PD_13,
  TIM4_CH3_PD_14,
  TIM4_CH4_PD_15,
	
	END_OF_TABLE
};

cHwPort_N portD(cHwPort_N::PD);
cDevDigital led(portD, 15, cDevDigital::Out, 0);

Controller controller1(cHwPort_N::PD, 6, 7, 5);
Controller controller2(cHwPort_N::PD, 1, 3, 0);

//*******************************************************************
int main(void)
{
	while(1)
	{
		led.set(controller2.getState().buttons.A);
	}
}

//EOF
