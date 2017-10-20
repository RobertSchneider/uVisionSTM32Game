#include "DMA_STM32F04.h"
#include "InterruptManager.h"

DMA_STM32F04 *__dma;

DMA_STM32F04::DMA_STM32F04(uint32_t pPerRow, cHwPort_N port, uint32_t mask)
	: DMA(pPerRow)
	, dmaPort(port)
	, dmaPinMask(mask)
{
	dmaPort.setMode(dmaPinMask, cHwPort::Out);
	dmaPort.clr(dmaPinMask);
	
	initPins(dmaPinMask);
	
	RCC->AHB1ENR |= (uint32_t)0x00000010 | RCC_AHB1ENR_DMA2EN;
	RCC->APB2ENR |= RCC_APB2ENR_TIM8EN | RCC_APB2ENR_SYSCFGEN;
	
	TIM8->CR1=TIM_CR1_ARPE;
	TIM8->DIER=TIM_DIER_UDE;
	TIM8->PSC=0;
	TIM8->ARR=12;
	
	DMA2_Stream1->CR&=~DMA_SxCR_EN;
	enable_IRQ(DMA2_Stream1_IRQn, 0, 0);
	
	__dma = this;
}

extern "C" {		
	void DMA2_Stream1_IRQHandler(void)
	{
		__dma->dmaPort.clr(__dma->dmaPinMask);
		DMA2->LIFCR|=DMA_LIFCR_CTCIF1;
		
		TIM8->CR1&=~TIM_CR1_CEN;
		DMA2_Stream1->CR=0;
	}
}

inline void DMA_STM32F04::startDMA(uint32_t address)
{
	DMA2_Stream1->CR=(7*DMA_SxCR_CHSEL_0)|
		(3*DMA_SxCR_PL_0)|
		(0*DMA_SxCR_PSIZE_0)|
		(0*DMA_SxCR_MSIZE_0)|
		DMA_SxCR_MINC|
		(1*DMA_SxCR_DIR_0)|
		DMA_SxCR_TCIE;
		DMA2_Stream1->NDTR=pixelsPerRow;
		DMA2_Stream1->PAR=(((uint32_t)&GPIOE->ODR)+1);
		DMA2_Stream1->M0AR=address;
		DMA2_Stream1->CR|=DMA_SxCR_EN;
		
		TIM8->CR1|=TIM_CR1_CEN;
}
