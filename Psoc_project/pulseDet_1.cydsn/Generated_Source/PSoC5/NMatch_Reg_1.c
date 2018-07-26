/*******************************************************************************
* File Name: NMatch_Reg_1.c  
* Version 1.90
*
* Description:
*  This file contains API to enable firmware to read the value of a Status 
*  Register.
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "NMatch_Reg_1.h"

#if !defined(NMatch_Reg_1_sts_sts_reg__REMOVED) /* Check for removal by optimization */


/*******************************************************************************
* Function Name: NMatch_Reg_1_Read
********************************************************************************
*
* Summary:
*  Reads the current value assigned to the Status Register.
*
* Parameters:
*  None.
*
* Return:
*  The current value in the Status Register.
*
*******************************************************************************/
uint8 NMatch_Reg_1_Read(void) 
{ 
    return NMatch_Reg_1_Status;
}


/*******************************************************************************
* Function Name: NMatch_Reg_1_InterruptEnable
********************************************************************************
*
* Summary:
*  Enables the Status Register interrupt.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void NMatch_Reg_1_InterruptEnable(void) 
{
    uint8 interruptState;
    interruptState = CyEnterCriticalSection();
    NMatch_Reg_1_Status_Aux_Ctrl |= NMatch_Reg_1_STATUS_INTR_ENBL;
    CyExitCriticalSection(interruptState);
}


/*******************************************************************************
* Function Name: NMatch_Reg_1_InterruptDisable
********************************************************************************
*
* Summary:
*  Disables the Status Register interrupt.
*
* Parameters:
*  None.
*
* Return:
*  None.
*
*******************************************************************************/
void NMatch_Reg_1_InterruptDisable(void) 
{
    uint8 interruptState;
    interruptState = CyEnterCriticalSection();
    NMatch_Reg_1_Status_Aux_Ctrl &= (uint8)(~NMatch_Reg_1_STATUS_INTR_ENBL);
    CyExitCriticalSection(interruptState);
}


/*******************************************************************************
* Function Name: NMatch_Reg_1_WriteMask
********************************************************************************
*
* Summary:
*  Writes the current mask value assigned to the Status Register.
*
* Parameters:
*  mask:  Value to write into the mask register.
*
* Return:
*  None.
*
*******************************************************************************/
void NMatch_Reg_1_WriteMask(uint8 mask) 
{
    #if(NMatch_Reg_1_INPUTS < 8u)
    	mask &= ((uint8)(1u << NMatch_Reg_1_INPUTS) - 1u);
	#endif /* End NMatch_Reg_1_INPUTS < 8u */
    NMatch_Reg_1_Status_Mask = mask;
}


/*******************************************************************************
* Function Name: NMatch_Reg_1_ReadMask
********************************************************************************
*
* Summary:
*  Reads the current interrupt mask assigned to the Status Register.
*
* Parameters:
*  None.
*
* Return:
*  The value of the interrupt mask of the Status Register.
*
*******************************************************************************/
uint8 NMatch_Reg_1_ReadMask(void) 
{
    return NMatch_Reg_1_Status_Mask;
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
