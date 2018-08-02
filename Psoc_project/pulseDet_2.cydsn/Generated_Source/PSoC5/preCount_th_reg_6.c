/*******************************************************************************
* File Name: preCount_th_reg_6.c  
* Version 1.80
*
* Description:
*  This file contains API to enable firmware control of a Control Register.
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "preCount_th_reg_6.h"

/* Check for removal by optimization */
#if !defined(preCount_th_reg_6_Sync_ctrl_reg__REMOVED)

    
/*******************************************************************************
* Function Name: preCount_th_reg_6_Write
********************************************************************************
*
* Summary:
*  Write a byte to the Control Register.
*
* Parameters:
*  control:  The value to be assigned to the Control Register.
*
* Return:
*  None.
*
*******************************************************************************/
void preCount_th_reg_6_Write(uint8 control) 
{
    preCount_th_reg_6_Control = control;
}


/*******************************************************************************
* Function Name: preCount_th_reg_6_Read
********************************************************************************
*
* Summary:
*  Reads the current value assigned to the Control Register.
*
* Parameters:
*  None.
*
* Return:
*  Returns the current value in the Control Register.
*
*******************************************************************************/
uint8 preCount_th_reg_6_Read(void) 
{
    return preCount_th_reg_6_Control;
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
