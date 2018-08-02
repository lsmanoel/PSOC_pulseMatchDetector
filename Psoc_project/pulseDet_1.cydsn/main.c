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

volatile uint8_t samplerInput;

// -----------------------------------------------------------------------------
//matchCounterControl_Reg_1
#define OFF_COMMAND 0
#define ON_COMMAND 0b00000011  
#define RESET_COMMAND 0b00000100 

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

CY_ISR(matchPhotonInterrupt_1)
{	
    main_state =  SAMPLER_STATE;
    //isr_matchPhoton_1_ClearPending();
}

CY_ISR(RxInterrupt_1)
{	
    main_state = UART_1_GetChar();
}

int main(void)
{
    CyGlobalIntEnable; /* Enable global interrupts. */

    UART_1_Start();
    
    /* Place your initialization/startup code here (e.g. MyInst_Start()) */
    
    isr_Rx_1_StartEx(RxInterrupt_1);
    isr_matchPhoton_1_StartEx(matchPhotonInterrupt_1);
    isr_matchPhoton_1_Disable();
    samplerInput = 0;
    matchCounterControl_Reg_1_Write(0x00);
    
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

//        if(samplerInput)
//        {          
//            UART_1_PutChar((char)(samplerInput+48));
//            UART_1_PutChar('\n');
//            samplerInput = 0;
//        }
/* [] END OF FILE */

void exit_state_process()//0
{
    matchCounterControl_Reg_1_Write(0x00);
    isr_matchPhoton_1_Disable();
}

void start_state_process()//1
{
    
    main_state = STANDBY_STATE;
    count_th_Reg_1_Write(255);
    
    //Control_Reg_1_Write(255);
    matchCounterControl_Reg_1_Write(OFF_COMMAND);
}

void standby_state_process()//2
{
    
}

void scanOn_state_process()//4
{
    main_state = STANDBY_STATE;
    isr_matchPhoton_1_Enable();
    matchCounterControl_Reg_1_Write(RESET_COMMAND);
    matchCounterControl_Reg_1_Write(ON_COMMAND);
}

void scanOff_state_process()//5
{
    main_state = STANDBY_STATE;
    isr_matchPhoton_1_Disable();
    matchCounterControl_Reg_1_Write(OFF_COMMAND);
}

void sampler_state_process()//5
{
    main_state = STANDBY_STATE;
    samplerInput = NMatch_Reg_1_Read();
    UART_1_WriteTxData(samplerInput);
    //UART_1_PutChar((char)(samplerInput));
}

void setRegs_state_process()//6
{
    while(main_state==SETREGS_STATE){}
    count_th_Reg_1_Write(main_state);
    main_state = STANDBY_STATE;    
}