#include <stdio.h>

#include "LCD.h"

static Std_ReturnType LCD_4BITS_Send_Data   (const lcd_4bits_config_t *lcd , uint8 command);
static Std_ReturnType LCD_4BITS_Send_ENABLE (const lcd_4bits_config_t *lcd);
static Std_ReturnType LCD_4BITS_Set_CURSOR  (const lcd_4bits_config_t *lcd , uint8 row , uint8 column);
static Std_ReturnType LCD_8BITS_Send_ENABLE (const lcd_8bits_config_t *lcd);
static Std_ReturnType LCD_8BITS_Set_CURSOR  (const lcd_8bits_config_t *lcd , uint8 row , uint8 column);

Std_ReturnType LCD_4BITS_Init (const lcd_4bits_config_t *lcd){
    Std_ReturnType RET = E_OK ;
    uint8 counter=0;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = GPIO_PIN_Init (&(lcd->En));
        RET = GPIO_PIN_Init (&(lcd->RS));
        for (counter=0 ; counter < 4 ; counter++){
            RET = GPIO_PIN_Init(&(lcd->data_pins[counter]));
        }
        __delay_ms(20);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_8BITS_2LINE);
        __delay_ms(5);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_8BITS_2LINE);
        __delay_us(150);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_8BITS_2LINE);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_CLEAR);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_RETURN_HOME);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_Entry_Mode);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_CURSOR_OFF_DISPLY_ON);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_4BITS_2LINE);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_DDRAM_START);
    }
    return RET;
}

Std_ReturnType LCD_4BITS_Send_Command (const lcd_4bits_config_t *lcd , uint8 command){
    Std_ReturnType RET = E_OK ;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = GPIO_PIN_Write_Logic(&(lcd->RS) , LOW);
        RET = LCD_4BITS_Send_Data ((lcd) , command>>4);
        RET = LCD_4BITS_Send_ENABLE ((lcd));
        RET = LCD_4BITS_Send_Data ((lcd) , command);
        RET = LCD_4BITS_Send_ENABLE ((lcd));
    }
    return RET;
}

Std_ReturnType LCD_4BITS_Send_Char (const lcd_4bits_config_t *lcd , uint8 data){
    Std_ReturnType RET = E_OK ;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = GPIO_PIN_Write_Logic(&(lcd->RS) , HIGH);
        RET = LCD_4BITS_Send_Data (lcd , (data>>4));
        RET = LCD_4BITS_Send_ENABLE (lcd);
        RET = LCD_4BITS_Send_Data (lcd , data);
        RET = LCD_4BITS_Send_ENABLE (lcd);
    }
    return RET;

}

Std_ReturnType LCD_4BITS_Send_Char_Position (const lcd_4bits_config_t *lcd , uint8 data , uint8 row , uint8 column){
    Std_ReturnType RET = E_OK ;
    uint8 counter=0;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = LCD_4BITS_Set_CURSOR ( lcd , row , column );
        RET = LCD_4BITS_Send_Char( lcd , data );
    }    
    return RET;
}

Std_ReturnType LCD_4BITS_Send_String (const lcd_4bits_config_t *lcd , uint8 *string){
    Std_ReturnType RET = E_OK ;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        while ( *string ){
            RET = LCD_4BITS_Send_Char (lcd , *string);
            string++;
        }    
    }    
    return RET;
}

Std_ReturnType LCD_4BITS_Send_String_Position (const lcd_4bits_config_t *lcd , uint8 row , uint8 column , uint8 *string){
    Std_ReturnType RET = E_OK ;
    uint8 counter=0;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = LCD_4BITS_Set_CURSOR(lcd , row , column);
        while ( *string ){
            RET = LCD_4BITS_Send_Char (lcd , *string);
            string++;
        }    
    }    
    return RET;
}

Std_ReturnType LCD_4BITS_Send_Spcial_Char (const lcd_4bits_config_t *lcd , const uint8 my_char[] , uint8 pos , uint8 row , uint8 column){
    Std_ReturnType RET = E_OK ;
    uint8 counter=0;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = LCD_4BITS_Send_Command( lcd , (LCD_CGRAM_START + pos*8) );
        for (counter=0 ; counter<8 ; counter++){
            RET = LCD_4BITS_Send_Char(lcd , my_char[counter]);
        }
        RET = LCD_4BITS_Send_Char_Position(lcd , pos , row , column);
    }    
    return RET;   
}

Std_ReturnType LCD_4BITS_Send_Number (const lcd_4bits_config_t *lcd , uint32 number){
    Std_ReturnType RET = E_OK;
    if (NULL == lcd ){
        RET = E_NOT_OK;
    }
    else{
        uint8 str[10];
        uint8 i,rem,len=0;
        uint32 n= number;
        while(n != 0)
        {
        	len++;
        	n/= 10;
        }
        for (i=0; i<len ; i++)
        {
        	rem = number %10 ;
        	number = number/10;
        	str[len - (i+1)]= rem+ '0';
        }
        str[len]= '\0';
        LCD_8BITS_Send_String(lcd , str);
    }
    return RET;
}


Std_ReturnType LCD_8BITS_Init (const lcd_8bits_config_t *lcd){
    Std_ReturnType RET = E_OK ;
    uint8 counter=0;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = GPIO_PIN_Init (&(lcd->En));
        RET = GPIO_PIN_Init (&(lcd->RS));
        for (counter=0 ; counter < 8 ; counter++){
            RET = GPIO_PIN_Init (&(lcd->data_pins[counter]));
        }
        __delay_ms(20);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_8BITS_2LINE);
        __delay_ms(5);
        RET = LCD_4BITS_Send_Command((lcd) , LCD_8BITS_2LINE);
        __delay_us(150);
        RET = LCD_8BITS_Send_Command((lcd) , LCD_CLEAR);
        RET = LCD_8BITS_Send_Command((lcd) , LCD_RETURN_HOME);
        RET = LCD_8BITS_Send_Command((lcd) , LCD_Entry_Mode);
        RET = LCD_8BITS_Send_Command((lcd) , LCD_CURSOR_OFF_DISPLY_ON);
        RET = LCD_8BITS_Send_Command((lcd) , LCD_8BITS_2LINE);
        RET = LCD_8BITS_Send_Command((lcd) , LCD_DDRAM_START);
    }
    return RET;
}

Std_ReturnType LCD_8BITS_Send_Command (const lcd_8bits_config_t *lcd , uint8 command){
    Std_ReturnType RET = E_OK ;
    uint8 counter = 0 ;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = GPIO_PIN_Write_Logic(&(lcd->RS) , LOW);
        for (counter=0 ; counter<8 ; counter++){
            RET = GPIO_PIN_Write_Logic ( &(lcd->data_pins[counter]) , (command>>counter) & 0x01);
        }
        RET = LCD_8BITS_Send_ENABLE ((lcd));
    }
    return RET;
}

Std_ReturnType LCD_8BITS_Send_Char (const lcd_8bits_config_t *lcd , uint8 data){
    Std_ReturnType RET = E_OK ;
    uint8 counter = 0;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = GPIO_PIN_Write_Logic(&(lcd->RS) , HIGH);
        for (counter=0 ; counter<8 ; counter++){
            RET = GPIO_PIN_Write_Logic (&(lcd->data_pins[counter]) , (data>>counter) & 0x01);
        }
        RET = LCD_8BITS_Send_ENABLE ((lcd));
    }
    return RET;
}

Std_ReturnType LCD_8BITS_Send_Char_Position (const lcd_8bits_config_t *lcd , uint8 data , uint8 row , uint8 column){
    Std_ReturnType RET = E_OK ;
    uint8 counter=0;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = LCD_8BITS_Set_CURSOR ( lcd , row , column );
        RET = LCD_8BITS_Send_Char( lcd , data );
    }    
    return RET;    
}

Std_ReturnType LCD_8BITS_Send_String (const lcd_8bits_config_t *lcd , uint8 *string){
    Std_ReturnType RET = E_OK ;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        while ( *string != '\0' ){
            RET = LCD_8BITS_Send_Char (lcd , *string++);
        }    
    }    
    return RET; 
}

Std_ReturnType LCD_8BITS_Send_String_Position (const lcd_4bits_config_t *lcd , uint8 *string , uint8 row , uint8 column ){
    Std_ReturnType RET = E_OK ;
    uint8 counter=0;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = LCD_8BITS_Set_CURSOR(lcd , row , column);
        while ( *string ){
            RET = LCD_8BITS_Send_Char(lcd , *string);
            string++;
        }    
    }    
    return RET;
}

Std_ReturnType LCD_8BITS_Send_Spcial_Char (const lcd_8bits_config_t *lcd , const uint8 my_char[] , uint8 pos , uint8 row , uint8 column){
    Std_ReturnType RET = E_OK ;
    uint8 counter=0;
    if ( NULL == lcd ){
        RET = E_NOT_OK;
    }
    else {
        RET = LCD_8BITS_Send_Command( lcd , (LCD_CGRAM_START + pos*8) );
        for (counter=0 ; counter<8 ; counter++){
            RET = LCD_8BITS_Send_Char(lcd , my_char[counter]);
        }
        RET = LCD_8BITS_Send_Char_Position(lcd , pos , row , column);
    }    
    return RET;   
}
Std_ReturnType LCD_8BITS_Send_Number (const lcd_8bits_config_t *lcd , uint32 number){
    Std_ReturnType RET = E_OK;
    if (NULL == lcd ){
        RET = E_NOT_OK;
    }
    else{
        uint8 str[10];
        uint8 i,rem,len=0;
        uint32 n= number;
        while(n != 0)
        {
        	len++;
        	n/= 10;
        }
        for (i=0; i<len ; i++)
        {
        	rem = number %10 ;
        	number = number/10;
        	str[len - (i+1)]= rem+ '0';
        }
        str[len]= '\0';
        LCD_8BITS_Send_String(lcd , str);
    }
    return RET;
}

Std_ReturnType Convert_Byte_To_String (uint8 value , uint8 *Arr){
    Std_ReturnType RET = E_OK ;
    if ( NULL == Arr ){
        RET = E_NOT_OK;
    }
    else {
        memset((char *)Arr, '\0', 3);
        sprintf(Arr, "%i", value);
    }
    return RET;
}

Std_ReturnType Convert_Short_To_String (uint16 value , uint16 *Arr){
    Std_ReturnType RET = E_OK;
    uint8 Temp_String[6] = {0};
    uint8 DataCounter = 0;
    if(NULL == Arr){
        RET = E_NOT_OK;
    }
    else{    
        memset(Arr, ' ', 5);
        Arr[5] = '\0';
        sprintf((char *)Temp_String, "%i", value);
        while(Temp_String[DataCounter] != '\0'){
            Arr[DataCounter] = Temp_String[DataCounter]; 
            DataCounter++;
        }
    }  
    return RET;
}

Std_ReturnType Convert_Integar_To_String (uint32 value , uint32 *Arr){
    Std_ReturnType RET = E_OK ;
    if ( NULL == Arr ){
        RET = E_NOT_OK;
    }
    else {
        memset((char *)Arr, '\0', 11);
        sprintf(Arr, "%i", value);
    }    
}

static Std_ReturnType LCD_4BITS_Send_Data (const lcd_4bits_config_t *lcd , uint8 command){
    Std_ReturnType RET = E_OK;
    RET = GPIO_PIN_Write_Logic ( &(lcd->data_pins[0]) , (command >> 0) & (uint8)0x01);
    RET = GPIO_PIN_Write_Logic ( &(lcd->data_pins[1]) , (command >> 1) & (uint8)0x01);
    RET = GPIO_PIN_Write_Logic ( &(lcd->data_pins[2]) , (command >> 2) & (uint8)0x01);
    RET = GPIO_PIN_Write_Logic ( &(lcd->data_pins[3]) , (command >> 3) & (uint8)0x01);
    return RET;
}

static Std_ReturnType LCD_4BITS_Send_ENABLE (const lcd_4bits_config_t *lcd){
    Std_ReturnType RET = E_OK ;
    RET = GPIO_PIN_Write_Logic(&(lcd->En) , HIGH);
    __delay_us(5);
    RET = GPIO_PIN_Write_Logic(&(lcd->En) , LOW);
    __delay_us(5);
    return RET;
}

static Std_ReturnType LCD_8BITS_Send_ENABLE (const lcd_8bits_config_t *lcd){
    Std_ReturnType RET = E_OK ;
    RET = GPIO_PIN_Write_Logic(&(lcd->En) , HIGH);
    __delay_us(5);
    RET = GPIO_PIN_Write_Logic(&(lcd->En) , LOW);    
    return RET;
}

static Std_ReturnType LCD_4BITS_Set_CURSOR (const lcd_4bits_config_t *lcd , uint8 row , uint8 column){
    Std_ReturnType RET = E_OK ;
    switch ( row ){
        case ROW1 : RET = LCD_4BITS_Send_Command(lcd , (0x80 + column)); break;
        case ROW2 : RET = LCD_4BITS_Send_Command(lcd , (0xc0 + column)); break;
        case ROW3 : RET = LCD_4BITS_Send_Command(lcd , (0x94 + column)); break;
        case ROW4 : RET = LCD_4BITS_Send_Command(lcd , (0xd4 + column)); break;
        default : ;
    }    
    return RET;
}

static Std_ReturnType LCD_8BITS_Set_CURSOR  (const lcd_8bits_config_t *lcd , uint8 row , uint8 column){
    Std_ReturnType RET = E_OK ;
    switch ( row ){
        case ROW1 : RET = LCD_8BITS_Send_Command(lcd , (0x80 + column)); break;
        case ROW2 : RET = LCD_8BITS_Send_Command(lcd , (0xc0 + column)); break;
        case ROW3 : RET = LCD_8BITS_Send_Command(lcd , (0x94 + column)); break;
        case ROW4 : RET = LCD_8BITS_Send_Command(lcd , (0xd4 + column)); break;
        default : ;
    }    
    return RET;  
}