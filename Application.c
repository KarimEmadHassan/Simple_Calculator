/* 
 * File:   Application.c
 * Author: emad Ahmed
 *
 * Created on September 14, 2023, 11:16 AM
 */

#include <stdio.h>
#include <stdlib.h>
#include "Application.h"

/*Function the get the first number from the user*/
void Get_First_Number  (void) ;
/*Function the get the second number from the user*/
void Get_Second_Number (void) ;
/**
 * function to convert array elements to a number. EX: [1,2,3] --> 123
 * @param num1
 * @param num2
 * @param first_num
 * @param second_num
 */
void Convet_To_Number  ( uint8 *num1 , uint8 *num2 , uint8 first_num[] , uint8 second_num[]);


keypad_config_t keypad = { .row_pin[0].PORT = PORTC_INDEX , .row_pin[0].PIN_NUMBER = PIN0 ,
                           .row_pin[0].DIRECTION = OUTPUT , .row_pin[0].LOGIC = LOW , 
                           .row_pin[1].PORT = PORTC_INDEX , .row_pin[1].PIN_NUMBER = PIN1 ,
                           .row_pin[1].DIRECTION = OUTPUT , .row_pin[1].LOGIC = LOW , 
                           .row_pin[2].PORT = PORTC_INDEX , .row_pin[2].PIN_NUMBER = PIN2 ,
                           .row_pin[2].DIRECTION = OUTPUT , .row_pin[2].LOGIC = LOW , 
                           .row_pin[3].PORT = PORTC_INDEX , .row_pin[3].PIN_NUMBER = PIN3 ,
                           .row_pin[3].DIRECTION = OUTPUT , .row_pin[3].LOGIC = LOW , 
                           .column_pin[0].PORT = PORTC_INDEX , .column_pin[0].PIN_NUMBER = PIN4 ,
                           .column_pin[0].DIRECTION = INPUT  , .column_pin[0].LOGIC = LOW , 
                           .column_pin[1].PORT = PORTC_INDEX , .column_pin[1].PIN_NUMBER = PIN5 ,
                           .column_pin[1].DIRECTION = INPUT  , .column_pin[1].LOGIC = LOW , 
                           .column_pin[2].PORT = PORTC_INDEX , .column_pin[2].PIN_NUMBER = PIN6 ,
                           .column_pin[2].DIRECTION = INPUT  , .column_pin[2].LOGIC = LOW , 
                           .column_pin[3].PORT = PORTC_INDEX , .column_pin[3].PIN_NUMBER = PIN7 ,
                           .column_pin[3].DIRECTION = INPUT  , .column_pin[3].LOGIC = LOW };

lcd_8bits_config_t lcd = { .data_pins[0].PORT = PORTD_INDEX , .data_pins[0].PIN_NUMBER = PIN0 ,
                           .data_pins[0].DIRECTION = OUTPUT , .data_pins[0].LOGIC = LOW ,
                           .data_pins[1].PORT = PORTD_INDEX , .data_pins[1].PIN_NUMBER = PIN1 ,
                           .data_pins[1].DIRECTION = OUTPUT , .data_pins[1].LOGIC = LOW ,
                           .data_pins[2].PORT = PORTD_INDEX , .data_pins[2].PIN_NUMBER = PIN2 ,
                           .data_pins[2].DIRECTION = OUTPUT , .data_pins[2].LOGIC = LOW ,
                           .data_pins[3].PORT = PORTD_INDEX , .data_pins[3].PIN_NUMBER = PIN3 ,
                           .data_pins[3].DIRECTION = OUTPUT , .data_pins[3].LOGIC = LOW ,
                           .data_pins[4].PORT = PORTD_INDEX , .data_pins[4].PIN_NUMBER = PIN4 ,
                           .data_pins[4].DIRECTION = OUTPUT , .data_pins[4].LOGIC = LOW ,
                           .data_pins[5].PORT = PORTD_INDEX , .data_pins[5].PIN_NUMBER = PIN5 ,
                           .data_pins[5].DIRECTION = OUTPUT , .data_pins[5].LOGIC = LOW ,
                           .data_pins[6].PORT = PORTD_INDEX , .data_pins[6].PIN_NUMBER = PIN6 ,
                           .data_pins[6].DIRECTION = OUTPUT , .data_pins[6].LOGIC = LOW ,
                           .data_pins[7].PORT = PORTD_INDEX , .data_pins[7].PIN_NUMBER = PIN7 ,
                           .data_pins[7].DIRECTION = OUTPUT , .data_pins[7].LOGIC = LOW ,
                           .RS.PORT = PORTB_INDEX , .RS.PIN_NUMBER = PIN6 , .RS.DIRECTION = OUTPUT , .RS.LOGIC = LOW ,
                           .En.PORT = PORTB_INDEX , .En.PIN_NUMBER = PIN7 , .En.DIRECTION = OUTPUT , .En.LOGIC = LOW };

uint8 first_num[3] =  {0xff , 0xff , 0xff};
uint8 second_num[3] = {0xff , 0xff , 0xff};
uint8 count = 0 , operator , clr;
uint8 num1 , num2;
sint32 result = 0;

int main(){
    Std_ReturnType ret = E_OK;
    ret = LCD_8BITS_Init(&lcd);
    ret = KEYPAD_Init(&keypad);
    /************/
    Get_First_Number();
    Get_Second_Number();
    /*************/
    while (1){
        switch ( operator ){
            case '+' :
                Convet_To_Number ( &num1 , &num2 , first_num , second_num);
                result = num1 + num2;
                if ( result == 0 ){
                    ret = LCD_8BITS_Send_Char(&lcd , '0');
                }
                else {
                    ret = LCD_8BITS_Send_Number(&lcd , result);
                }    
                break;
            
            case '-' : 
                Convet_To_Number ( &num1 , &num2 , first_num , second_num);
                result = num1 - num2;
                if ( result == 0 ){
                    ret = LCD_8BITS_Send_Char(&lcd , '0');
                }
                else if ( result < 0){  
                    ret = LCD_8BITS_Send_Char(&lcd , '-');   // -
                    result *= -1;                           //2
                    ret = LCD_8BITS_Send_Number(&lcd , result);     //-2
                }
                else {
                    ret = LCD_8BITS_Send_Number(&lcd , result);
                }    
                break; 
            
            case '*' : 
                Convet_To_Number ( &num1 , &num2 , first_num , second_num);
                result = num1 * num2;
                if ( result == 0 ){
                    ret = LCD_8BITS_Send_Char(&lcd , '0');
                }
                else {
                    ret = LCD_8BITS_Send_Number(&lcd , result);
                }    
                break; 
            
            case '/' :
                Convet_To_Number ( &num1 , &num2 , first_num , second_num);
                result = num1 / num2;
                if ( result == 0 ){
                    ret = LCD_8BITS_Send_Char(&lcd , '0');
                }
                else {
                    ret = LCD_8BITS_Send_Number(&lcd , result); 
                }    
                break;  
            default: ;    
        }
        
        while ( clr != 'C'){
            ret = KEYPAD_Get_Number(&keypad , &clr);
        }
        break;
    }
    return (EXIT_SUCCESS);
}

void Get_First_Number (void){
    Std_ReturnType ret = E_OK;
    count = 0;
    while ( count<=2 ){
            ret = KEYPAD_Get_Number(&keypad , &first_num[count]);
            if ( first_num[count] != 0xff ){
                if ( count==0 && (first_num[0]== '=' || first_num[0]== '+' || first_num[0]== '-' || first_num[0]=='*' || first_num[0]== '/' )){
                    ret = LCD_8BITS_Send_String (&lcd , "Syntax Error!");
                    __delay_ms(2000);
                    ret = LCD_8BITS_Send_Command (&lcd , LCD_CLEAR);
                    first_num[0] = 0xff;
                    count = 0;
                }
                
                else if ( first_num[count] == 'C'){
                    ret = LCD_8BITS_Send_Command (&lcd , LCD_CLEAR);
                    for ( count=0 ;count<3 ;count++){
                        first_num[count] = 0xff;
                    }
                    count = 0;
                }
                
                else {
                    if ( first_num[count]== '=' ){
                        ret = LCD_8BITS_Send_Char(&lcd , first_num[count]);
                        count = 0 ;
                        while ( first_num[count] != '='){
                            if ( first_num[count]== '0'){
                                ret = LCD_8BITS_Send_Char(&lcd , first_num[count]);
                                count++;
                            }
                            else {
                                ret = LCD_8BITS_Send_Number(&lcd , (uint32)first_num[count]);
                                count++;
                            }
                        }
                        for ( count=0 ;count<3 ;count++){
                            first_num[count] = 0xff;
                        }
                        count = 0;
                        if( first_num[0] == 'C'){
                            ret = LCD_8BITS_Send_Command (&lcd , LCD_CLEAR);
                            count = 0 ;
                        }
                    }
                    
                    else {
                        if ( first_num[count]== '+' || first_num[count]== '-' || first_num[count]=='*' || first_num[count]== '/' ){
                            ret = LCD_8BITS_Send_Char(&lcd , first_num[count]);
                            operator = first_num[count];
                            first_num[count] = 0xff;
                            break;
                        }
                        else{
                            if ( count ==2 && (first_num[2] != '+' || first_num[2] != '-' || first_num[2] != '*' || first_num[2] != '/' || first_num[2] != '=')){
                                ret = LCD_8BITS_Send_Number(&lcd , (uint32)first_num[2]);
                                __delay_ms(50);
                                ret = LCD_8BITS_Send_Command (&lcd , LCD_CLEAR);
                                __delay_ms(100);
                                ret = LCD_8BITS_Send_String (&lcd , "Syntax Error!");
                                __delay_ms(2000);
                                ret = LCD_8BITS_Send_Command (&lcd , LCD_CLEAR);
                                for ( count=0 ;count<3 ;count++){
                                    first_num[count] = 0xff;
                                }
                                count = 0;
                            }
                            else if ( first_num[count]== '0'){
                                ret = LCD_8BITS_Send_Char(&lcd , first_num[count]);
                                first_num[count] = first_num[count] - '0';  // '0' - '0' = 0
                                count++;
                            }
                            else {
                                ret = LCD_8BITS_Send_Number(&lcd , (uint32)first_num[count]);
                                count++;
                            }
                        }
                    }
                }    
            }
            else {}
        }
}

void Get_Second_Number (void){
    Std_ReturnType ret = E_OK;
    count = 0;
    while ( count<=2 ){
            ret = KEYPAD_Get_Number(&keypad , &second_num[count]);
            if ( second_num[count] != 0xff ){
                if ( count==0 && (second_num[0]== '=' || second_num[0]== '+' || second_num[0]== '-' || second_num[0]=='*' || second_num[0]== '/' )){
                    ret = LCD_8BITS_Send_Command (&lcd , LCD_CLEAR);
                    __delay_ms(100);
                    ret = LCD_8BITS_Send_String (&lcd , "Syntax Error!");
                    __delay_ms(2000);
                    ret = LCD_8BITS_Send_Command (&lcd , LCD_CLEAR);
                    for ( count=0 ;count<3 ;count++){
                            second_num[count] = 0xff;
                            first_num[count] = 0xff;
                    }
                    Get_First_Number();
                    count=0;
                }
                
                else if ( count==2 && (second_num[2]!= '=' )){
                    ret = LCD_8BITS_Send_Number(&lcd , (uint32)second_num[2]);
                    __delay_ms(100);
                    ret = LCD_8BITS_Send_Command (&lcd , LCD_CLEAR);
                    __delay_ms(100);
                    ret = LCD_8BITS_Send_String (&lcd , "Syntax Error!");
                    __delay_ms(2000);
                    ret = LCD_8BITS_Send_Command (&lcd , LCD_CLEAR);
                    for ( count=0 ;count<3 ;count++){
                        second_num[count] = 0xff;
                        first_num[count] = 0xff;
                    }
                    Get_First_Number();
                    count = 0;
                }
                
                else if ( second_num[count] == 'C'){
                    ret = LCD_8BITS_Send_Command (&lcd , LCD_CLEAR);
                    for ( count=0 ;count<3 ;count++){
                            second_num[count] = 0xff;
                            first_num[count] = 0xff;
                    }
                    Get_First_Number();
                    count = 0;
                }
                                
                else {
                    if ( second_num[count]== '=' ){
                        ret = LCD_8BITS_Send_Char(&lcd , second_num[count]);
                        second_num[count] = 0xff;
                        break;
                    }
                    else{
                        if ( second_num[count]== '0'){
                            ret = LCD_8BITS_Send_Char(&lcd , second_num[count]);
                            second_num[count] = second_num[count] - '0';
                            count++;
                        }
                        else {
                            ret = LCD_8BITS_Send_Number(&lcd , (uint32)second_num[count]);
                            count++;
                        }
                    }
                }  
            }
            else {}
        }
}

void Convet_To_Number  ( uint8 *num1 , uint8 *num2 , uint8 first_num[] , uint8 second_num[]){
    *num1= first_num[0];
    //[1,2,3,0xff] -> 1*10 +  2 = 12 --> 12*10 + 3 = 123
    count = 1;
    while ( first_num[count] != 0xff){
        *num1 = (*num1*10) + first_num[count];
        count++;
    }
    *num2= second_num[0];
    count = 1;
    while ( second_num[count] != 0xff){
        *num2 = (*num2*10) + second_num[count];
        count++;
    }
}
