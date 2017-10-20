#ifndef _DMA_STM32F04_H
#define _DMA_STM32F04_H

#include <cstdint>
#include "lib.h"
#include "DMA.h"

class DMA_STM32F04 : public DMA
{
public:
	cHwPort_N			dmaPort;
	uint32_t 			dmaPinMask;

public:
	DMA_STM32F04(uint32_t pPerRow, cHwPort_N port, uint32_t mask);
	virtual inline void startDMA(uint32_t address);
};

#endif
