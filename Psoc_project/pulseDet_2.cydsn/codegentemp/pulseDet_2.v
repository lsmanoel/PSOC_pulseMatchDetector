// ======================================================================
// pulseDet_2.v generated from TopDesign.cysch
// 08/05/2018 at 22:17
// This file is auto generated. ANY EDITS YOU MAKE MAY BE LOST WHEN THIS FILE IS REGENERATED!!!
// ======================================================================

/* -- WARNING: The following section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_DIE_LEOPARD 1
`define CYDEV_CHIP_REV_LEOPARD_PRODUCTION 3
`define CYDEV_CHIP_REV_LEOPARD_ES3 3
`define CYDEV_CHIP_REV_LEOPARD_ES2 1
`define CYDEV_CHIP_REV_LEOPARD_ES1 0
`define CYDEV_CHIP_DIE_PSOC5LP 2
`define CYDEV_CHIP_REV_PSOC5LP_PRODUCTION 0
`define CYDEV_CHIP_REV_PSOC5LP_ES0 0
`define CYDEV_CHIP_DIE_PSOC5TM 3
`define CYDEV_CHIP_REV_PSOC5TM_PRODUCTION 1
`define CYDEV_CHIP_REV_PSOC5TM_ES1 1
`define CYDEV_CHIP_REV_PSOC5TM_ES0 0
`define CYDEV_CHIP_DIE_TMA4 4
`define CYDEV_CHIP_REV_TMA4_PRODUCTION 17
`define CYDEV_CHIP_REV_TMA4_ES 17
`define CYDEV_CHIP_REV_TMA4_ES2 33
`define CYDEV_CHIP_DIE_PSOC4A 5
`define CYDEV_CHIP_REV_PSOC4A_PRODUCTION 17
`define CYDEV_CHIP_REV_PSOC4A_ES0 17
`define CYDEV_CHIP_DIE_PSOC6ABLE2 6
`define CYDEV_CHIP_REV_PSOC6ABLE2_ES 17
`define CYDEV_CHIP_REV_PSOC6ABLE2_PRODUCTION 33
`define CYDEV_CHIP_REV_PSOC6ABLE2_NO_UDB 33
`define CYDEV_CHIP_DIE_VOLANS 7
`define CYDEV_CHIP_REV_VOLANS_PRODUCTION 0
`define CYDEV_CHIP_DIE_BERRYPECKER 8
`define CYDEV_CHIP_REV_BERRYPECKER_PRODUCTION 0
`define CYDEV_CHIP_DIE_CRANE 9
`define CYDEV_CHIP_REV_CRANE_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM3 10
`define CYDEV_CHIP_REV_FM3_PRODUCTION 0
`define CYDEV_CHIP_DIE_FM4 11
`define CYDEV_CHIP_REV_FM4_PRODUCTION 0
`define CYDEV_CHIP_DIE_EXPECT 2
`define CYDEV_CHIP_REV_EXPECT 0
`define CYDEV_CHIP_DIE_ACTUAL 2
/* -- WARNING: The previous section of defines are deprecated and will be removed in a future release -- */
`define CYDEV_CHIP_FAMILY_PSOC3 1
`define CYDEV_CHIP_FAMILY_PSOC4 2
`define CYDEV_CHIP_FAMILY_PSOC5 3
`define CYDEV_CHIP_FAMILY_PSOC6 4
`define CYDEV_CHIP_FAMILY_FM0P 5
`define CYDEV_CHIP_FAMILY_FM3 6
`define CYDEV_CHIP_FAMILY_FM4 7
`define CYDEV_CHIP_FAMILY_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_UNKNOWN 0
`define CYDEV_CHIP_MEMBER_3A 1
`define CYDEV_CHIP_REVISION_3A_PRODUCTION 3
`define CYDEV_CHIP_REVISION_3A_ES3 3
`define CYDEV_CHIP_REVISION_3A_ES2 1
`define CYDEV_CHIP_REVISION_3A_ES1 0
`define CYDEV_CHIP_MEMBER_5B 2
`define CYDEV_CHIP_REVISION_5B_PRODUCTION 0
`define CYDEV_CHIP_REVISION_5B_ES0 0
`define CYDEV_CHIP_MEMBER_5A 3
`define CYDEV_CHIP_REVISION_5A_PRODUCTION 1
`define CYDEV_CHIP_REVISION_5A_ES1 1
`define CYDEV_CHIP_REVISION_5A_ES0 0
`define CYDEV_CHIP_MEMBER_4G 4
`define CYDEV_CHIP_REVISION_4G_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4G_ES 17
`define CYDEV_CHIP_REVISION_4G_ES2 33
`define CYDEV_CHIP_MEMBER_4U 5
`define CYDEV_CHIP_REVISION_4U_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4E 6
`define CYDEV_CHIP_REVISION_4E_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4E_CCG2_NO_USBPD 0
`define CYDEV_CHIP_MEMBER_4O 7
`define CYDEV_CHIP_REVISION_4O_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4R 8
`define CYDEV_CHIP_REVISION_4R_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4T 9
`define CYDEV_CHIP_REVISION_4T_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4N 10
`define CYDEV_CHIP_REVISION_4N_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4S 11
`define CYDEV_CHIP_REVISION_4S_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4Q 12
`define CYDEV_CHIP_REVISION_4Q_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4D 13
`define CYDEV_CHIP_REVISION_4D_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4J 14
`define CYDEV_CHIP_REVISION_4J_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4K 15
`define CYDEV_CHIP_REVISION_4K_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4V 16
`define CYDEV_CHIP_REVISION_4V_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4H 17
`define CYDEV_CHIP_REVISION_4H_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4A 18
`define CYDEV_CHIP_REVISION_4A_PRODUCTION 17
`define CYDEV_CHIP_REVISION_4A_ES0 17
`define CYDEV_CHIP_MEMBER_4F 19
`define CYDEV_CHIP_REVISION_4F_PRODUCTION 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256K 0
`define CYDEV_CHIP_REVISION_4F_PRODUCTION_256DMA 0
`define CYDEV_CHIP_MEMBER_4P 20
`define CYDEV_CHIP_REVISION_4P_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4M 21
`define CYDEV_CHIP_REVISION_4M_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4L 22
`define CYDEV_CHIP_REVISION_4L_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_4I 23
`define CYDEV_CHIP_REVISION_4I_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_6A 24
`define CYDEV_CHIP_REVISION_6A_ES 17
`define CYDEV_CHIP_REVISION_6A_PRODUCTION 33
`define CYDEV_CHIP_REVISION_6A_NO_UDB 33
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE1 25
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE1_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE2 26
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE2_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_PDL_FM0P_TYPE3 27
`define CYDEV_CHIP_REVISION_PDL_FM0P_TYPE3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM3 28
`define CYDEV_CHIP_REVISION_FM3_PRODUCTION 0
`define CYDEV_CHIP_MEMBER_FM4 29
`define CYDEV_CHIP_REVISION_FM4_PRODUCTION 0
`define CYDEV_CHIP_FAMILY_USED 3
`define CYDEV_CHIP_MEMBER_USED 2
`define CYDEV_CHIP_REVISION_USED 0
// Component: EdgeDetect_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\EdgeDetect_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\EdgeDetect_v1_0\EdgeDetect_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\EdgeDetect_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\EdgeDetect_v1_0\EdgeDetect_v1_0.v"
`endif

// Component: CyControlReg_v1_80
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyControlReg_v1_80\CyControlReg_v1_80.v"
`endif

// Component: and_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0\and_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\and_v1_0\and_v1_0.v"
`endif

// Component: DigitalComp_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\DigitalComp_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\DigitalComp_v1_0\DigitalComp_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\DigitalComp_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\DigitalComp_v1_0\DigitalComp_v1_0.v"
`endif

// Component: cy_constant_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_constant_v1_0\cy_constant_v1_0.v"
`endif

// Component: cy_virtualmux_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\cy_virtualmux_v1_0\cy_virtualmux_v1_0.v"
`endif

// Component: B_UART_v2_50
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50\B_UART_v2_50.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\B_UART_v2_50\B_UART_v2_50.v"
`endif

// UART_v2_50(Address1=0, Address2=0, BaudRate=57600, BreakBitsRX=13, BreakBitsTX=13, BreakDetect=false, CRCoutputsEn=false, Enable_RX=1, Enable_RXIntInterrupt=0, Enable_TX=1, Enable_TXIntInterrupt=0, EnableHWAddress=0, EnIntRXInterrupt=false, EnIntTXInterrupt=false, FlowControl=0, HalfDuplexEn=false, HwTXEnSignal=true, InternalClock=true, InternalClockToleranceMinus=3.93736842105263, InternalClockTolerancePlus=3.93736842105263, InternalClockUsed=1, InterruptOnAddDetect=0, InterruptOnAddressMatch=0, InterruptOnBreak=0, InterruptOnByteRcvd=1, InterruptOnOverrunError=0, InterruptOnParityError=0, InterruptOnStopError=0, InterruptOnTXComplete=false, InterruptOnTXFifoEmpty=false, InterruptOnTXFifoFull=false, InterruptOnTXFifoNotFull=false, IntOnAddressDetect=false, IntOnAddressMatch=false, IntOnBreak=false, IntOnByteRcvd=true, IntOnOverrunError=false, IntOnParityError=false, IntOnStopError=false, NumDataBits=8, NumStopBits=1, OverSamplingRate=8, ParityType=0, ParityTypeSw=false, RequiredClock=460800, RXAddressMode=0, RXBufferSize=4, RxBuffRegSizeReplacementString=uint8, RXEnable=true, TXBitClkGenDP=true, TXBufferSize=4, TxBuffRegSizeReplacementString=uint8, TXEnable=true, Use23Polling=true, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=UART_v2_50, CY_CONFIG_TITLE=UART_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=UART_1, CY_INSTANCE_SHORT_NAME=UART_1, CY_MAJOR_VERSION=2, CY_MINOR_VERSION=50, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.2, INSTANCE_NAME=UART_1, )
module UART_v2_50_0 (
    cts_n,
    tx,
    rts_n,
    tx_en,
    clock,
    reset,
    rx,
    tx_interrupt,
    rx_interrupt,
    tx_data,
    tx_clk,
    rx_data,
    rx_clk);
    input       cts_n;
    output      tx;
    output      rts_n;
    output      tx_en;
    input       clock;
    input       reset;
    input       rx;
    output      tx_interrupt;
    output      rx_interrupt;
    output      tx_data;
    output      tx_clk;
    output      rx_data;
    output      rx_clk;

    parameter Address1 = 0;
    parameter Address2 = 0;
    parameter EnIntRXInterrupt = 0;
    parameter EnIntTXInterrupt = 0;
    parameter FlowControl = 0;
    parameter HalfDuplexEn = 0;
    parameter HwTXEnSignal = 1;
    parameter NumDataBits = 8;
    parameter NumStopBits = 1;
    parameter ParityType = 0;
    parameter RXEnable = 1;
    parameter TXEnable = 1;

          wire  Net_289;
          wire  Net_61;
          wire  Net_9;


	cy_clock_v1_0
		#(.id("b0162966-0060-4af5-82d1-fcb491ad7619/be0a0e37-ad17-42ca-b5a1-1a654d736358"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("2170138888.88889"),
		  .is_direct(0),
		  .is_digital(1))
		IntClock
		 (.clock_out(Net_9));


	// VirtualMux_1 (cy_virtualmux_v1_0)
	assign Net_61 = Net_9;

    B_UART_v2_50 BUART (
        .cts_n(cts_n),
        .tx(tx),
        .rts_n(rts_n),
        .tx_en(tx_en),
        .clock(Net_61),
        .reset(reset),
        .rx(rx),
        .tx_interrupt(tx_interrupt),
        .rx_interrupt(rx_interrupt),
        .tx_data(tx_data),
        .tx_clk(tx_clk),
        .rx_data(rx_data),
        .rx_clk(rx_clk));
    defparam BUART.Address1 = 0;
    defparam BUART.Address2 = 0;
    defparam BUART.BreakBitsRX = 13;
    defparam BUART.BreakBitsTX = 13;
    defparam BUART.BreakDetect = 0;
    defparam BUART.CRCoutputsEn = 0;
    defparam BUART.FlowControl = 0;
    defparam BUART.HalfDuplexEn = 0;
    defparam BUART.HwTXEnSignal = 1;
    defparam BUART.NumDataBits = 8;
    defparam BUART.NumStopBits = 1;
    defparam BUART.OverSampleCount = 8;
    defparam BUART.ParityType = 0;
    defparam BUART.ParityTypeSw = 0;
    defparam BUART.RXAddressMode = 0;
    defparam BUART.RXEnable = 1;
    defparam BUART.RXStatusIntEnable = 1;
    defparam BUART.TXBitClkGenDP = 1;
    defparam BUART.TXEnable = 1;
    defparam BUART.Use23Polling = 1;



endmodule

// Component: or_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\or_v1_0\or_v1_0.v"
`endif

// Component: CyStatusReg_v1_90
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyStatusReg_v1_90"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyStatusReg_v1_90\CyStatusReg_v1_90.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyStatusReg_v1_90"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\CyStatusReg_v1_90\CyStatusReg_v1_90.v"
`endif

// Component: BasicCounter_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\BasicCounter_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\BasicCounter_v1_0\BasicCounter_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\BasicCounter_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyComponentLibrary\CyComponentLibrary.cylib\BasicCounter_v1_0\BasicCounter_v1_0.v"
`endif

// Component: OneTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal\OneTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\OneTerminal\OneTerminal.v"
`endif

// Component: ZeroTerminal
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\ZeroTerminal\ZeroTerminal.v"
`endif

// PWM_v3_30(CaptureMode=0, Clock_CheckTolerance=true, Clock_desired_freq=12, Clock_desired_freq_unit=6, Clock_divisor=1, Clock_FractDividerDenominator=0, Clock_FractDividerNumerator=0, Clock_FractDividerUsed=false, Clock_is_direct=false, Clock_is_divider=false, Clock_is_freq=true, Clock_minus_tolerance=5, Clock_ph_align_clock_id=, Clock_ph_align_clock_name=, Clock_plus_tolerance=5, Clock_source_clock_id=, Clock_source_clock_name=, Compare1_16=false, Compare1_8=false, Compare2_16=false, Compare2_8=false, CompareStatusEdgeSense=true, CompareType1=1, CompareType1Software=0, CompareType2=1, CompareType2Software=0, CompareValue1=38, CompareValue2=63, CONTROL3=1, ControlReg=false, CtlModeReplacementString=SyncCtl, CyGetRegReplacementString=CY_GET_REG8, CySetRegReplacementString=CY_SET_REG8, DeadBand=0, DeadBand2_4=0, DeadBand256=0, DeadBandUsed=0, DeadTime=1, DitherOffset=0, EnableMode=0, FF16=false, FF8=true, FixedFunction=true, FixedFunctionUsed=1, InterruptOnCMP1=false, InterruptOnCMP2=false, InterruptOnKill=false, InterruptOnTC=false, IntOnCMP1=0, IntOnCMP2=0, IntOnKill=0, IntOnTC=0, KillMode=1, KillModeMinTime=0, MinimumKillTime=1, OneCompare=true, Period=255, PWMMode=0, PWMModeCenterAligned=0, RegDefReplacementString=reg8, RegSizeReplacementString=uint8, Resolution=8, RstStatusReplacementString=sSTSReg_rstSts, RunMode=0, Status=false, TermMode_capture=0, TermMode_clock=0, TermMode_cmp_sel=0, TermMode_enable=0, TermMode_interrupt=0, TermMode_kill=0, TermMode_ph1=0, TermMode_ph2=0, TermMode_pwm=0, TermMode_pwm1=0, TermMode_pwm2=0, TermMode_reset=0, TermMode_tc=0, TermMode_trigger=0, TermVisibility_capture=false, TermVisibility_clock=true, TermVisibility_cmp_sel=false, TermVisibility_enable=false, TermVisibility_interrupt=true, TermVisibility_kill=true, TermVisibility_ph1=false, TermVisibility_ph2=false, TermVisibility_pwm=true, TermVisibility_pwm1=false, TermVisibility_pwm2=false, TermVisibility_reset=true, TermVisibility_tc=true, TermVisibility_trigger=false, TriggerMode=0, UDB16=false, UDB8=false, UseControl=true, UseInterrupt=true, UseStatus=true, VerilogSectionReplacementString=sP8, CY_API_CALLBACK_HEADER_INCLUDE=#include "cyapicallbacks.h", CY_COMMENT=, CY_COMPONENT_NAME=PWM_v3_30, CY_CONFIG_TITLE=PWM_1, CY_CONST_CONFIG=true, CY_CONTROL_FILE=<:default:>, CY_DATASHEET_FILE=<:default:>, CY_FITTER_NAME=PWM_1, CY_INSTANCE_SHORT_NAME=PWM_1, CY_MAJOR_VERSION=3, CY_MINOR_VERSION=30, CY_PDL_DRIVER_NAME=, CY_PDL_DRIVER_REQ_VERSION=, CY_PDL_DRIVER_SUBGROUP=, CY_PDL_DRIVER_VARIANT=, CY_REMOVE=false, CY_SUPPRESS_API_GEN=false, CY_VERSION=PSoC Creator  4.2, INSTANCE_NAME=PWM_1, )
module PWM_v3_30_1 (
    reset,
    clock,
    tc,
    pwm1,
    pwm2,
    interrupt,
    capture,
    kill,
    enable,
    trigger,
    cmp_sel,
    pwm,
    ph1,
    ph2);
    input       reset;
    input       clock;
    output      tc;
    output      pwm1;
    output      pwm2;
    output      interrupt;
    input       capture;
    input       kill;
    input       enable;
    input       trigger;
    input       cmp_sel;
    output      pwm;
    output      ph1;
    output      ph2;

    parameter Resolution = 8;

          wire  Net_114;
          wire  Net_113;
          wire  Net_107;
          wire  Net_96;
          wire  Net_55;
          wire  Net_57;
          wire  Net_101;
          wire  Net_54;
          wire  Net_63;

    cy_psoc3_timer_v1_0 PWMHW (
        .timer_reset(reset),
        .capture(capture),
        .enable(Net_113),
        .kill(Net_107),
        .clock(clock),
        .tc(Net_63),
        .compare(Net_57),
        .interrupt(Net_54));

	// vmCompare (cy_virtualmux_v1_0)
	assign pwm = Net_57;

	// vmIRQ (cy_virtualmux_v1_0)
	assign interrupt = Net_54;

	// vmTC (cy_virtualmux_v1_0)
	assign tc = Net_63;

    OneTerminal OneTerminal_1 (
        .o(Net_113));

	// FFKillMux (cy_virtualmux_v1_0)
	assign Net_107 = kill;

    ZeroTerminal ZeroTerminal_1 (
        .z(Net_114));



endmodule

// Component: xor_v1_0
`ifdef CY_BLK_DIR
`undef CY_BLK_DIR
`endif

`ifdef WARP
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\xor_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\xor_v1_0\xor_v1_0.v"
`else
`define CY_BLK_DIR "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\xor_v1_0"
`include "C:\Program Files (x86)\Cypress\PSoC Creator\4.2\PSoC Creator\psoc\content\CyPrimitives\cyprimitives.cylib\xor_v1_0\xor_v1_0.v"
`endif

// top
module top ;

          wire  preCount_1_overflow_sig;
          wire  Net_14321;
          wire  Net_14324;
          wire  Net_14170;
          wire  Net_14169;
          wire  Net_14168;
          wire  Net_14167;
          wire  Net_14166;
          wire  Net_14164;
          wire  isr_match_sig;
          wire  Net_14163;
          wire  Net_14162;
          wire  Net_14161;
          wire  Net_14304;
          wire  Net_11190;
          wire  Net_11189;
          wire  Net_11188;
          wire  Net_11187;
          wire  Net_11186;
          wire  Net_11185;
          wire  Net_11184;
          wire  Net_11183;
          wire  Net_11182;
          wire  clk_alpha;
          wire  Net_11181;
          wire  Net_11180;
          wire  Net_11179;
          wire  Net_11178;
          wire  Net_11177;
          wire  Net_11176;
          wire  Net_11175;
          wire  Net_11174;
          wire  Net_11173;
          wire  enable_sig;
          wire  Net_14223;
          wire  Net_14222;
          wire  Net_14221;
          wire  Net_14220;
          wire  Net_14219;
          wire  Net_14218;
          wire  Net_14217;
          wire  Net_14216;
          wire  Net_14215;
          wire  Net_11160;
          wire  Net_11159;
          wire  Net_11158;
          wire  reset_sig;
          wire  Net_11157;
          wire  Net_11156;
          wire  Net_11155;
          wire  Net_11154;
          wire  Net_11153;
          wire  Net_11152;
          wire  Net_11151;
          wire  Net_327;
          wire  Net_13733;
          wire  Net_13732;
          wire  Net_13731;
          wire  Net_13730;
          wire  Net_13729;
          wire  Net_13728;
          wire  Net_13727;
          wire  Net_13726;
          wire  Net_13725;
          wire  Net_13724;
          wire  Net_13826;
          wire  Net_14294;
          wire  Net_10608;
          wire  Net_14202;
          wire  Net_14201;
          wire  Net_14200;
          wire  Net_14199;
          wire  Net_14198;
          wire  Net_14197;
          wire  Net_14196;
          wire  Net_14195;
          wire  Net_14194;
          wire  Net_14193;
          wire  Net_6117;
          wire  Net_6116;
          wire  Net_6115;
          wire  Net_6114;
          wire  Net_6113;
          wire  Net_6112;
          wire  Net_6111;
          wire  Net_6110;
          wire  Net_6109;
          wire  Net_6108;
          wire  Net_6107;
          wire  Net_6106;
          wire  Net_6105;
          wire  Net_6104;
          wire  Net_6103;
          wire  Net_6102;
          wire  Net_6101;
          wire  Net_6100;
          wire  Net_6099;
          wire  Net_6098;
          wire  resetCounter_2_sig;
          wire  Net_14159;
          wire  Net_14158;
          wire  Net_14157;
          wire  Net_14156;
          wire  Net_14155;
          wire  Net_14153;
          wire  Net_14152;
          wire  Net_14151;
          wire  Net_14150;
          wire  Net_14147;
          wire  Net_14146;
          wire  Net_14145;
          wire  Net_14144;
          wire  Net_14143;
          wire  Net_14141;
          wire  Net_14140;
          wire  Net_14139;
          wire  Net_14138;
          wire  Net_11442;
          wire  Net_11441;
          wire  Net_11440;
          wire  Net_11439;
          wire  Net_11438;
          wire  Net_11437;
          wire  Net_11436;
          wire  Net_11435;
          wire  Net_11434;
          wire  Net_11433;
          wire  Net_291;
          wire  Net_290;
          wire  Net_289;
          wire  Net_288;
          wire  Net_287;
          wire  Net_286;
          wire  Net_284;
          wire  Net_13755;
          wire  Net_13723;
          wire  Net_11139;
          wire  Net_11138;
          wire  Net_11137;
          wire  Net_11136;
          wire  Net_11135;
          wire  Net_11134;
          wire  Net_11133;
          wire  Net_11132;
          wire  Net_11131;
          wire  Net_11130;
          wire  Net_11149;
          wire  match_sig;
          wire  Net_11148;
          wire  Net_11147;
          wire  Net_11146;
          wire  preCount_2_overflow_sig;
          wire  Net_11145;
          wire  Net_11144;
          wire  Net_11143;
          wire  Net_11142;
          wire  Net_11141;
          wire  Net_11140;
          wire  Net_14326;
          wire  Net_14325;
          wire  Net_13767;
          wire [7:0] Net_11122;
          wire  Net_13811;
          wire  Net_14299;
          wire  Net_13823;
          wire  Net_14281;
          wire  Net_14284;
          wire [1:0] Net_14287;
          wire [1:0] Net_14288;
          wire  Net_14237;
          wire  resetCounter_3_sig;
          wire [7:0] Net_4100;
          wire  Net_14241;
          wire  Net_14244;
          wire  Net_9073;
          wire  Net_14234;
          wire  resetCounter_1_sig;
          wire  Net_11886;
          wire [7:0] Net_14136;
          wire [7:0] Net_14102;
          wire  preCount_3_overflow_sig;
          wire  Net_13817;
          wire [7:0] Net_13798;
          wire  Net_13840;
          wire  Net_13779;
          wire  Net_6445;
          wire [7:0] Net_14226;
          wire [7:0] Net_14053;
          wire [7:0] Net_14124;
          wire  Net_12309;
          wire [7:0] Net_11125;
          wire [7:0] Net_13789;
          wire [7:0] Net_14225;
          wire [7:0] Net_13793;
          wire  Count_1_overflow_sig;
          wire  Net_82;
          wire  Net_160;
          wire  Net_294;
          wire  Net_261;
          wire  Net_292;
          wire  Net_276;

    EdgeDetect_v1_0 EdgeDetect_1 (
        .d(Net_14299),
        .det(Net_11886),
        .clock(Net_13811));
    defparam EdgeDetect_1.EdgeType = 0;

    EdgeDetect_v1_0 EdgeDetect_2 (
        .d(Net_13823),
        .det(Net_13817),
        .clock(Net_13811));
    defparam EdgeDetect_2.EdgeType = 0;

    CyControlReg_v1_80 Count_th_Reg_2 (
        .control_1(Net_11140),
        .control_2(Net_11141),
        .control_3(Net_11142),
        .control_0(Net_11143),
        .control_4(Net_11144),
        .control_5(Net_11145),
        .control_6(Net_11146),
        .control_7(Net_11147),
        .clock(1'b0),
        .reset(1'b0),
        .control_bus(Net_11122[7:0]));
    defparam Count_th_Reg_2.Bit0Mode = 0;
    defparam Count_th_Reg_2.Bit1Mode = 0;
    defparam Count_th_Reg_2.Bit2Mode = 0;
    defparam Count_th_Reg_2.Bit3Mode = 0;
    defparam Count_th_Reg_2.Bit4Mode = 0;
    defparam Count_th_Reg_2.Bit5Mode = 0;
    defparam Count_th_Reg_2.Bit6Mode = 0;
    defparam Count_th_Reg_2.Bit7Mode = 0;
    defparam Count_th_Reg_2.BitValue = 0;
    defparam Count_th_Reg_2.BusDisplay = 1;
    defparam Count_th_Reg_2.ExtrReset = 0;
    defparam Count_th_Reg_2.NumOutputs = 8;

    CyControlReg_v1_80 Count_th_Reg_1 (
        .control_1(Net_11130),
        .control_2(Net_11131),
        .control_3(Net_11132),
        .control_0(Net_11133),
        .control_4(Net_11134),
        .control_5(Net_11135),
        .control_6(Net_11136),
        .control_7(Net_11137),
        .clock(1'b0),
        .reset(1'b0),
        .control_bus(Net_14225[7:0]));
    defparam Count_th_Reg_1.Bit0Mode = 0;
    defparam Count_th_Reg_1.Bit1Mode = 0;
    defparam Count_th_Reg_1.Bit2Mode = 0;
    defparam Count_th_Reg_1.Bit3Mode = 0;
    defparam Count_th_Reg_1.Bit4Mode = 0;
    defparam Count_th_Reg_1.Bit5Mode = 0;
    defparam Count_th_Reg_1.Bit6Mode = 0;
    defparam Count_th_Reg_1.Bit7Mode = 0;
    defparam Count_th_Reg_1.BitValue = 0;
    defparam Count_th_Reg_1.BusDisplay = 1;
    defparam Count_th_Reg_1.ExtrReset = 0;
    defparam Count_th_Reg_1.NumOutputs = 8;


	cy_clock_v1_0
		#(.id("5faa4a0d-296d-4092-a999-4f7848416d72"),
		  .source_clock_id("61737EF6-3B74-48f9-8B91-F7473A442AE7"),
		  .divisor(1),
		  .period("0"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_1
		 (.clock_out(clk_alpha));



    assign Net_14241 = Net_11886 & Net_13817;

	wire [0:0] tmpOE__PinLed_net;
	wire [0:0] tmpFB_0__PinLed_net;
	wire [0:0] tmpIO_0__PinLed_net;
	wire [0:0] tmpINTERRUPT_0__PinLed_net;
	electrical [0:0] tmpSIOVREF__PinLed_net;

	cy_psoc3_pins_v1_10
		#(.id("e851a3b9-efb8-48be-bbb8-b303b216c393"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		PinLed
		 (.oe(tmpOE__PinLed_net),
		  .y({Net_261}),
		  .fb({tmpFB_0__PinLed_net[0:0]}),
		  .io({tmpIO_0__PinLed_net[0:0]}),
		  .siovref(tmpSIOVREF__PinLed_net),
		  .interrupt({tmpINTERRUPT_0__PinLed_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__PinLed_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    assign Count_1_overflow_sig = (Net_14225[7:0] == Net_13798[7:0]);


	cy_isr_v1_0
		#(.int_type(2'b00))
		isr_match
		 (.int_signal(match_sig));


    CyControlReg_v1_80 Control_Reg_1 (
        .control_1(enable_sig),
        .control_2(Net_13755),
        .control_3(Net_284),
        .control_0(reset_sig),
        .control_4(Net_286),
        .control_5(Net_287),
        .control_6(Net_288),
        .control_7(Net_289),
        .clock(1'b0),
        .reset(1'b0));
    defparam Control_Reg_1.Bit0Mode = 0;
    defparam Control_Reg_1.Bit1Mode = 0;
    defparam Control_Reg_1.Bit2Mode = 0;
    defparam Control_Reg_1.Bit3Mode = 0;
    defparam Control_Reg_1.Bit4Mode = 0;
    defparam Control_Reg_1.Bit5Mode = 0;
    defparam Control_Reg_1.Bit6Mode = 0;
    defparam Control_Reg_1.Bit7Mode = 0;
    defparam Control_Reg_1.BitValue = 0;
    defparam Control_Reg_1.BusDisplay = 0;
    defparam Control_Reg_1.ExtrReset = 0;
    defparam Control_Reg_1.NumOutputs = 8;

    assign Net_160 = 1'h0;


	cy_isr_v1_0
		#(.int_type(2'b10))
		isr_Rx_1
		 (.int_signal(Net_294));


	wire [0:0] tmpOE__Tx_1_net;
	wire [0:0] tmpFB_0__Tx_1_net;
	wire [0:0] tmpIO_0__Tx_1_net;
	wire [0:0] tmpINTERRUPT_0__Tx_1_net;
	electrical [0:0] tmpSIOVREF__Tx_1_net;

	cy_psoc3_pins_v1_10
		#(.id("ed092b9b-d398-4703-be89-cebf998501f6"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b1),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Tx_1
		 (.oe(tmpOE__Tx_1_net),
		  .y({Net_82}),
		  .fb({tmpFB_0__Tx_1_net[0:0]}),
		  .io({tmpIO_0__Tx_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Tx_1_net),
		  .interrupt({tmpINTERRUPT_0__Tx_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Tx_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__Rx_1_net;
	wire [0:0] tmpIO_0__Rx_1_net;
	wire [0:0] tmpINTERRUPT_0__Rx_1_net;
	electrical [0:0] tmpSIOVREF__Rx_1_net;

	cy_psoc3_pins_v1_10
		#(.id("1425177d-0d0e-4468-8bcc-e638e5509a9b"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b00),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Rx_1
		 (.oe(tmpOE__Rx_1_net),
		  .y({1'b0}),
		  .fb({Net_11433}),
		  .io({tmpIO_0__Rx_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Rx_1_net),
		  .interrupt({tmpINTERRUPT_0__Rx_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Rx_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    UART_v2_50_0 UART_1 (
        .cts_n(1'b0),
        .tx(Net_82),
        .rts_n(Net_11435),
        .tx_en(Net_11436),
        .clock(1'b0),
        .reset(Net_160),
        .rx(Net_11433),
        .tx_interrupt(Net_11438),
        .rx_interrupt(Net_294),
        .tx_data(Net_11439),
        .tx_clk(Net_11440),
        .rx_data(Net_11441),
        .rx_clk(Net_11442));
    defparam UART_1.Address1 = 0;
    defparam UART_1.Address2 = 0;
    defparam UART_1.EnIntRXInterrupt = 0;
    defparam UART_1.EnIntTXInterrupt = 0;
    defparam UART_1.FlowControl = 0;
    defparam UART_1.HalfDuplexEn = 0;
    defparam UART_1.HwTXEnSignal = 1;
    defparam UART_1.NumDataBits = 8;
    defparam UART_1.NumStopBits = 1;
    defparam UART_1.ParityType = 0;
    defparam UART_1.RXEnable = 1;
    defparam UART_1.TXEnable = 1;


    assign Net_9073 = match_sig | reset_sig | preCount_3_overflow_sig;


    assign Net_14244 = match_sig | reset_sig | preCount_2_overflow_sig;


    assign Net_13779 = match_sig | reset_sig | preCount_1_overflow_sig;

    CyStatusReg_v1_90 preCounter_Reg_1 (
        .status_0(1'b0),
        .status_1(1'b0),
        .status_2(1'b0),
        .status_3(1'b0),
        .clock(match_sig),
        .status_4(1'b0),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_14147),
        .status_bus(Net_14124[7:0]));
    defparam preCounter_Reg_1.Bit0Mode = 1;
    defparam preCounter_Reg_1.Bit1Mode = 1;
    defparam preCounter_Reg_1.Bit2Mode = 1;
    defparam preCounter_Reg_1.Bit3Mode = 1;
    defparam preCounter_Reg_1.Bit4Mode = 1;
    defparam preCounter_Reg_1.Bit5Mode = 1;
    defparam preCounter_Reg_1.Bit6Mode = 1;
    defparam preCounter_Reg_1.Bit7Mode = 1;
    defparam preCounter_Reg_1.BusDisplay = 1;
    defparam preCounter_Reg_1.Interrupt = 0;
    defparam preCounter_Reg_1.MaskValue = 0;
    defparam preCounter_Reg_1.NumInputs = 8;

    CyStatusReg_v1_90 preCounter_Reg_2 (
        .status_0(1'b0),
        .status_1(1'b0),
        .status_2(1'b0),
        .status_3(1'b0),
        .clock(match_sig),
        .status_4(1'b0),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_14159),
        .status_bus(Net_14053[7:0]));
    defparam preCounter_Reg_2.Bit0Mode = 1;
    defparam preCounter_Reg_2.Bit1Mode = 1;
    defparam preCounter_Reg_2.Bit2Mode = 1;
    defparam preCounter_Reg_2.Bit3Mode = 1;
    defparam preCounter_Reg_2.Bit4Mode = 1;
    defparam preCounter_Reg_2.Bit5Mode = 1;
    defparam preCounter_Reg_2.Bit6Mode = 1;
    defparam preCounter_Reg_2.Bit7Mode = 1;
    defparam preCounter_Reg_2.BusDisplay = 1;
    defparam preCounter_Reg_2.Interrupt = 0;
    defparam preCounter_Reg_2.MaskValue = 0;
    defparam preCounter_Reg_2.NumInputs = 8;

    BasicCounter_v1_0 BasicCounter_1 (
        .en(Net_14281),
        .cnt(Net_14288[1:0]),
        .reset(isr_match_sig),
        .clock(Net_14284));
    defparam BasicCounter_1.Width = 2;

    assign preCount_3_overflow_sig = (Net_14102[7:0] == Net_14226[7:0]);

    CyControlReg_v1_80 preCount_th_Reg_3 (
        .control_1(Net_6098),
        .control_2(Net_6099),
        .control_3(Net_6100),
        .control_0(Net_6101),
        .control_4(Net_6102),
        .control_5(Net_6103),
        .control_6(Net_6104),
        .control_7(Net_6105),
        .clock(1'b0),
        .reset(1'b0),
        .control_bus(Net_14102[7:0]));
    defparam preCount_th_Reg_3.Bit0Mode = 0;
    defparam preCount_th_Reg_3.Bit1Mode = 0;
    defparam preCount_th_Reg_3.Bit2Mode = 0;
    defparam preCount_th_Reg_3.Bit3Mode = 0;
    defparam preCount_th_Reg_3.Bit4Mode = 0;
    defparam preCount_th_Reg_3.Bit5Mode = 0;
    defparam preCount_th_Reg_3.Bit6Mode = 0;
    defparam preCount_th_Reg_3.Bit7Mode = 0;
    defparam preCount_th_Reg_3.BitValue = 0;
    defparam preCount_th_Reg_3.BusDisplay = 1;
    defparam preCount_th_Reg_3.ExtrReset = 0;
    defparam preCount_th_Reg_3.NumOutputs = 8;

    CyControlReg_v1_80 preCount_th_Reg_2 (
        .control_1(Net_6108),
        .control_2(Net_6109),
        .control_3(Net_6110),
        .control_0(Net_6111),
        .control_4(Net_6112),
        .control_5(Net_6113),
        .control_6(Net_6114),
        .control_7(Net_6115),
        .clock(1'b0),
        .reset(1'b0),
        .control_bus(Net_4100[7:0]));
    defparam preCount_th_Reg_2.Bit0Mode = 0;
    defparam preCount_th_Reg_2.Bit1Mode = 0;
    defparam preCount_th_Reg_2.Bit2Mode = 0;
    defparam preCount_th_Reg_2.Bit3Mode = 0;
    defparam preCount_th_Reg_2.Bit4Mode = 0;
    defparam preCount_th_Reg_2.Bit5Mode = 0;
    defparam preCount_th_Reg_2.Bit6Mode = 0;
    defparam preCount_th_Reg_2.Bit7Mode = 0;
    defparam preCount_th_Reg_2.BitValue = 0;
    defparam preCount_th_Reg_2.BusDisplay = 1;
    defparam preCount_th_Reg_2.ExtrReset = 0;
    defparam preCount_th_Reg_2.NumOutputs = 8;

    CyControlReg_v1_80 preCount_th_Reg_1 (
        .control_1(Net_14193),
        .control_2(Net_14194),
        .control_3(Net_14195),
        .control_0(Net_14196),
        .control_4(Net_14197),
        .control_5(Net_14198),
        .control_6(Net_14199),
        .control_7(Net_14200),
        .clock(1'b0),
        .reset(1'b0),
        .control_bus(Net_14136[7:0]));
    defparam preCount_th_Reg_1.Bit0Mode = 0;
    defparam preCount_th_Reg_1.Bit1Mode = 0;
    defparam preCount_th_Reg_1.Bit2Mode = 0;
    defparam preCount_th_Reg_1.Bit3Mode = 0;
    defparam preCount_th_Reg_1.Bit4Mode = 0;
    defparam preCount_th_Reg_1.Bit5Mode = 0;
    defparam preCount_th_Reg_1.Bit6Mode = 0;
    defparam preCount_th_Reg_1.Bit7Mode = 0;
    defparam preCount_th_Reg_1.BitValue = 0;
    defparam preCount_th_Reg_1.BusDisplay = 1;
    defparam preCount_th_Reg_1.ExtrReset = 0;
    defparam preCount_th_Reg_1.NumOutputs = 8;

    assign preCount_2_overflow_sig = (Net_4100[7:0] == Net_14053[7:0]);

    assign preCount_1_overflow_sig = (Net_14136[7:0] == Net_14124[7:0]);

    BasicCounter_v1_0 preCounter_3 (
        .en(enable_sig),
        .cnt(Net_14226[7:0]),
        .reset(Net_9073),
        .clock(Net_14237));
    defparam preCounter_3.Width = 8;

    BasicCounter_v1_0 preCounter_1 (
        .en(enable_sig),
        .cnt(Net_14124[7:0]),
        .reset(Net_13779),
        .clock(Net_14234));
    defparam preCounter_1.Width = 8;

    BasicCounter_v1_0 preCounter_2 (
        .en(enable_sig),
        .cnt(Net_14053[7:0]),
        .reset(Net_14244),
        .clock(Net_10608));
    defparam preCounter_2.Width = 8;


	cy_clock_v1_0
		#(.id("6abca99c-174d-4623-805d-942a9fd1cd18"),
		  .source_clock_id("61737EF6-3B74-48f9-8B91-F7473A442AE7"),
		  .divisor(1),
		  .period("0"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_4
		 (.clock_out(Net_14284));


    BasicCounter_v1_0 Counter_2 (
        .en(enable_sig),
        .cnt(Net_13793[7:0]),
        .reset(resetCounter_2_sig),
        .clock(Net_6445));
    defparam Counter_2.Width = 8;

    BasicCounter_v1_0 Counter_1 (
        .en(enable_sig),
        .cnt(Net_13798[7:0]),
        .reset(resetCounter_1_sig),
        .clock(Net_13840));
    defparam Counter_1.Width = 8;

    BasicCounter_v1_0 Counter_3 (
        .en(enable_sig),
        .cnt(Net_13789[7:0]),
        .reset(resetCounter_3_sig),
        .clock(Net_13826));
    defparam Counter_3.Width = 8;

    PWM_v3_30_1 PWM_1 (
        .reset(Net_276),
        .clock(Net_292),
        .tc(Net_13724),
        .pwm1(Net_13725),
        .pwm2(Net_13726),
        .interrupt(Net_13727),
        .capture(1'b0),
        .kill(enable_sig),
        .enable(1'b1),
        .trigger(1'b0),
        .cmp_sel(1'b0),
        .pwm(Net_261),
        .ph1(Net_13732),
        .ph2(Net_13733));
    defparam PWM_1.Resolution = 8;

    assign Net_276 = 1'h0;


	cy_clock_v1_0
		#(.id("69d86c3d-ca06-4cf8-8fe0-b79cd62d25a2"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("3906250000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_5
		 (.clock_out(Net_292));


	wire [0:0] tmpOE__inputPin_B_1_net;
	wire [0:0] tmpIO_0__inputPin_B_1_net;
	wire [0:0] tmpINTERRUPT_0__inputPin_B_1_net;
	electrical [0:0] tmpSIOVREF__inputPin_B_1_net;

	cy_psoc3_pins_v1_10
		#(.id("4525cffe-87db-4d30-acbc-09ab3ef459b6"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b01),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		inputPin_B_1
		 (.oe(tmpOE__inputPin_B_1_net),
		  .y({1'b0}),
		  .fb({Net_13823}),
		  .io({tmpIO_0__inputPin_B_1_net[0:0]}),
		  .siovref(tmpSIOVREF__inputPin_B_1_net),
		  .interrupt({tmpINTERRUPT_0__inputPin_B_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__inputPin_B_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

	wire [0:0] tmpOE__inputPin_A_1_net;
	wire [0:0] tmpIO_0__inputPin_A_1_net;
	wire [0:0] tmpINTERRUPT_0__inputPin_A_1_net;
	electrical [0:0] tmpSIOVREF__inputPin_A_1_net;

	cy_psoc3_pins_v1_10
		#(.id("71e6ebbb-831c-4b4e-a7cf-28ffab7b15a6"),
		  .drive_mode(3'b001),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b0),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b0),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("I"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b01),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		inputPin_A_1
		 (.oe(tmpOE__inputPin_A_1_net),
		  .y({1'b0}),
		  .fb({Net_14299}),
		  .io({tmpIO_0__inputPin_A_1_net[0:0]}),
		  .siovref(tmpSIOVREF__inputPin_A_1_net),
		  .interrupt({tmpINTERRUPT_0__inputPin_A_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__inputPin_A_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};

    CyControlReg_v1_80 Count_th_Reg_3 (
        .control_1(Net_11151),
        .control_2(Net_11152),
        .control_3(Net_11153),
        .control_0(Net_11154),
        .control_4(Net_11155),
        .control_5(Net_11156),
        .control_6(Net_11157),
        .control_7(Net_11158),
        .clock(1'b0),
        .reset(1'b0),
        .control_bus(Net_11125[7:0]));
    defparam Count_th_Reg_3.Bit0Mode = 0;
    defparam Count_th_Reg_3.Bit1Mode = 0;
    defparam Count_th_Reg_3.Bit2Mode = 0;
    defparam Count_th_Reg_3.Bit3Mode = 0;
    defparam Count_th_Reg_3.Bit4Mode = 0;
    defparam Count_th_Reg_3.Bit5Mode = 0;
    defparam Count_th_Reg_3.Bit6Mode = 0;
    defparam Count_th_Reg_3.Bit7Mode = 0;
    defparam Count_th_Reg_3.BitValue = 0;
    defparam Count_th_Reg_3.BusDisplay = 1;
    defparam Count_th_Reg_3.ExtrReset = 0;
    defparam Count_th_Reg_3.NumOutputs = 8;

    assign Net_13767 = (Net_11122[7:0] == Net_13793[7:0]);

    assign Net_12309 = (Net_13789[7:0] == Net_11125[7:0]);


    assign resetCounter_3_sig = reset_sig | match_sig;


    assign resetCounter_2_sig = reset_sig | match_sig;


    assign resetCounter_1_sig = reset_sig | match_sig;

    CyStatusReg_v1_90 Counter_Reg_1 (
        .status_0(1'b0),
        .status_1(1'b0),
        .status_2(1'b0),
        .status_3(1'b0),
        .clock(match_sig),
        .status_4(1'b0),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_14223),
        .status_bus(Net_13798[7:0]));
    defparam Counter_Reg_1.Bit0Mode = 1;
    defparam Counter_Reg_1.Bit1Mode = 1;
    defparam Counter_Reg_1.Bit2Mode = 1;
    defparam Counter_Reg_1.Bit3Mode = 1;
    defparam Counter_Reg_1.Bit4Mode = 1;
    defparam Counter_Reg_1.Bit5Mode = 1;
    defparam Counter_Reg_1.Bit6Mode = 1;
    defparam Counter_Reg_1.Bit7Mode = 1;
    defparam Counter_Reg_1.BusDisplay = 1;
    defparam Counter_Reg_1.Interrupt = 0;
    defparam Counter_Reg_1.MaskValue = 0;
    defparam Counter_Reg_1.NumInputs = 8;

    CyStatusReg_v1_90 Counter_Reg_2 (
        .status_0(1'b0),
        .status_1(1'b0),
        .status_2(1'b0),
        .status_3(1'b0),
        .clock(match_sig),
        .status_4(1'b0),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_11181),
        .status_bus(Net_13793[7:0]));
    defparam Counter_Reg_2.Bit0Mode = 1;
    defparam Counter_Reg_2.Bit1Mode = 1;
    defparam Counter_Reg_2.Bit2Mode = 1;
    defparam Counter_Reg_2.Bit3Mode = 1;
    defparam Counter_Reg_2.Bit4Mode = 1;
    defparam Counter_Reg_2.Bit5Mode = 1;
    defparam Counter_Reg_2.Bit6Mode = 1;
    defparam Counter_Reg_2.Bit7Mode = 1;
    defparam Counter_Reg_2.BusDisplay = 1;
    defparam Counter_Reg_2.Interrupt = 0;
    defparam Counter_Reg_2.MaskValue = 0;
    defparam Counter_Reg_2.NumInputs = 8;

    CyStatusReg_v1_90 Counter_Reg_3 (
        .status_0(1'b0),
        .status_1(1'b0),
        .status_2(1'b0),
        .status_3(1'b0),
        .clock(match_sig),
        .status_4(1'b0),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_11190),
        .status_bus(Net_13789[7:0]));
    defparam Counter_Reg_3.Bit0Mode = 1;
    defparam Counter_Reg_3.Bit1Mode = 1;
    defparam Counter_Reg_3.Bit2Mode = 1;
    defparam Counter_Reg_3.Bit3Mode = 1;
    defparam Counter_Reg_3.Bit4Mode = 1;
    defparam Counter_Reg_3.Bit5Mode = 1;
    defparam Counter_Reg_3.Bit6Mode = 1;
    defparam Counter_Reg_3.Bit7Mode = 1;
    defparam Counter_Reg_3.BusDisplay = 1;
    defparam Counter_Reg_3.Interrupt = 0;
    defparam Counter_Reg_3.MaskValue = 0;
    defparam Counter_Reg_3.NumInputs = 8;


    assign Net_13826 = isr_match_sig ^ preCount_3_overflow_sig;


    assign Net_13840 = preCount_1_overflow_sig ^ isr_match_sig;


    assign Net_6445 = preCount_2_overflow_sig ^ isr_match_sig;

	wire [0:0] tmpOE__Pin_1_net;
	wire [0:0] tmpFB_0__Pin_1_net;
	wire [0:0] tmpIO_0__Pin_1_net;
	wire [0:0] tmpINTERRUPT_0__Pin_1_net;
	electrical [0:0] tmpSIOVREF__Pin_1_net;

	cy_psoc3_pins_v1_10
		#(.id("d833bbb1-b93f-4e95-8e30-e7d16feaface"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_1
		 (.oe(tmpOE__Pin_1_net),
		  .y({Net_14326}),
		  .fb({tmpFB_0__Pin_1_net[0:0]}),
		  .io({tmpIO_0__Pin_1_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_1_net),
		  .interrupt({tmpINTERRUPT_0__Pin_1_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_1_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


    assign match_sig = Count_1_overflow_sig | Net_13767 | Net_12309;


	cy_clock_v1_0
		#(.id("2e34c1ce-8772-4543-b4b8-9b7ec89b50af"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("83333333.3333333"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_2
		 (.clock_out(Net_13811));


    CyStatusReg_v1_90 preCounter_Reg_3 (
        .status_0(1'b0),
        .status_1(1'b0),
        .status_2(1'b0),
        .status_3(1'b0),
        .clock(match_sig),
        .status_4(1'b0),
        .status_5(1'b0),
        .status_6(1'b0),
        .status_7(1'b0),
        .intr(Net_14170),
        .status_bus(Net_14226[7:0]));
    defparam preCounter_Reg_3.Bit0Mode = 1;
    defparam preCounter_Reg_3.Bit1Mode = 1;
    defparam preCounter_Reg_3.Bit2Mode = 1;
    defparam preCounter_Reg_3.Bit3Mode = 1;
    defparam preCounter_Reg_3.Bit4Mode = 1;
    defparam preCounter_Reg_3.Bit5Mode = 1;
    defparam preCounter_Reg_3.Bit6Mode = 1;
    defparam preCounter_Reg_3.Bit7Mode = 1;
    defparam preCounter_Reg_3.BusDisplay = 1;
    defparam preCounter_Reg_3.Interrupt = 0;
    defparam preCounter_Reg_3.MaskValue = 0;
    defparam preCounter_Reg_3.NumInputs = 8;


    assign Net_14281 = isr_match_sig ^ match_sig;

    assign Net_14287[1:0] = 2'h2;

    assign isr_match_sig = (Net_14288[1:0] == Net_14287[1:0]);


    assign Net_14234 = isr_match_sig ^ Net_11886;


    assign Net_14237 = Net_13817 ^ isr_match_sig;


    assign Net_10608 = Net_14241 ^ isr_match_sig;

	wire [0:0] tmpOE__Pin_2_net;
	wire [0:0] tmpFB_0__Pin_2_net;
	wire [0:0] tmpIO_0__Pin_2_net;
	wire [0:0] tmpINTERRUPT_0__Pin_2_net;
	electrical [0:0] tmpSIOVREF__Pin_2_net;

	cy_psoc3_pins_v1_10
		#(.id("d6f925af-c06b-486d-ad31-efb38e94daf7"),
		  .drive_mode(3'b110),
		  .ibuf_enabled(1'b1),
		  .init_dr_st(1'b0),
		  .input_clk_en(0),
		  .input_sync(1'b1),
		  .input_sync_mode(1'b0),
		  .intr_mode(2'b00),
		  .invert_in_clock(0),
		  .invert_in_clock_en(0),
		  .invert_in_reset(0),
		  .invert_out_clock(0),
		  .invert_out_clock_en(0),
		  .invert_out_reset(0),
		  .io_voltage(""),
		  .layout_mode("CONTIGUOUS"),
		  .oe_conn(1'b0),
		  .oe_reset(0),
		  .oe_sync(1'b0),
		  .output_clk_en(0),
		  .output_clock_mode(1'b0),
		  .output_conn(1'b1),
		  .output_mode(1'b0),
		  .output_reset(0),
		  .output_sync(1'b0),
		  .pa_in_clock(-1),
		  .pa_in_clock_en(-1),
		  .pa_in_reset(-1),
		  .pa_out_clock(-1),
		  .pa_out_clock_en(-1),
		  .pa_out_reset(-1),
		  .pin_aliases(""),
		  .pin_mode("O"),
		  .por_state(4),
		  .sio_group_cnt(0),
		  .sio_hyst(1'b1),
		  .sio_ibuf(""),
		  .sio_info(2'b00),
		  .sio_obuf(""),
		  .sio_refsel(""),
		  .sio_vtrip(""),
		  .sio_hifreq(""),
		  .sio_vohsel(""),
		  .slew_rate(1'b0),
		  .spanning(0),
		  .use_annotation(1'b0),
		  .vtrip(2'b10),
		  .width(1),
		  .ovt_hyst_trim(1'b0),
		  .ovt_needed(1'b0),
		  .ovt_slew_control(2'b00),
		  .input_buffer_sel(2'b00))
		Pin_2
		 (.oe(tmpOE__Pin_2_net),
		  .y({Net_14325}),
		  .fb({tmpFB_0__Pin_2_net[0:0]}),
		  .io({tmpIO_0__Pin_2_net[0:0]}),
		  .siovref(tmpSIOVREF__Pin_2_net),
		  .interrupt({tmpINTERRUPT_0__Pin_2_net[0:0]}),
		  .in_clock({1'b0}),
		  .in_clock_en({1'b1}),
		  .in_reset({1'b0}),
		  .out_clock({1'b0}),
		  .out_clock_en({1'b1}),
		  .out_reset({1'b0}));

	assign tmpOE__Pin_2_net = (`CYDEV_CHIP_MEMBER_USED == `CYDEV_CHIP_MEMBER_3A && `CYDEV_CHIP_REVISION_USED < `CYDEV_CHIP_REVISION_3A_ES3) ? ~{1'b1} : {1'b1};


	cy_clock_v1_0
		#(.id("f9f1e49a-4157-4a7f-b167-199917dd50f2"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1111111111.11111"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_3
		 (.clock_out(Net_14325));



	cy_clock_v1_0
		#(.id("b901b6ff-3de3-406f-8a67-b0bf76b28e81"),
		  .source_clock_id(""),
		  .divisor(0),
		  .period("1000000000"),
		  .is_direct(0),
		  .is_digital(1))
		Clock_6
		 (.clock_out(Net_14326));




endmodule

