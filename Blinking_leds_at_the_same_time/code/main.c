/* Application : blinking three LEDs at the same time  */


/* FreeRtos  includes */
#include "FreeRTOS.h"
#include "task.h"


/* MCAL includes */
#include "DIO_interface.h"

/* Tasks prototypes */
void T_L1 (void * PV_Param);
void T_L2 (void * PV_Param);
void T_L3 (void * PV_Param);



void main (void )
{
	M_DIO_void_DIOInit();

	xTaskCreate(T_L1,NULL,100,NULL,1,NULL);
	xTaskCreate(T_L2,NULL,100,NULL,2,NULL);
	xTaskCreate(T_L3,NULL,100,NULL,3,NULL);

	/* start scheduler */
	vTaskStartScheduler();

}


void T_L1 (void * PV_Param)
{

	while (1)
	{

		M_DIO_u8_TogglePinValue(DIO_u8_PORTA,DIO_u8_PIN0);
		vTaskDelay(1000);

	}
}

void T_L2 (void * PV_Param)
{

	while (1)
	{

		M_DIO_u8_TogglePinValue(DIO_u8_PORTA,DIO_u8_PIN1);
		vTaskDelay(1000);

	}
}

void T_L3 (void * PV_Param)
{

	while (1)
	{

		M_DIO_u8_TogglePinValue(DIO_u8_PORTA,DIO_u8_PIN2);
		vTaskDelay(1000);

	}
}



