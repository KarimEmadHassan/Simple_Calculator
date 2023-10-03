#include "Keypad.h"

const static uint8 Keypad_Elements [ROWS_MAX_SIZE] [COLUMNS_MAX_SIZE] = {7 , 8 , 9  , '/' ,
                                                                         4 , 5 , 6  , '*' ,
                                                                         1 , 2 , 3  , '-' ,
                                                                         'C' , '0' , '='  , '+'   };

/**
 * 
 * @param keypad
 * @return 
 */
Std_ReturnType KEYPAD_Init (const keypad_config_t *keypad){
    Std_ReturnType RET = E_OK ;
    uint8 row_counter=0 , column_counter=0;
    if ( NULL == keypad ){
        RET = E_NOT_OK;
    }
    else {
        for (row_counter=0 ; row_counter<ROWS_MAX_SIZE ; row_counter++){
            RET = GPIO_PIN_Init(&(keypad->row_pin[row_counter]));
        }
        for (column_counter=0 ; column_counter<COLUMNS_MAX_SIZE ; column_counter++){
            RET = GPIO_PIN_Direction_Init(&(keypad->column_pin[column_counter]));
        }
    }    
    return RET;
}

/**
 * 
 * @param keypad
 * @param number
 * @return 
 */
Std_ReturnType KEYPAD_Get_Number (const keypad_config_t *keypad  , uint8 *number){
    Std_ReturnType RET = E_OK ;
    uint8 row_counter=0 , column_counter=0 , counter=0 ;
    if ( NULL == keypad || NULL == number){
        RET = E_NOT_OK;
    }
    else {
        for ( row_counter=0 ; row_counter<ROWS_MAX_SIZE ; row_counter++){
            uint8 logic=0;
            for (counter=0 ; counter<ROWS_MAX_SIZE ; counter++){
                RET = GPIO_PIN_Write_Logic (&(keypad->row_pin[counter]) , LOW);
            }
            RET = GPIO_PIN_Write_Logic (&(keypad->row_pin[row_counter]) , HIGH);
            __delay_ms(80);
            for (column_counter=0 ; column_counter<COLUMNS_MAX_SIZE ; column_counter++){
                RET = GPIO_PIN_Read_Logic (&(keypad->column_pin[column_counter]) , &logic);
                if ( logic == 1 ){
                    *number = Keypad_Elements[row_counter][column_counter] ;
                }
            }
        }
    }    
    return RET;
}
