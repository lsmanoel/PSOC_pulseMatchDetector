/*******************************************************************************
* File Name: preCount_th_reg_4_PM.c
* Version 1.80
*
* Description:
*  This file contains the setup, control, and status commands to support 
*  the component operation in the low power mode. 
*
* Note:
*
********************************************************************************
* Copyright 2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#include "preCount_th_reg_4.h"

/* Check for removal by optimization */
#if !defined(preCount_th_reg_4_Sync_ctrl_reg__REMOVED)

static preCount_th_reg_4_BACKUP_STRUCT  preCount_th_reg_4_backup = {0u};

    
/*******************************************************************************
* Function Name: preCount_th_reg_4_SaveConfig
********************************************************************************
*
* Summary:
*  Saves the control register value.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void preCount_th_reg_4_SaveConfig(void) 
{
    preCount_th_reg_4_backup.controlState = preCount_th_reg_4_Control;
}


/*******************************************************************************
* Function Name: preCount_th_reg_4_RestoreConfig
********************************************************************************
*
* Summary:
*  Restores the control register value.
*
* Parameters:
*  None
*
* Return:
*  None
*
*
*******************************************************************************/
void preCount_th_reg_4_RestoreConfig(void) 
{
     preCount_th_reg_4_Control = preCount_th_reg_4_backup.controlState;
}


/*******************************************************************************
* Function Name: preCount_th_reg_4_Sleep
********************************************************************************
*
* Summary:
*  Prepares the component for entering the low power mode.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void preCount_th_reg_4_Sleep(void) 
{
    preCount_th_reg_4_SaveConfig();
}


/*******************************************************************************
* Function Name: preCount_th_reg_4_Wakeup
********************************************************************************
*
* Summary:
*  Restores the component after waking up from the low power mode.
*
* Parameters:
*  None
*
* Return:
*  None
*
*******************************************************************************/
void preCount_th_reg_4_Wakeup(void)  
{
    preCount_th_reg_4_RestoreConfig();
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
