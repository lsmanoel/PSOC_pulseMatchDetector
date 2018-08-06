/* ========================================
 *
 * Copyright YOUR COMPANY, THE YEAR
 * All Rights Reserved
 * UNPUBLISHED, LICENSED SOFTWARE.
 *
 * CONFIDENTIAL AND PROPRIETARY INFORMATION
 * WHICH IS THE PROPERTY OF your company.
 *
 * ========================================
*/
#include "project.h"

volatile uint8 preCounter_samplerArray[3];
volatile uint8 Counter_samplerArray[3];

// -----------------------------------------------------------------------------
//matchCounterControl_Reg_1
#define OFF_COMMAND 0x00
#define ENABLE_COMMAND 0b00000110  
#define RESET_COMMAND  0b00000001
#define FULL_COMMAND  0xff
// -----------------------------------------------------------------------------
// State Machine ---------------------------------------------------------------
void exit_state_process();//0
void start_state_process();//1
void standby_state_process();//2
void scanOn_state_process();//3
void scanOff_state_process();//4
void sampler_state_process();//5
void setRegs_state_process();//6

//Estado comum a todas as máquinas de estado:
#define EXIT_STATE 0
#define START_STATE 1
#define STANDBY_STATE 2
#define SCANON_STATE 3
#define SCANOFF_STATE 4
#define SAMPLER_STATE 5
#define SETREGS_STATE 6

void (*main_state_table[])()=
{
    exit_state_process,//0
    start_state_process,//1
    standby_state_process,//2
    scanOn_state_process,//3
    scanOff_state_process,//4
    sampler_state_process,//5
    setRegs_state_process//6
};

volatile int main_state;

CY_ISR(matchInterrupt_handler)
{	
    //Control_Reg_1_Write(RESET_COMMAND);
    main_state =  SAMPLER_STATE;
    //isr_match_ClearPending();
}

CY_ISR(RxInterrupt_1)
{	
    main_state = UART_1_GetChar();
}

int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

    UART_1_Start();
    isr_Rx_1_StartEx(RxInterrupt_1);
    
    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    
    isr_match_StartEx(matchInterrupt_handler);
    isr_match_Disable();
    
    Control_Reg_1_Write(OFF_COMMAND);
    
    PWM_1_Start();
    
    while(1)
    {
        main_state = START_STATE;
        while(main_state)
        {       
            main_state_table[main_state]();
        }
    }
}

void exit_state_process()//0
{
    isr_match_Disable();
    
    Control_Reg_1_Write(OFF_COMMAND);
    Control_Reg_1_Write(RESET_COMMAND|ENABLE_COMMAND);
    Control_Reg_1_Write(OFF_COMMAND);
}

void start_state_process()//1
{
    main_state = STANDBY_STATE;
    
    preCount_th_Reg_1_Write(255);
    preCount_th_Reg_2_Write(255);
    preCount_th_Reg_3_Write(255);
 
    Count_th_Reg_1_Write(255);
    Count_th_Reg_2_Write(255);
    Count_th_Reg_3_Write(255);
    
    Control_Reg_1_Write(OFF_COMMAND);
    //Control_Reg_1_Write(RESET_COMMAND);
    //Control_Reg_1_Write(0b00000100);
}

void standby_state_process()//2
{
    
}

void scanOn_state_process()//4
{
    main_state = STANDBY_STATE;
    isr_match_Enable();
    Control_Reg_1_Write(RESET_COMMAND|ENABLE_COMMAND);
    Control_Reg_1_Write(ENABLE_COMMAND);
}

void scanOff_state_process()//5
{
    isr_match_Disable();
    main_state = STANDBY_STATE;
    Control_Reg_1_Write(OFF_COMMAND);   
}

void sampler_state_process()//5
{
    main_state = STANDBY_STATE;
    
    //UART_1_WriteTxData(10);
//    Control_Reg_1_Write(RESET_COMMAND|ENABLE_COMMAND);
//    Control_Reg_1_Write(ENABLE_COMMAND);
    
    preCounter_samplerArray[0]=preCounter_Reg_1_Read();
    preCounter_samplerArray[1]=preCounter_Reg_2_Read();
    preCounter_samplerArray[2]=preCounter_Reg_3_Read();
    
    Counter_samplerArray[0]=Counter_Reg_1_Read();
    Counter_samplerArray[1]=Counter_Reg_2_Read();
    Counter_samplerArray[2]=Counter_Reg_3_Read();
    
    UART_1_PutArray(preCounter_samplerArray, 3);
    UART_1_PutArray(Counter_samplerArray, 3);
}

void setRegs_state_process()//6
{
    while(main_state==SETREGS_STATE){}
    preCount_th_Reg_1_Write(main_state);
    main_state = SETREGS_STATE;

    while(main_state==SETREGS_STATE){}
    preCount_th_Reg_2_Write(main_state);
    main_state = SETREGS_STATE;
    
    while(main_state==SETREGS_STATE){}
    preCount_th_Reg_3_Write(main_state);
    main_state = SETREGS_STATE;
  
    while(main_state==SETREGS_STATE){}
    Count_th_Reg_1_Write(main_state);
    main_state = SETREGS_STATE;

    while(main_state==SETREGS_STATE){}
    Count_th_Reg_2_Write(main_state);
    main_state = SETREGS_STATE;
    
    while(main_state==SETREGS_STATE){}
    Count_th_Reg_3_Write(main_state);
    main_state = SETREGS_STATE;
    
    main_state = STANDBY_STATE; 
}
