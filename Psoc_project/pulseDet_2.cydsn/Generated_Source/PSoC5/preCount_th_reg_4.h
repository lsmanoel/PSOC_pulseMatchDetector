/*******************************************************************************
* File Name: preCount_th_reg_4.h  
* Version 1.80
*
* Description:
*  This file containts Control Register function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_CONTROL_REG_preCount_th_reg_4_H) /* CY_CONTROL_REG_preCount_th_reg_4_H */
#define CY_CONTROL_REG_preCount_th_reg_4_H

#include "cyfitter.h"

#if ((CYDEV_CHIP_FAMILY_USED == CYDEV_CHIP_FAMILY_PSOC3) || \
     (CYDEV_CHIP_FAMILY_USED == CYDEV_CHIP_FAMILY_PSOC4) || \
     (CYDEV_CHIP_FAMILY_USED == CYDEV_CHIP_FAMILY_PSOC5))
    #include "cytypes.h"
#else
    #include "syslib/cy_syslib.h"
#endif

    
/***************************************
*     Data Struct Definitions
***************************************/

/* Sleep Mode API Support */
typedef struct
{
    uint8 controlState;

} preCount_th_reg_4_BACKUP_STRUCT;


/***************************************
*         Function Prototypes 
***************************************/

void    preCount_th_reg_4_Write(uint8 control) ;
uint8   preCount_th_reg_4_Read(void) ;

void preCount_th_reg_4_SaveConfig(void) ;
void preCount_th_reg_4_RestoreConfig(void) ;
void preCount_th_reg_4_Sleep(void) ; 
void preCount_th_reg_4_Wakeup(void) ;


/***************************************
*            Registers        
***************************************/

/* Control Register */
#define preCount_th_reg_4_Control        (* (reg8 *) preCount_th_reg_4_Sync_ctrl_reg__CONTROL_REG )
#define preCount_th_reg_4_Control_PTR    (  (reg8 *) preCount_th_reg_4_Sync_ctrl_reg__CONTROL_REG )

#endif /* End CY_CONTROL_REG_preCount_th_reg_4_H */


/* [] END OF FILE */
