#ifndef CONTROLLER_H
#define CONTROLLER_H

#include <cstdint>
#include "lib.h"

typedef union {
	struct {
		uint16_t Reserved : 4;
		uint16_t R 				: 1;
		uint16_t L 				: 1;
		uint16_t X 				: 1;
		uint16_t A 				: 1;
		uint16_t Right 		: 1;
		uint16_t Left 		: 1;
		uint16_t Down 		: 1;
		uint16_t Up 			: 1;
		uint16_t Start 		: 1;
		uint16_t Select 	: 1;
		uint16_t Y 				: 1;
		uint16_t B 				: 1;
	} buttons;
	uint16_t data;
} ControllerState;

enum Controller_Control
{
	START_LATCH = 0, END_LATCH,
	START_SHIFT1, END_SHIFT1,
	START_SHIFT2, END_SHIFT2,
	START_SHIFT3, END_SHIFT3,
	START_SHIFT4, END_SHIFT4,
	START_SHIFT5, END_SHIFT5,
	START_SHIFT6, END_SHIFT6,
	START_SHIFT7, END_SHIFT7,
	START_SHIFT8, END_SHIFT8,
	START_SHIFT9, END_SHIFT9,
	START_SHIFT10, END_SHIFT10,
	START_SHIFT11, END_SHIFT11,
	START_SHIFT12, END_SHIFT12,
	START_SHIFT13, END_SHIFT13,
	START_SHIFT14, END_SHIFT14,
	START_SHIFT15, END_SHIFT15,
	START_SHIFT16, END_SHIFT16
};

class Controller : public cList::Item
{
	ControllerState state;
	cHwPort_N				port;
	cDevDigital 		pinLatch;
	cDevDigital 		pinClk;
	cDevDigital 		pinData;
	
	cHwTimer_N 			timer;
	
	public:
		
		volatile uint16_t rawCtrl;
		volatile enum Controller_Control currentCtrl;
	
		Controller(cHwPort_N::PortId pID, BYTE pLatch, BYTE pClk, BYTE pData) 
			: port(pID)
			, pinLatch(port, pLatch, cDevDigital::Out, 0)
			, pinClk(port, pClk, cDevDigital::Out, 0)
			, pinData(port, pData, cDevDigital::In, 0)
			, timer ( cHwTimer_N::TIM_2,   10L/*us*/ )
			, rawCtrl(0)
	{
		state.data = 0;
		
		timer.add(this);
	}
	
	virtual void update(void);
	
	ControllerState getState(void)
	{
		return state;
	}
};

#endif
