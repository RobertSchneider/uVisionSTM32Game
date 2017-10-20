#ifndef VGA_H
#define VGA_H

#include <cstdint>
#include "lib.h"
#include "hardware/Common/Font/Font_8x12.h"

#include "DMA.h"

class VGA
{
	public:
		cDevDigital 		pinHSync;
		cDevDigital 		pinVSync;
	
		cHwDisp_Framebuffer disp;
	
		DMA *vgaDMA;
	
		VGA(cHwPort_N *port, DMA *dma)
			: pinHSync(*port, 6, cDevDigital::Out, 0)
			, pinVSync(*port, 7, cDevDigital::Out, 0)
			, disp((uint8_t*)0x20010000,  fontFont_8x12)
		{
			vgaDMA = dma;
		}	
		
		void init(void);
		
		void puts(char *s, int len);
};

#endif
