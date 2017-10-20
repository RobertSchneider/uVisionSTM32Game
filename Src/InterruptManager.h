#ifndef _H_INTERRUPT_MANAGER_H
#define _H_INTERRUPT_MANAGER_H

#include "lib.h"

static void enable_IRQ(uint8_t irq, uint8_t preemptiveprio, int subprio)
{
	uint8_t tmpprio=0x00, tmppre=0x00,tmpsub=0x0F;
	tmpprio = (0x700 - ((SCB->AIRCR) & (uint32_t)0x700)) >> 0x08;
	tmppre = (0x4 - tmpprio);
	tmpsub = tmpsub >> tmpprio;
	tmpprio = preemptiveprio << tmppre;
	tmpprio |= (uint8_t)(subprio & tmpsub);
	tmpprio = tmpprio << 0x04;
	NVIC->IP[irq] = tmpprio;
	NVIC->ISER[irq >> 0x05] = (uint32_t)0x01 << (irq & (uint8_t)0x1F);
}

static void initPins(MTYPE mask)
{
	uint32_t pinpos = 0x00, pos = 0x00, currentpin=0x00;
	for	(pinpos=0x00; pinpos < 0x10; pinpos++)
	{
		pos = ((uint32_t)0x01) << pinpos;
		currentpin = mask & pos;
		if (currentpin == pos)
		{
			GPIOE->MODER &= ~(GPIO_MODER_MODER0 << (pinpos*2));
			GPIOE->MODER |= (((uint32_t)0x01) << (pinpos*2));
			
			GPIOE->OSPEEDR &= ~(0x3 << (pinpos * 2));
			GPIOE->OSPEEDR |= ((uint32_t)0x02 << (pinpos * 2));
			
			GPIOE->OTYPER &= ~(0x1 << ((uint16_t)pinpos));
			GPIOE->OTYPER |= (uint16_t)(0x00 << ((uint16_t)pinpos));
		}
		GPIOE->PUPDR &= ~(0x3 << ((uint16_t)pinpos * 2));
		GPIOE->PUPDR |= ((uint32_t)(0x1) << ((uint16_t)pinpos * 2));
	}
}

#endif
