/*******************************************************************************
* File Name: PinLed.h  
* Version 2.20
*
* Description:
*  This file contains Pin function prototypes and register defines
*
* Note:
*
********************************************************************************
* Copyright 2008-2015, Cypress Semiconductor Corporation.  All rights reserved.
* You may use this file only in accordance with the license, terms, conditions, 
* disclaimers, and limitations in the end user license agreement accompanying 
* the software package with which this file was provided.
*******************************************************************************/

#if !defined(CY_PINS_PinLed_H) /* Pins PinLed_H */
#define CY_PINS_PinLed_H

#include "cytypes.h"
#include "cyfitter.h"
#include "cypins.h"
#include "PinLed_aliases.h"

/* APIs are not generated for P15[7:6] */
#if !(CY_PSOC5A &&\
	 PinLed__PORT == 15 && ((PinLed__MASK & 0xC0) != 0))


/***************************************
*        Function Prototypes             
***************************************/    

/**
* \addtogroup group_general
* @{
*/
void    PinLed_Write(uint8 value);
void    PinLed_SetDriveMode(uint8 mode);
uint8   PinLed_ReadDataReg(void);
uint8   PinLed_Read(void);
void    PinLed_SetInterruptMode(uint16 position, uint16 mode);
uint8   PinLed_ClearInterrupt(void);
/** @} general */

/***************************************
*           API Constants        
***************************************/
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup driveMode Drive mode constants
     * \brief Constants to be passed as "mode" parameter in the PinLed_SetDriveMode() function.
     *  @{
     */
        #define PinLed_DM_ALG_HIZ         PIN_DM_ALG_HIZ
        #define PinLed_DM_DIG_HIZ         PIN_DM_DIG_HIZ
        #define PinLed_DM_RES_UP          PIN_DM_RES_UP
        #define PinLed_DM_RES_DWN         PIN_DM_RES_DWN
        #define PinLed_DM_OD_LO           PIN_DM_OD_LO
        #define PinLed_DM_OD_HI           PIN_DM_OD_HI
        #define PinLed_DM_STRONG          PIN_DM_STRONG
        #define PinLed_DM_RES_UPDWN       PIN_DM_RES_UPDWN
    /** @} driveMode */
/** @} group_constants */
    
/* Digital Port Constants */
#define PinLed_MASK               PinLed__MASK
#define PinLed_SHIFT              PinLed__SHIFT
#define PinLed_WIDTH              1u

/* Interrupt constants */
#if defined(PinLed__INTSTAT)
/**
* \addtogroup group_constants
* @{
*/
    /** \addtogroup intrMode Interrupt constants
     * \brief Constants to be passed as "mode" parameter in PinLed_SetInterruptMode() function.
     *  @{
     */
        #define PinLed_INTR_NONE      (uint16)(0x0000u)
        #define PinLed_INTR_RISING    (uint16)(0x0001u)
        #define PinLed_INTR_FALLING   (uint16)(0x0002u)
        #define PinLed_INTR_BOTH      (uint16)(0x0003u) 
    /** @} intrMode */
/** @} group_constants */

    #define PinLed_INTR_MASK      (0x01u) 
#endif /* (PinLed__INTSTAT) */


/***************************************
*             Registers        
***************************************/

/* Main Port Registers */
/* Pin State */
#define PinLed_PS                     (* (reg8 *) PinLed__PS)
/* Data Register */
#define PinLed_DR                     (* (reg8 *) PinLed__DR)
/* Port Number */
#define PinLed_PRT_NUM                (* (reg8 *) PinLed__PRT) 
/* Connect to Analog Globals */                                                  
#define PinLed_AG                     (* (reg8 *) PinLed__AG)                       
/* Analog MUX bux enable */
#define PinLed_AMUX                   (* (reg8 *) PinLed__AMUX) 
/* Bidirectional Enable */                                                        
#define PinLed_BIE                    (* (reg8 *) PinLed__BIE)
/* Bit-mask for Aliased Register Access */
#define PinLed_BIT_MASK               (* (reg8 *) PinLed__BIT_MASK)
/* Bypass Enable */
#define PinLed_BYP                    (* (reg8 *) PinLed__BYP)
/* Port wide control signals */                                                   
#define PinLed_CTL                    (* (reg8 *) PinLed__CTL)
/* Drive Modes */
#define PinLed_DM0                    (* (reg8 *) PinLed__DM0) 
#define PinLed_DM1                    (* (reg8 *) PinLed__DM1)
#define PinLed_DM2                    (* (reg8 *) PinLed__DM2) 
/* Input Buffer Disable Override */
#define PinLed_INP_DIS                (* (reg8 *) PinLed__INP_DIS)
/* LCD Common or Segment Drive */
#define PinLed_LCD_COM_SEG            (* (reg8 *) PinLed__LCD_COM_SEG)
/* Enable Segment LCD */
#define PinLed_LCD_EN                 (* (reg8 *) PinLed__LCD_EN)
/* Slew Rate Control */
#define PinLed_SLW                    (* (reg8 *) PinLed__SLW)

/* DSI Port Registers */
/* Global DSI Select Register */
#define PinLed_PRTDSI__CAPS_SEL       (* (reg8 *) PinLed__PRTDSI__CAPS_SEL) 
/* Double Sync Enable */
#define PinLed_PRTDSI__DBL_SYNC_IN    (* (reg8 *) PinLed__PRTDSI__DBL_SYNC_IN) 
/* Output Enable Select Drive Strength */
#define PinLed_PRTDSI__OE_SEL0        (* (reg8 *) PinLed__PRTDSI__OE_SEL0) 
#define PinLed_PRTDSI__OE_SEL1        (* (reg8 *) PinLed__PRTDSI__OE_SEL1) 
/* Port Pin Output Select Registers */
#define PinLed_PRTDSI__OUT_SEL0       (* (reg8 *) PinLed__PRTDSI__OUT_SEL0) 
#define PinLed_PRTDSI__OUT_SEL1       (* (reg8 *) PinLed__PRTDSI__OUT_SEL1) 
/* Sync Output Enable Registers */
#define PinLed_PRTDSI__SYNC_OUT       (* (reg8 *) PinLed__PRTDSI__SYNC_OUT) 

/* SIO registers */
#if defined(PinLed__SIO_CFG)
    #define PinLed_SIO_HYST_EN        (* (reg8 *) PinLed__SIO_HYST_EN)
    #define PinLed_SIO_REG_HIFREQ     (* (reg8 *) PinLed__SIO_REG_HIFREQ)
    #define PinLed_SIO_CFG            (* (reg8 *) PinLed__SIO_CFG)
    #define PinLed_SIO_DIFF           (* (reg8 *) PinLed__SIO_DIFF)
#endif /* (PinLed__SIO_CFG) */

/* Interrupt Registers */
#if defined(PinLed__INTSTAT)
    #define PinLed_INTSTAT            (* (reg8 *) PinLed__INTSTAT)
    #define PinLed_SNAP               (* (reg8 *) PinLed__SNAP)
    
	#define PinLed_0_INTTYPE_REG 		(* (reg8 *) PinLed__0__INTTYPE)
#endif /* (PinLed__INTSTAT) */

#endif /* CY_PSOC5A... */

#endif /*  CY_PINS_PinLed_H */


/* [] END OF FILE */
