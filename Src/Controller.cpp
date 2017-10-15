#include "Controller.h"

void Controller::update(void)
{
	switch(currentCtrl)
	{
		case START_LATCH:
			pinLatch.set(1);
			break;
		case END_LATCH:
			pinLatch.set(0);
			break;
		case START_SHIFT1:
		case START_SHIFT2:
		case START_SHIFT3:
		case START_SHIFT4:
		case START_SHIFT5:
		case START_SHIFT6:
		case START_SHIFT7:
		case START_SHIFT8:
		case START_SHIFT9:
		case START_SHIFT10:
		case START_SHIFT11:
		case START_SHIFT12:
		case START_SHIFT13:
		case START_SHIFT14:
		case START_SHIFT15:
		case START_SHIFT16:
			pinClk.set(0);
			break;
		case END_SHIFT1:
		case END_SHIFT2:
		case END_SHIFT3:
		case END_SHIFT4:
		case END_SHIFT5:
		case END_SHIFT6:
		case END_SHIFT7:
		case END_SHIFT8:
		case END_SHIFT9:
		case END_SHIFT10:
		case END_SHIFT11:
		case END_SHIFT12:
		case END_SHIFT13:
		case END_SHIFT14:
		case END_SHIFT15:
		case END_SHIFT16:
			rawCtrl = (rawCtrl << 1) | pinData.get();
			pinClk.set(1);
			break;
	}
	
	if (currentCtrl == END_SHIFT16)
	{
		currentCtrl = START_LATCH;
		state.data = ~rawCtrl;
	}
	else
	{
		currentCtrl = (Controller_Control)((int)currentCtrl + 1);
	}
}
