#ifndef VGA_H
#define VGA_H

#include <cstdint>
#include "lib.h"

class VGA : public cList::Item
{

	public:
		cHwPort_N				dacPort;
		uint32_t 					dacPinMask;

		cDevDigital 		pinHSync;
		cDevDigital 		pinVSync;
	
		VGA(cHwPort_N::PortId portID)
			: dacPort(portID)
			, dacPinMask(((1<<8) | (1<<9) | (1<<10) | (1<<11) | (1<<12) | (1<<13) | (1<<14) | (1<<15) ))
			, pinHSync(dacPort, 6, cDevDigital::Out, 0)
			, pinVSync(dacPort, 7, cDevDigital::Out, 0)
		{
			//RCC->APB2ENR |= 0x004000;
			//RCC->APB1ENR |= 0x400000;
		}	
		
		void init(void);
	
		virtual void update(void);
};

#endif
