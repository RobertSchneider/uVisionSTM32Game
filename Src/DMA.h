#ifndef _DMA_H
#define _DMA_H

#include <cstdint>
#include "lib.h"

class DMA
{
public:
	uint32_t 			pixelsPerRow;

public:
	DMA(uint32_t pPerRow)
	{
		pixelsPerRow = pPerRow;
	}
	virtual inline void startDMA(uint32_t address) = 0;
};

#endif
