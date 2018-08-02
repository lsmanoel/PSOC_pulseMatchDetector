/*******************************************************************************
* File Name: Count_th_Reg_3_PM.c
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

#include "Count_th_Reg_3.h"

/* Check for removal by optimization */
#if !defined(Count_th_Reg_3_Sync_ctrl_reg__REMOVED)

static Count_th_Reg_3_BACKUP_STRUCT  Count_th_Reg_3_backup = {0u};

    
/*******************************************************************************
* Function Name: Count_th_Reg_3_SaveConfig
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
void Count_th_Reg_3_SaveConfig(void) 
{
    Count_th_Reg_3_backup.controlState = Count_th_Reg_3_Control;
}


/*******************************************************************************
* Function Name: Count_th_Reg_3_RestoreConfig
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
void Count_th_Reg_3_RestoreConfig(void) 
{
     Count_th_Reg_3_Control = Count_th_Reg_3_backup.controlState;
}


/*******************************************************************************
* Function Name: Count_th_Reg_3_Sleep
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
void Count_th_Reg_3_Sleep(void) 
{
    Count_th_Reg_3_SaveConfig();
}


/*******************************************************************************
* Function Name: Count_th_Reg_3_Wakeup
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
void Count_th_Reg_3_Wakeup(void)  
{
    Count_th_Reg_3_RestoreConfig();
}

#endif /* End check for removal by optimization */


/* [] END OF FILE */
