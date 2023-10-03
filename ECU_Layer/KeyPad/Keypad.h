/* 
 * File:   Keypad.h
 * Author: emad Ahmed
 *
 * Created on September 16, 2023, 9:23 AM
 */

#ifndef KEYPAD_H
#define	KEYPAD_H

/*Includes Section*/
#include "../../MCAL_Layer/GPIO/HAL_GPIO.h"

/*Macros Section*/
#define ROWS_MAX_SIZE      4
#define COLUMNS_MAX_SIZE   4

/*Function Like Macro Section*/

/*Data Type Declaration Section*/
typedef struct {
    pin_config_t row_pin [ROWS_MAX_SIZE];
    pin_config_t column_pin [COLUMNS_MAX_SIZE];
}keypad_config_t;

/*Function Declaration Section*/
Std_ReturnType KEYPAD_Init       (const keypad_config_t *keypad);
Std_ReturnType KEYPAD_Get_Number (const keypad_config_t *keypad  , uint8 *number);

#endif	/* KEYPAD_H */

