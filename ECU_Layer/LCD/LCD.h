/* 
 * File:   LCD.h
 * Author: emad Ahmed
 *
 * Created on September 18, 2023, 11:58 AM
 */

#ifndef LCD_H
#define	LCD_H

/*Includes Section*/
#include "../../MCAL_Layer/GPIO/HAL_GPIO.h"
#include <stdio.h>

/*Macros Section*/
#define LCD_CLEAR                  0x01
#define LCD_RETURN_HOME            0x02
#define LCD_Entry_Mode             0x06
#define LCD_CURSOR_OFF_DISPLY_ON   0x0C
#define LCD_CURSOR_OFF_DISPLY_OFF  0x08
#define LCD_CURSOR_ON_BLINK_ON     0x0F
#define LCD_CURSOR_ON_BLINK_OFF    0x0E
#define LCD_DISPLY_SHIFT_LEFT      0x18
#define LCD_DISPLY_SHIFT_RIGHT     0x1C
#define LCD_8BITS_2LINE            0x38
#define LCD_4BITS_2LINE            0x28
#define LCD_CGRAM_START            0x40
#define LCD_DDRAM_START            0x80
#define ROW1                       1
#define ROW2                       2
#define ROW3                       3
#define ROW4                       4

#define _XTAL_FREQ  8000000UL

/*Function Like Macro Section*/

/*Data Type Declaration Section*/
typedef struct{
    pin_config_t RS;
    pin_config_t En;
    pin_config_t data_pins[4];
}lcd_4bits_config_t;

typedef struct{
    pin_config_t RS;
    pin_config_t En;
    pin_config_t data_pins[8];
}lcd_8bits_config_t;

/*Function Declaration Section*/
Std_ReturnType LCD_4BITS_Init                 (const lcd_4bits_config_t *lcd);
Std_ReturnType LCD_4BITS_Send_Command         (const lcd_4bits_config_t *lcd , uint8 command);
Std_ReturnType LCD_4BITS_Send_Char            (const lcd_4bits_config_t *lcd , uint8 data);
Std_ReturnType LCD_4BITS_Send_Char_Position   (const lcd_4bits_config_t *lcd , uint8 data , uint8 row , uint8 column);
Std_ReturnType LCD_4BITS_Send_String          (const lcd_4bits_config_t *lcd , uint8 *string);
Std_ReturnType LCD_4BITS_Send_String_Position (const lcd_4bits_config_t *lcd , uint8 row , uint8 column , uint8 *string);
Std_ReturnType LCD_4BITS_Send_Spcial_Char     (const lcd_4bits_config_t *lcd , const uint8 my_char[] , uint8 pos , uint8 row , uint8 column);
Std_ReturnType LCD_4BITS_Send_Number          (const lcd_4bits_config_t *lcd , uint32 number);

Std_ReturnType LCD_8BITS_Init                 (const lcd_8bits_config_t *lcd);
Std_ReturnType LCD_8BITS_Send_Command         (const lcd_8bits_config_t *lcd , uint8 command);
Std_ReturnType LCD_8BITS_Send_Char            (const lcd_8bits_config_t *lcd , uint8 data);
Std_ReturnType LCD_8BITS_Send_Char_Position   (const lcd_8bits_config_t *lcd , uint8 data , uint8 row , uint8 column);
Std_ReturnType LCD_8BITS_Send_String          (const lcd_8bits_config_t *lcd , uint8 *string);
Std_ReturnType LCD_8BITS_Send_String_Position (const lcd_4bits_config_t *lcd , uint8 *string , uint8 row , uint8 column );
Std_ReturnType LCD_8BITS_Send_Spcial_Char     (const lcd_8bits_config_t *lcd , const uint8 my_char[] , uint8 pos , uint8 row , uint8 column);
Std_ReturnType LCD_8BITS_Send_Number          (const lcd_8bits_config_t *lcd , uint32 number);

Std_ReturnType Convert_Byte_To_String    (uint8 value , uint8 *Arr);
Std_ReturnType Convert_Short_To_String   (uint16 value , uint16 *Arr);
Std_ReturnType Convert_Integar_To_String (uint32 value , uint32 *Arr);

#endif	/* LCD_H */

