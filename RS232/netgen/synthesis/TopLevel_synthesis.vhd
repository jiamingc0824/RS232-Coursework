--------------------------------------------------------------------------------
-- Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.58f
--  \   \         Application: netgen
--  /   /         Filename: TopLevel_synthesis.vhd
-- /___/   /\     Timestamp: Mon Oct 28 11:23:17 2019
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm TopLevel -w -dir netgen/synthesis -ofmt vhdl -sim TopLevel.ngc TopLevel_synthesis.vhd 
-- Device	: xc3s500e-5-fg320
-- Input file	: TopLevel.ngc
-- Output file	: C:\Users\Jia Ming\Desktop\RS232\RS232\netgen\synthesis\TopLevel_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: TopLevel
-- Xilinx	: E:\Xilinx\14.5\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity TopLevel is
  port (
    Send : in STD_LOGIC := 'X'; 
    Ca : out STD_LOGIC; 
    Cb : out STD_LOGIC; 
    Cc : out STD_LOGIC; 
    Cd : out STD_LOGIC; 
    Ce : out STD_LOGIC; 
    Cf : out STD_LOGIC; 
    Cg : out STD_LOGIC; 
    Reset : in STD_LOGIC := 'X'; 
    Rxd : in STD_LOGIC := 'X'; 
    Txd : out STD_LOGIC; 
    SystemClock : in STD_LOGIC := 'X'; 
    An : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    DataIn : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end TopLevel;

architecture Structure of TopLevel is
  signal An_0_OBUF_4 : STD_LOGIC; 
  signal An_1_OBUF_5 : STD_LOGIC; 
  signal An_2_OBUF_6 : STD_LOGIC; 
  signal An_3_OBUF_7 : STD_LOGIC; 
  signal Ca_OBUF_9 : STD_LOGIC; 
  signal Cb_OBUF_11 : STD_LOGIC; 
  signal Cc_OBUF_13 : STD_LOGIC; 
  signal Cd_OBUF_15 : STD_LOGIC; 
  signal Ce_OBUF_17 : STD_LOGIC; 
  signal Cf_OBUF_19 : STD_LOGIC; 
  signal Cg_OBUF_21 : STD_LOGIC; 
  signal DataIn_0_IBUF_30 : STD_LOGIC; 
  signal DataIn_1_IBUF_31 : STD_LOGIC; 
  signal DataIn_2_IBUF_32 : STD_LOGIC; 
  signal DataIn_3_IBUF_33 : STD_LOGIC; 
  signal DataIn_4_IBUF_34 : STD_LOGIC; 
  signal DataIn_5_IBUF_35 : STD_LOGIC; 
  signal DataIn_6_IBUF_36 : STD_LOGIC; 
  signal DataIn_7_IBUF_37 : STD_LOGIC; 
  signal Mcount_iCount9_cy_1_rt_40 : STD_LOGIC; 
  signal Mcount_iCount9_cy_2_rt_42 : STD_LOGIC; 
  signal Mcount_iCount9_cy_3_rt_44 : STD_LOGIC; 
  signal Mcount_iCount9_cy_4_rt_46 : STD_LOGIC; 
  signal Mcount_iCount9_cy_5_rt_48 : STD_LOGIC; 
  signal Mcount_iCount9_cy_6_rt_50 : STD_LOGIC; 
  signal Mcount_iCount9_cy_7_rt_52 : STD_LOGIC; 
  signal Mcount_iCount9_xor_8_rt_54 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N52 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal Reset_IBUF_63 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal Result_2_1 : STD_LOGIC; 
  signal Result_3_1 : STD_LOGIC; 
  signal Result_4_1 : STD_LOGIC; 
  signal Result_5_1 : STD_LOGIC; 
  signal Result_6_1 : STD_LOGIC; 
  signal Result_7_1 : STD_LOGIC; 
  signal Result_8_1 : STD_LOGIC; 
  signal Rxd_IBUF_90 : STD_LOGIC; 
  signal Send_IBUF_92 : STD_LOGIC; 
  signal SystemClock_BUFGP_94 : STD_LOGIC; 
  signal U1_U1_iClock1x_100 : STD_LOGIC; 
  signal U1_U1_iClock1x1 : STD_LOGIC; 
  signal U1_U1_iClock1xEnable_102 : STD_LOGIC; 
  signal U1_U1_iClock1xEnable_and0000 : STD_LOGIC; 
  signal U1_U1_iClock1xEnable_inv : STD_LOGIC; 
  signal U1_U1_iClock1x_not0001 : STD_LOGIC; 
  signal U1_U1_iClockDiv_not0001_114 : STD_LOGIC; 
  signal U1_U1_iEnableDataOut_131 : STD_LOGIC; 
  signal U1_U1_iEnableDataOut_inv : STD_LOGIC; 
  signal U1_U1_iRxd1_137 : STD_LOGIC; 
  signal U1_U1_iRxd1_or0000 : STD_LOGIC; 
  signal U1_U1_iRxd2_139 : STD_LOGIC; 
  signal U1_U1_presState_FSM_FFd1_148 : STD_LOGIC; 
  signal U1_U1_presState_FSM_FFd2_149 : STD_LOGIC; 
  signal U1_U1_presState_FSM_FFd2_In : STD_LOGIC; 
  signal U1_U2_Result_0_1 : STD_LOGIC; 
  signal U1_U2_Result_1_1 : STD_LOGIC; 
  signal U1_U2_Result_2_1 : STD_LOGIC; 
  signal U1_U2_Result_3_1 : STD_LOGIC; 
  signal U1_U2_Txd_159 : STD_LOGIC; 
  signal U1_U2_Txd_mux0000 : STD_LOGIC; 
  signal U1_U2_Txd_not0001 : STD_LOGIC; 
  signal U1_U2_iClock1x_162 : STD_LOGIC; 
  signal U1_U2_iClock1xEnable_163 : STD_LOGIC; 
  signal U1_U2_iClock1xEnable_and0000 : STD_LOGIC; 
  signal U1_U2_iClock1xEnable_inv : STD_LOGIC; 
  signal U1_U2_iClock1x_mux0000 : STD_LOGIC; 
  signal U1_U2_iClock1x_not0001 : STD_LOGIC; 
  signal U1_U2_iClockDiv_and0000 : STD_LOGIC; 
  signal U1_U2_iEnableShift_173 : STD_LOGIC; 
  signal U1_U2_iEnableShift_mux0000 : STD_LOGIC; 
  signal U1_U2_iEnableTxdBuffer_175 : STD_LOGIC; 
  signal U1_U2_iEnableTxdBuffer_mux0001 : STD_LOGIC; 
  signal U1_U2_iEnableTxdBuffer_not0001 : STD_LOGIC; 
  signal U1_U2_iSend_182 : STD_LOGIC; 
  signal U1_U2_iSend_or0000 : STD_LOGIC; 
  signal U1_U2_iSend_or0000_inv : STD_LOGIC; 
  signal U1_U2_iTxdBuffer_and0000 : STD_LOGIC; 
  signal U1_U2_presState_FSM_FFd1_202 : STD_LOGIC; 
  signal U1_U2_presState_FSM_FFd1_In : STD_LOGIC; 
  signal U1_U2_presState_FSM_FFd2_204 : STD_LOGIC; 
  signal U1_U2_presState_FSM_FFd2_In : STD_LOGIC; 
  signal U1_U2_presState_cmp_eq0000 : STD_LOGIC; 
  signal U1_U2_presState_cmp_eq0001 : STD_LOGIC; 
  signal U2_Mrom_seg : STD_LOGIC; 
  signal U2_Mrom_seg1 : STD_LOGIC; 
  signal U2_Mrom_seg2 : STD_LOGIC; 
  signal U2_Mrom_seg3 : STD_LOGIC; 
  signal U2_Mrom_seg4 : STD_LOGIC; 
  signal U2_Mrom_seg5 : STD_LOGIC; 
  signal U2_Mrom_seg6 : STD_LOGIC; 
  signal U3_Mrom_seg : STD_LOGIC; 
  signal U3_Mrom_seg1 : STD_LOGIC; 
  signal U3_Mrom_seg2 : STD_LOGIC; 
  signal U3_Mrom_seg3 : STD_LOGIC; 
  signal U3_Mrom_seg4 : STD_LOGIC; 
  signal U3_Mrom_seg5 : STD_LOGIC; 
  signal U3_Mrom_seg6 : STD_LOGIC; 
  signal U4_Mrom_seg : STD_LOGIC; 
  signal U4_Mrom_seg1 : STD_LOGIC; 
  signal U4_Mrom_seg2 : STD_LOGIC; 
  signal U4_Mrom_seg3 : STD_LOGIC; 
  signal U4_Mrom_seg4 : STD_LOGIC; 
  signal U4_Mrom_seg5 : STD_LOGIC; 
  signal U4_Mrom_seg6 : STD_LOGIC; 
  signal U5_Mrom_seg : STD_LOGIC; 
  signal U5_Mrom_seg1 : STD_LOGIC; 
  signal U5_Mrom_seg2 : STD_LOGIC; 
  signal U5_Mrom_seg3 : STD_LOGIC; 
  signal U5_Mrom_seg4 : STD_LOGIC; 
  signal U5_Mrom_seg5 : STD_LOGIC; 
  signal U5_Mrom_seg6 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_10_rt_238 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_11_rt_240 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_12_rt_242 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_13_rt_244 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_14_rt_246 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_1_rt_248 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_2_rt_250 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_3_rt_252 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_4_rt_254 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_5_rt_256 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_6_rt_258 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_7_rt_260 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_8_rt_262 : STD_LOGIC; 
  signal U6_Mcount_iCount16_cy_9_rt_264 : STD_LOGIC; 
  signal U6_Mcount_iCount16_xor_15_rt_266 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_3_267 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_31_268 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_32_269 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_33_270 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_34_271 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_35_272 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_36_273 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_4_274 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_41_275 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_42_276 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_43_277 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_44_278 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_45_279 : STD_LOGIC; 
  signal U6_Mmux_iDigitOut_46_280 : STD_LOGIC; 
  signal iCount9_or0000 : STD_LOGIC; 
  signal iCount9_or000010_307 : STD_LOGIC; 
  signal Mcount_iCount9_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal Mcount_iCount9_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal U1_U1_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_U1_iClockDiv : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_U1_iClockDiv_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_U1_iDataOut1 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_iDataOut2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U1_iNoBitsReceived : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_U1_iShiftRegister : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U2_Result : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_U2_iClockDiv : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_U2_iNoBitsSent : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U1_U2_iTxdBuffer : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U1_U2_iTxdBuffer_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U6_Mcount_iCount16_cy : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal U6_Mcount_iCount16_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal U6_iCount16 : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal iCount9 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  iCount9_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(0),
      R => iCount9_or0000,
      Q => iCount9(0)
    );
  iCount9_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(1),
      R => iCount9_or0000,
      Q => iCount9(1)
    );
  iCount9_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(2),
      R => iCount9_or0000,
      Q => iCount9(2)
    );
  iCount9_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(3),
      R => iCount9_or0000,
      Q => iCount9(3)
    );
  iCount9_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(4),
      R => iCount9_or0000,
      Q => iCount9(4)
    );
  iCount9_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(5),
      R => iCount9_or0000,
      Q => iCount9(5)
    );
  iCount9_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(6),
      R => iCount9_or0000,
      Q => iCount9(6)
    );
  iCount9_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(7),
      R => iCount9_or0000,
      Q => iCount9(7)
    );
  iCount9_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(8),
      R => iCount9_or0000,
      Q => iCount9(8)
    );
  U6_iCount16_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result_0_1,
      Q => U6_iCount16(0)
    );
  U6_iCount16_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result_1_1,
      Q => U6_iCount16(1)
    );
  U6_iCount16_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result_2_1,
      Q => U6_iCount16(2)
    );
  U6_iCount16_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result_3_1,
      Q => U6_iCount16(3)
    );
  U6_iCount16_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result_4_1,
      Q => U6_iCount16(4)
    );
  U6_iCount16_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result_5_1,
      Q => U6_iCount16(5)
    );
  U6_iCount16_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result_6_1,
      Q => U6_iCount16(6)
    );
  U6_iCount16_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result_7_1,
      Q => U6_iCount16(7)
    );
  U6_iCount16_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result_8_1,
      Q => U6_iCount16(8)
    );
  U6_iCount16_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(9),
      Q => U6_iCount16(9)
    );
  U6_iCount16_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(10),
      Q => U6_iCount16(10)
    );
  U6_iCount16_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(11),
      Q => U6_iCount16(11)
    );
  U6_iCount16_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(12),
      Q => U6_iCount16(12)
    );
  U6_iCount16_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(13),
      Q => U6_iCount16(13)
    );
  U6_iCount16_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(14),
      Q => U6_iCount16(14)
    );
  U6_iCount16_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => SystemClock_BUFGP_94,
      D => Result(15),
      Q => U6_iCount16(15)
    );
  U6_Mmux_iDigitOut_2_f5_5 : MUXF5
    port map (
      I0 => U6_Mmux_iDigitOut_46_280,
      I1 => U6_Mmux_iDigitOut_36_273,
      S => U6_iCount16(15),
      O => Cg_OBUF_21
    );
  U6_Mmux_iDigitOut_46 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U2_Mrom_seg,
      I2 => U3_Mrom_seg,
      O => U6_Mmux_iDigitOut_46_280
    );
  U6_Mmux_iDigitOut_36 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U4_Mrom_seg,
      I2 => U5_Mrom_seg,
      O => U6_Mmux_iDigitOut_36_273
    );
  U6_Mmux_iDigitOut_2_f5_4 : MUXF5
    port map (
      I0 => U6_Mmux_iDigitOut_45_279,
      I1 => U6_Mmux_iDigitOut_35_272,
      S => U6_iCount16(15),
      O => Cf_OBUF_19
    );
  U6_Mmux_iDigitOut_45 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U2_Mrom_seg1,
      I2 => U3_Mrom_seg1,
      O => U6_Mmux_iDigitOut_45_279
    );
  U6_Mmux_iDigitOut_35 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U4_Mrom_seg1,
      I2 => U5_Mrom_seg1,
      O => U6_Mmux_iDigitOut_35_272
    );
  U6_Mmux_iDigitOut_2_f5_3 : MUXF5
    port map (
      I0 => U6_Mmux_iDigitOut_44_278,
      I1 => U6_Mmux_iDigitOut_34_271,
      S => U6_iCount16(15),
      O => Ce_OBUF_17
    );
  U6_Mmux_iDigitOut_44 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U2_Mrom_seg2,
      I2 => U3_Mrom_seg2,
      O => U6_Mmux_iDigitOut_44_278
    );
  U6_Mmux_iDigitOut_34 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U4_Mrom_seg2,
      I2 => U5_Mrom_seg2,
      O => U6_Mmux_iDigitOut_34_271
    );
  U6_Mmux_iDigitOut_2_f5_2 : MUXF5
    port map (
      I0 => U6_Mmux_iDigitOut_43_277,
      I1 => U6_Mmux_iDigitOut_33_270,
      S => U6_iCount16(15),
      O => Cd_OBUF_15
    );
  U6_Mmux_iDigitOut_43 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U2_Mrom_seg3,
      I2 => U3_Mrom_seg3,
      O => U6_Mmux_iDigitOut_43_277
    );
  U6_Mmux_iDigitOut_33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U4_Mrom_seg3,
      I2 => U5_Mrom_seg3,
      O => U6_Mmux_iDigitOut_33_270
    );
  U6_Mmux_iDigitOut_2_f5_1 : MUXF5
    port map (
      I0 => U6_Mmux_iDigitOut_42_276,
      I1 => U6_Mmux_iDigitOut_32_269,
      S => U6_iCount16(15),
      O => Cc_OBUF_13
    );
  U6_Mmux_iDigitOut_42 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U2_Mrom_seg4,
      I2 => U3_Mrom_seg4,
      O => U6_Mmux_iDigitOut_42_276
    );
  U6_Mmux_iDigitOut_32 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U4_Mrom_seg4,
      I2 => U5_Mrom_seg4,
      O => U6_Mmux_iDigitOut_32_269
    );
  U6_Mmux_iDigitOut_2_f5_0 : MUXF5
    port map (
      I0 => U6_Mmux_iDigitOut_41_275,
      I1 => U6_Mmux_iDigitOut_31_268,
      S => U6_iCount16(15),
      O => Cb_OBUF_11
    );
  U6_Mmux_iDigitOut_41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U2_Mrom_seg5,
      I2 => U3_Mrom_seg5,
      O => U6_Mmux_iDigitOut_41_275
    );
  U6_Mmux_iDigitOut_31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U4_Mrom_seg5,
      I2 => U5_Mrom_seg5,
      O => U6_Mmux_iDigitOut_31_268
    );
  U6_Mmux_iDigitOut_2_f5 : MUXF5
    port map (
      I0 => U6_Mmux_iDigitOut_4_274,
      I1 => U6_Mmux_iDigitOut_3_267,
      S => U6_iCount16(15),
      O => Ca_OBUF_9
    );
  U6_Mmux_iDigitOut_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U2_Mrom_seg6,
      I2 => U3_Mrom_seg6,
      O => U6_Mmux_iDigitOut_4_274
    );
  U6_Mmux_iDigitOut_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U4_Mrom_seg6,
      I2 => U5_Mrom_seg6,
      O => U6_Mmux_iDigitOut_3_267
    );
  U6_Mcount_iCount16_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => U6_Mcount_iCount16_lut(0),
      O => U6_Mcount_iCount16_cy(0)
    );
  U6_Mcount_iCount16_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => U6_Mcount_iCount16_lut(0),
      O => Result_0_1
    );
  U6_Mcount_iCount16_cy_1_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(0),
      DI => N0,
      S => U6_Mcount_iCount16_cy_1_rt_248,
      O => U6_Mcount_iCount16_cy(1)
    );
  U6_Mcount_iCount16_xor_1_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(0),
      LI => U6_Mcount_iCount16_cy_1_rt_248,
      O => Result_1_1
    );
  U6_Mcount_iCount16_cy_2_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(1),
      DI => N0,
      S => U6_Mcount_iCount16_cy_2_rt_250,
      O => U6_Mcount_iCount16_cy(2)
    );
  U6_Mcount_iCount16_xor_2_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(1),
      LI => U6_Mcount_iCount16_cy_2_rt_250,
      O => Result_2_1
    );
  U6_Mcount_iCount16_cy_3_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(2),
      DI => N0,
      S => U6_Mcount_iCount16_cy_3_rt_252,
      O => U6_Mcount_iCount16_cy(3)
    );
  U6_Mcount_iCount16_xor_3_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(2),
      LI => U6_Mcount_iCount16_cy_3_rt_252,
      O => Result_3_1
    );
  U6_Mcount_iCount16_cy_4_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(3),
      DI => N0,
      S => U6_Mcount_iCount16_cy_4_rt_254,
      O => U6_Mcount_iCount16_cy(4)
    );
  U6_Mcount_iCount16_xor_4_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(3),
      LI => U6_Mcount_iCount16_cy_4_rt_254,
      O => Result_4_1
    );
  U6_Mcount_iCount16_cy_5_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(4),
      DI => N0,
      S => U6_Mcount_iCount16_cy_5_rt_256,
      O => U6_Mcount_iCount16_cy(5)
    );
  U6_Mcount_iCount16_xor_5_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(4),
      LI => U6_Mcount_iCount16_cy_5_rt_256,
      O => Result_5_1
    );
  U6_Mcount_iCount16_cy_6_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(5),
      DI => N0,
      S => U6_Mcount_iCount16_cy_6_rt_258,
      O => U6_Mcount_iCount16_cy(6)
    );
  U6_Mcount_iCount16_xor_6_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(5),
      LI => U6_Mcount_iCount16_cy_6_rt_258,
      O => Result_6_1
    );
  U6_Mcount_iCount16_cy_7_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(6),
      DI => N0,
      S => U6_Mcount_iCount16_cy_7_rt_260,
      O => U6_Mcount_iCount16_cy(7)
    );
  U6_Mcount_iCount16_xor_7_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(6),
      LI => U6_Mcount_iCount16_cy_7_rt_260,
      O => Result_7_1
    );
  U6_Mcount_iCount16_cy_8_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(7),
      DI => N0,
      S => U6_Mcount_iCount16_cy_8_rt_262,
      O => U6_Mcount_iCount16_cy(8)
    );
  U6_Mcount_iCount16_xor_8_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(7),
      LI => U6_Mcount_iCount16_cy_8_rt_262,
      O => Result_8_1
    );
  U6_Mcount_iCount16_cy_9_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(8),
      DI => N0,
      S => U6_Mcount_iCount16_cy_9_rt_264,
      O => U6_Mcount_iCount16_cy(9)
    );
  U6_Mcount_iCount16_xor_9_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(8),
      LI => U6_Mcount_iCount16_cy_9_rt_264,
      O => Result(9)
    );
  U6_Mcount_iCount16_cy_10_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(9),
      DI => N0,
      S => U6_Mcount_iCount16_cy_10_rt_238,
      O => U6_Mcount_iCount16_cy(10)
    );
  U6_Mcount_iCount16_xor_10_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(9),
      LI => U6_Mcount_iCount16_cy_10_rt_238,
      O => Result(10)
    );
  U6_Mcount_iCount16_cy_11_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(10),
      DI => N0,
      S => U6_Mcount_iCount16_cy_11_rt_240,
      O => U6_Mcount_iCount16_cy(11)
    );
  U6_Mcount_iCount16_xor_11_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(10),
      LI => U6_Mcount_iCount16_cy_11_rt_240,
      O => Result(11)
    );
  U6_Mcount_iCount16_cy_12_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(11),
      DI => N0,
      S => U6_Mcount_iCount16_cy_12_rt_242,
      O => U6_Mcount_iCount16_cy(12)
    );
  U6_Mcount_iCount16_xor_12_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(11),
      LI => U6_Mcount_iCount16_cy_12_rt_242,
      O => Result(12)
    );
  U6_Mcount_iCount16_cy_13_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(12),
      DI => N0,
      S => U6_Mcount_iCount16_cy_13_rt_244,
      O => U6_Mcount_iCount16_cy(13)
    );
  U6_Mcount_iCount16_xor_13_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(12),
      LI => U6_Mcount_iCount16_cy_13_rt_244,
      O => Result(13)
    );
  U6_Mcount_iCount16_cy_14_Q : MUXCY
    port map (
      CI => U6_Mcount_iCount16_cy(13),
      DI => N0,
      S => U6_Mcount_iCount16_cy_14_rt_246,
      O => U6_Mcount_iCount16_cy(14)
    );
  U6_Mcount_iCount16_xor_14_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(13),
      LI => U6_Mcount_iCount16_cy_14_rt_246,
      O => Result(14)
    );
  U6_Mcount_iCount16_xor_15_Q : XORCY
    port map (
      CI => U6_Mcount_iCount16_cy(14),
      LI => U6_Mcount_iCount16_xor_15_rt_266,
      O => Result(15)
    );
  Mcount_iCount9_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Mcount_iCount9_lut(0),
      O => Mcount_iCount9_cy(0)
    );
  Mcount_iCount9_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Mcount_iCount9_lut(0),
      O => Result(0)
    );
  Mcount_iCount9_cy_1_Q : MUXCY
    port map (
      CI => Mcount_iCount9_cy(0),
      DI => N0,
      S => Mcount_iCount9_cy_1_rt_40,
      O => Mcount_iCount9_cy(1)
    );
  Mcount_iCount9_xor_1_Q : XORCY
    port map (
      CI => Mcount_iCount9_cy(0),
      LI => Mcount_iCount9_cy_1_rt_40,
      O => Result(1)
    );
  Mcount_iCount9_cy_2_Q : MUXCY
    port map (
      CI => Mcount_iCount9_cy(1),
      DI => N0,
      S => Mcount_iCount9_cy_2_rt_42,
      O => Mcount_iCount9_cy(2)
    );
  Mcount_iCount9_xor_2_Q : XORCY
    port map (
      CI => Mcount_iCount9_cy(1),
      LI => Mcount_iCount9_cy_2_rt_42,
      O => Result(2)
    );
  Mcount_iCount9_cy_3_Q : MUXCY
    port map (
      CI => Mcount_iCount9_cy(2),
      DI => N0,
      S => Mcount_iCount9_cy_3_rt_44,
      O => Mcount_iCount9_cy(3)
    );
  Mcount_iCount9_xor_3_Q : XORCY
    port map (
      CI => Mcount_iCount9_cy(2),
      LI => Mcount_iCount9_cy_3_rt_44,
      O => Result(3)
    );
  Mcount_iCount9_cy_4_Q : MUXCY
    port map (
      CI => Mcount_iCount9_cy(3),
      DI => N0,
      S => Mcount_iCount9_cy_4_rt_46,
      O => Mcount_iCount9_cy(4)
    );
  Mcount_iCount9_xor_4_Q : XORCY
    port map (
      CI => Mcount_iCount9_cy(3),
      LI => Mcount_iCount9_cy_4_rt_46,
      O => Result(4)
    );
  Mcount_iCount9_cy_5_Q : MUXCY
    port map (
      CI => Mcount_iCount9_cy(4),
      DI => N0,
      S => Mcount_iCount9_cy_5_rt_48,
      O => Mcount_iCount9_cy(5)
    );
  Mcount_iCount9_xor_5_Q : XORCY
    port map (
      CI => Mcount_iCount9_cy(4),
      LI => Mcount_iCount9_cy_5_rt_48,
      O => Result(5)
    );
  Mcount_iCount9_cy_6_Q : MUXCY
    port map (
      CI => Mcount_iCount9_cy(5),
      DI => N0,
      S => Mcount_iCount9_cy_6_rt_50,
      O => Mcount_iCount9_cy(6)
    );
  Mcount_iCount9_xor_6_Q : XORCY
    port map (
      CI => Mcount_iCount9_cy(5),
      LI => Mcount_iCount9_cy_6_rt_50,
      O => Result(6)
    );
  Mcount_iCount9_cy_7_Q : MUXCY
    port map (
      CI => Mcount_iCount9_cy(6),
      DI => N0,
      S => Mcount_iCount9_cy_7_rt_52,
      O => Mcount_iCount9_cy(7)
    );
  Mcount_iCount9_xor_7_Q : XORCY
    port map (
      CI => Mcount_iCount9_cy(6),
      LI => Mcount_iCount9_cy_7_rt_52,
      O => Result(7)
    );
  Mcount_iCount9_xor_8_Q : XORCY
    port map (
      CI => Mcount_iCount9_cy(7),
      LI => Mcount_iCount9_xor_8_rt_54,
      O => Result(8)
    );
  U1_U1_iNoBitsReceived_3 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CLR => U1_U1_iClock1xEnable_inv,
      D => U1_U1_Result(3),
      Q => U1_U1_iNoBitsReceived(3)
    );
  U1_U1_iNoBitsReceived_2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CLR => U1_U1_iClock1xEnable_inv,
      D => U1_U1_Result(2),
      Q => U1_U1_iNoBitsReceived(2)
    );
  U1_U1_iNoBitsReceived_1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CLR => U1_U1_iClock1xEnable_inv,
      D => U1_U1_Result(1),
      Q => U1_U1_iNoBitsReceived(1)
    );
  U1_U1_iNoBitsReceived_0 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CLR => U1_U1_iClock1xEnable_inv,
      D => U1_U1_Result(0),
      Q => U1_U1_iNoBitsReceived(0)
    );
  U1_U1_presState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CLR => U1_U1_iClock1xEnable_inv,
      D => U1_U1_presState_FSM_FFd2_In,
      Q => U1_U1_presState_FSM_FFd2_149
    );
  U1_U1_presState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CLR => U1_U1_iClock1xEnable_inv,
      D => U1_U1_iEnableDataOut_131,
      Q => U1_U1_presState_FSM_FFd1_148
    );
  U1_U1_iDataOut2_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iDataOut1(7),
      Q => U1_U1_iDataOut2(7)
    );
  U1_U1_iDataOut2_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iDataOut1(6),
      Q => U1_U1_iDataOut2(6)
    );
  U1_U1_iDataOut2_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iDataOut1(5),
      Q => U1_U1_iDataOut2(5)
    );
  U1_U1_iDataOut2_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iDataOut1(4),
      Q => U1_U1_iDataOut2(4)
    );
  U1_U1_iDataOut2_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iDataOut1(3),
      Q => U1_U1_iDataOut2(3)
    );
  U1_U1_iDataOut2_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iDataOut1(2),
      Q => U1_U1_iDataOut2(2)
    );
  U1_U1_iDataOut2_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iDataOut1(1),
      Q => U1_U1_iDataOut2(1)
    );
  U1_U1_iDataOut2_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iDataOut1(0),
      Q => U1_U1_iDataOut2(0)
    );
  U1_U1_iDataOut1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iShiftRegister(7),
      Q => U1_U1_iDataOut1(7)
    );
  U1_U1_iDataOut1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iShiftRegister(6),
      Q => U1_U1_iDataOut1(6)
    );
  U1_U1_iDataOut1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iShiftRegister(5),
      Q => U1_U1_iDataOut1(5)
    );
  U1_U1_iDataOut1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iShiftRegister(4),
      Q => U1_U1_iDataOut1(4)
    );
  U1_U1_iDataOut1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iShiftRegister(3),
      Q => U1_U1_iDataOut1(3)
    );
  U1_U1_iDataOut1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iShiftRegister(2),
      Q => U1_U1_iDataOut1(2)
    );
  U1_U1_iDataOut1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iShiftRegister(1),
      Q => U1_U1_iDataOut1(1)
    );
  U1_U1_iDataOut1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_131,
      D => U1_U1_iShiftRegister(0),
      Q => U1_U1_iDataOut1(0)
    );
  U1_U1_iShiftRegister_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_inv,
      D => Rxd_IBUF_90,
      Q => U1_U1_iShiftRegister(7)
    );
  U1_U1_iShiftRegister_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_inv,
      D => U1_U1_iShiftRegister(7),
      Q => U1_U1_iShiftRegister(6)
    );
  U1_U1_iShiftRegister_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_inv,
      D => U1_U1_iShiftRegister(6),
      Q => U1_U1_iShiftRegister(5)
    );
  U1_U1_iShiftRegister_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_inv,
      D => U1_U1_iShiftRegister(5),
      Q => U1_U1_iShiftRegister(4)
    );
  U1_U1_iShiftRegister_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_inv,
      D => U1_U1_iShiftRegister(4),
      Q => U1_U1_iShiftRegister(3)
    );
  U1_U1_iShiftRegister_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_inv,
      D => U1_U1_iShiftRegister(3),
      Q => U1_U1_iShiftRegister(2)
    );
  U1_U1_iShiftRegister_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_inv,
      D => U1_U1_iShiftRegister(2),
      Q => U1_U1_iShiftRegister(1)
    );
  U1_U1_iShiftRegister_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U1_iClock1x_100,
      CE => U1_U1_iEnableDataOut_inv,
      D => U1_U1_iShiftRegister(1),
      Q => U1_U1_iShiftRegister(0)
    );
  U1_U1_iRxd2 : FDS
    port map (
      C => iCount9(8),
      D => U1_U1_iRxd1_137,
      S => U1_U1_iRxd1_or0000,
      Q => U1_U1_iRxd2_139
    );
  U1_U1_iClock1x : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => iCount9(8),
      CE => U1_U1_iClock1x_not0001,
      D => U1_U1_iClockDiv(3),
      Q => U1_U1_iClock1x1
    );
  U1_U1_iClock1xEnable : FDSE
    port map (
      C => iCount9(8),
      CE => U1_U1_iRxd1_or0000,
      D => N0,
      S => U1_U1_iClock1xEnable_and0000,
      Q => U1_U1_iClock1xEnable_102
    );
  U1_U1_iRxd1 : FDS
    port map (
      C => iCount9(8),
      D => Rxd_IBUF_90,
      S => U1_U1_iRxd1_or0000,
      Q => U1_U1_iRxd1_137
    );
  U1_U1_iClockDiv_3 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => iCount9(8),
      CE => U1_U1_iClockDiv_not0001_114,
      D => U1_U1_iClockDiv_mux0000(0),
      Q => U1_U1_iClockDiv(3)
    );
  U1_U1_iClockDiv_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => iCount9(8),
      CE => U1_U1_iClockDiv_not0001_114,
      D => U1_U1_iClockDiv_mux0000(1),
      Q => U1_U1_iClockDiv(2)
    );
  U1_U1_iClockDiv_1 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => iCount9(8),
      CE => U1_U1_iClockDiv_not0001_114,
      D => U1_U1_iClockDiv_mux0000(2),
      Q => U1_U1_iClockDiv(1)
    );
  U1_U1_iClockDiv_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => iCount9(8),
      CE => U1_U1_iClockDiv_not0001_114,
      D => U1_U1_iClockDiv_mux0000(3),
      Q => U1_U1_iClockDiv(0)
    );
  U1_U2_iClockDiv_3 : FDSE
    port map (
      C => iCount9(8),
      CE => U1_U2_iClock1xEnable_163,
      D => U1_U2_Result(3),
      S => U1_U2_iClockDiv_and0000,
      Q => U1_U2_iClockDiv(3)
    );
  U1_U2_iNoBitsSent_3 : FDC
    port map (
      C => U1_U2_iClock1x_162,
      CLR => U1_U2_iClock1xEnable_inv,
      D => U1_U2_Result_3_1,
      Q => U1_U2_iNoBitsSent(3)
    );
  U1_U2_iNoBitsSent_2 : FDC
    port map (
      C => U1_U2_iClock1x_162,
      CLR => U1_U2_iClock1xEnable_inv,
      D => U1_U2_Result_2_1,
      Q => U1_U2_iNoBitsSent(2)
    );
  U1_U2_iNoBitsSent_1 : FDC
    port map (
      C => U1_U2_iClock1x_162,
      CLR => U1_U2_iClock1xEnable_inv,
      D => U1_U2_Result_1_1,
      Q => U1_U2_iNoBitsSent(1)
    );
  U1_U2_iNoBitsSent_0 : FDC
    port map (
      C => U1_U2_iClock1x_162,
      CLR => U1_U2_iClock1xEnable_inv,
      D => U1_U2_Result_0_1,
      Q => U1_U2_iNoBitsSent(0)
    );
  U1_U2_iClockDiv_2 : FDRE
    port map (
      C => iCount9(8),
      CE => U1_U2_iClock1xEnable_163,
      D => U1_U2_Result(2),
      R => U1_U2_iClockDiv_and0000,
      Q => U1_U2_iClockDiv(2)
    );
  U1_U2_iClockDiv_1 : FDSE
    port map (
      C => iCount9(8),
      CE => U1_U2_iClock1xEnable_163,
      D => U1_U2_Result(1),
      S => U1_U2_iClockDiv_and0000,
      Q => U1_U2_iClockDiv(1)
    );
  U1_U2_iClockDiv_0 : FDRE
    port map (
      C => iCount9(8),
      CE => U1_U2_iClock1xEnable_163,
      D => U1_U2_Result(0),
      R => U1_U2_iClockDiv_and0000,
      Q => U1_U2_iClockDiv(0)
    );
  U1_U2_presState_FSM_FFd2 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U2_iClock1x_162,
      CLR => U1_U2_iClock1xEnable_inv,
      D => U1_U2_presState_FSM_FFd2_In,
      Q => U1_U2_presState_FSM_FFd2_204
    );
  U1_U2_presState_FSM_FFd1 : FDC
    generic map(
      INIT => '0'
    )
    port map (
      C => U1_U2_iClock1x_162,
      CLR => U1_U2_iClock1xEnable_inv,
      D => U1_U2_presState_FSM_FFd1_In,
      Q => U1_U2_presState_FSM_FFd1_202
    );
  U1_U2_iEnableShift : LD
    port map (
      D => U1_U2_iEnableShift_mux0000,
      G => U1_U2_presState_cmp_eq0001,
      Q => U1_U2_iEnableShift_173
    );
  U1_U2_iEnableTxdBuffer : LD
    port map (
      D => U1_U2_iEnableTxdBuffer_mux0001,
      G => U1_U2_iEnableTxdBuffer_not0001,
      Q => U1_U2_iEnableTxdBuffer_175
    );
  U1_U2_iTxdBuffer_7 : FDE
    port map (
      C => U1_U2_iClock1x_162,
      CE => U1_U2_iTxdBuffer_and0000,
      D => U1_U2_iTxdBuffer_mux0000(7),
      Q => U1_U2_iTxdBuffer(7)
    );
  U1_U2_iTxdBuffer_6 : FDE
    port map (
      C => U1_U2_iClock1x_162,
      CE => U1_U2_iTxdBuffer_and0000,
      D => U1_U2_iTxdBuffer_mux0000(6),
      Q => U1_U2_iTxdBuffer(6)
    );
  U1_U2_iTxdBuffer_5 : FDE
    port map (
      C => U1_U2_iClock1x_162,
      CE => U1_U2_iTxdBuffer_and0000,
      D => U1_U2_iTxdBuffer_mux0000(5),
      Q => U1_U2_iTxdBuffer(5)
    );
  U1_U2_iTxdBuffer_4 : FDE
    port map (
      C => U1_U2_iClock1x_162,
      CE => U1_U2_iTxdBuffer_and0000,
      D => U1_U2_iTxdBuffer_mux0000(4),
      Q => U1_U2_iTxdBuffer(4)
    );
  U1_U2_iTxdBuffer_3 : FDE
    port map (
      C => U1_U2_iClock1x_162,
      CE => U1_U2_iTxdBuffer_and0000,
      D => U1_U2_iTxdBuffer_mux0000(3),
      Q => U1_U2_iTxdBuffer(3)
    );
  U1_U2_iTxdBuffer_2 : FDE
    port map (
      C => U1_U2_iClock1x_162,
      CE => U1_U2_iTxdBuffer_and0000,
      D => U1_U2_iTxdBuffer_mux0000(2),
      Q => U1_U2_iTxdBuffer(2)
    );
  U1_U2_iTxdBuffer_1 : FDE
    port map (
      C => U1_U2_iClock1x_162,
      CE => U1_U2_iTxdBuffer_and0000,
      D => U1_U2_iTxdBuffer_mux0000(1),
      Q => U1_U2_iTxdBuffer(1)
    );
  U1_U2_iTxdBuffer_0 : FDE
    port map (
      C => U1_U2_iClock1x_162,
      CE => U1_U2_iTxdBuffer_and0000,
      D => U1_U2_iTxdBuffer_mux0000(0),
      Q => U1_U2_iTxdBuffer(0)
    );
  U1_U2_Txd : FDPE
    port map (
      C => U1_U2_iClock1x_162,
      CE => U1_U2_Txd_not0001,
      D => U1_U2_Txd_mux0000,
      PRE => U1_U2_iClock1xEnable_inv,
      Q => U1_U2_Txd_159
    );
  U1_U2_iClock1xEnable : FDSE
    port map (
      C => iCount9(8),
      CE => U1_U2_iSend_or0000,
      D => N0,
      S => U1_U2_iClock1xEnable_and0000,
      Q => U1_U2_iClock1xEnable_163
    );
  U1_U2_iClock1x : FDE
    port map (
      C => iCount9(8),
      CE => U1_U2_iClock1x_not0001,
      D => U1_U2_iClock1x_mux0000,
      Q => U1_U2_iClock1x_162
    );
  U1_U2_iSend : FDE
    port map (
      C => iCount9(8),
      CE => U1_U2_iSend_or0000_inv,
      D => Send_IBUF_92,
      Q => U1_U2_iSend_182
    );
  U1_U2_presState_FSM_Out01 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U1_U2_presState_FSM_FFd1_202,
      I1 => U1_U2_presState_FSM_FFd2_204,
      O => U1_U2_presState_cmp_eq0001
    );
  U1_U2_iEnableTxdBuffer_mux00011 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U1_U2_presState_FSM_FFd2_204,
      I1 => U1_U2_iClock1xEnable_163,
      O => U1_U2_iEnableTxdBuffer_mux0001
    );
  U1_U2_Txd_not00011 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U1_U2_iEnableTxdBuffer_175,
      I1 => U1_U2_iEnableShift_173,
      O => U1_U2_Txd_not0001
    );
  U1_U2_iEnableTxdBuffer_not00011 : LUT4
    generic map(
      INIT => X"1504"
    )
    port map (
      I0 => U1_U2_presState_FSM_FFd1_202,
      I1 => U1_U2_presState_FSM_FFd2_204,
      I2 => U1_U2_presState_cmp_eq0000,
      I3 => U1_U2_iClock1xEnable_163,
      O => U1_U2_iEnableTxdBuffer_not0001
    );
  U1_U2_iTxdBuffer_mux0000_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U1_U2_iEnableShift_173,
      I1 => DataIn_7_IBUF_37,
      O => U1_U2_iTxdBuffer_mux0000(7)
    );
  U6_Mdecod_an31 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U6_iCount16(15),
      O => An_3_OBUF_7
    );
  U6_Mdecod_an21 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U6_iCount16(15),
      I1 => U6_iCount16(14),
      O => An_2_OBUF_6
    );
  U6_Mdecod_an11 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U6_iCount16(15),
      O => An_1_OBUF_5
    );
  U6_Mdecod_an01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => U6_iCount16(14),
      I1 => U6_iCount16(15),
      O => An_0_OBUF_4
    );
  U1_U2_presState_FSM_FFd2_In1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U1_U2_presState_FSM_FFd1_202,
      I1 => U1_U2_presState_FSM_FFd2_204,
      O => U1_U2_presState_FSM_FFd2_In
    );
  U1_U2_iClock1x_mux00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U1_U2_iClock1xEnable_163,
      I1 => U1_U2_iClockDiv(3),
      O => U1_U2_iClock1x_mux0000
    );
  U1_U2_Txd_mux00001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => U1_U2_iEnableShift_173,
      I1 => U1_U2_iTxdBuffer(0),
      O => U1_U2_Txd_mux0000
    );
  U1_U1_presState_FSM_FFd2_In1 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => U1_U1_presState_FSM_FFd1_148,
      I1 => U1_U1_presState_FSM_FFd2_149,
      O => U1_U1_presState_FSM_FFd2_In
    );
  U1_U2_Mcount_iNoBitsSent_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U1_U2_iNoBitsSent(1),
      I1 => U1_U2_iNoBitsSent(0),
      O => U1_U2_Result_1_1
    );
  U1_U2_Mcount_iClockDiv_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U1_U2_iClockDiv(1),
      I1 => U1_U2_iClockDiv(0),
      O => U1_U2_Result(1)
    );
  U1_U1_Mcount_iNoBitsReceived_xor_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => U1_U1_iNoBitsReceived(1),
      I1 => U1_U1_iNoBitsReceived(0),
      O => U1_U1_Result(1)
    );
  U1_U2_iTxdBuffer_mux0000_6_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U2_iEnableShift_173,
      I1 => DataIn_6_IBUF_36,
      I2 => U1_U2_iTxdBuffer(7),
      O => U1_U2_iTxdBuffer_mux0000(6)
    );
  U1_U2_iTxdBuffer_mux0000_5_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U2_iEnableShift_173,
      I1 => DataIn_5_IBUF_35,
      I2 => U1_U2_iTxdBuffer(6),
      O => U1_U2_iTxdBuffer_mux0000(5)
    );
  U1_U2_iTxdBuffer_mux0000_4_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U2_iEnableShift_173,
      I1 => DataIn_4_IBUF_34,
      I2 => U1_U2_iTxdBuffer(5),
      O => U1_U2_iTxdBuffer_mux0000(4)
    );
  U1_U2_iTxdBuffer_mux0000_3_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U2_iEnableShift_173,
      I1 => DataIn_3_IBUF_33,
      I2 => U1_U2_iTxdBuffer(4),
      O => U1_U2_iTxdBuffer_mux0000(3)
    );
  U1_U2_iTxdBuffer_mux0000_2_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U2_iEnableShift_173,
      I1 => DataIn_2_IBUF_32,
      I2 => U1_U2_iTxdBuffer(3),
      O => U1_U2_iTxdBuffer_mux0000(2)
    );
  U1_U2_iTxdBuffer_mux0000_1_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U2_iEnableShift_173,
      I1 => DataIn_1_IBUF_31,
      I2 => U1_U2_iTxdBuffer(2),
      O => U1_U2_iTxdBuffer_mux0000(1)
    );
  U1_U2_iTxdBuffer_mux0000_0_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => U1_U2_iEnableShift_173,
      I1 => DataIn_0_IBUF_30,
      I2 => U1_U2_iTxdBuffer(1),
      O => U1_U2_iTxdBuffer_mux0000(0)
    );
  U1_U2_Mcount_iNoBitsSent_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U1_U2_iNoBitsSent(2),
      I1 => U1_U2_iNoBitsSent(1),
      I2 => U1_U2_iNoBitsSent(0),
      O => U1_U2_Result_2_1
    );
  U1_U2_Mcount_iClockDiv_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U1_U2_iClockDiv(2),
      I1 => U1_U2_iClockDiv(1),
      I2 => U1_U2_iClockDiv(0),
      O => U1_U2_Result(2)
    );
  U1_U1_Mcount_iNoBitsReceived_xor_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => U1_U1_iNoBitsReceived(2),
      I1 => U1_U1_iNoBitsReceived(1),
      I2 => U1_U1_iNoBitsReceived(0),
      O => U1_U1_Result(2)
    );
  U1_U2_Mcount_iNoBitsSent_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U1_U2_iNoBitsSent(3),
      I1 => U1_U2_iNoBitsSent(1),
      I2 => U1_U2_iNoBitsSent(0),
      I3 => U1_U2_iNoBitsSent(2),
      O => U1_U2_Result_3_1
    );
  U1_U2_Mcount_iClockDiv_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U1_U2_iClockDiv(3),
      I1 => U1_U2_iClockDiv(1),
      I2 => U1_U2_iClockDiv(0),
      I3 => U1_U2_iClockDiv(2),
      O => U1_U2_Result(3)
    );
  U1_U1_Mcount_iNoBitsReceived_xor_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U1_U1_iNoBitsReceived(3),
      I1 => U1_U1_iNoBitsReceived(1),
      I2 => U1_U1_iNoBitsReceived(0),
      I3 => U1_U1_iNoBitsReceived(2),
      O => U1_U1_Result(3)
    );
  U1_U1_iRxd1_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Reset_IBUF_63,
      I1 => U1_U1_presState_FSM_FFd1_148,
      O => U1_U1_iRxd1_or0000
    );
  U1_U2_iClock1xEnable_and00001 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Send_IBUF_92,
      I1 => U1_U2_iSend_182,
      I2 => U1_U2_iClock1xEnable_163,
      O => U1_U2_iClock1xEnable_and0000
    );
  U1_U1_iClockDiv_not0001 : LUT4
    generic map(
      INIT => X"FABA"
    )
    port map (
      I0 => U1_U1_iRxd1_or0000,
      I1 => U1_U1_iRxd2_139,
      I2 => U1_U1_iClock1xEnable_102,
      I3 => U1_U1_iRxd1_137,
      O => U1_U1_iClockDiv_not0001_114
    );
  U5_Mrom_seg21 : LUT4
    generic map(
      INIT => X"454C"
    )
    port map (
      I0 => U1_U1_iDataOut2(7),
      I1 => U1_U1_iDataOut2(4),
      I2 => U1_U1_iDataOut2(5),
      I3 => U1_U1_iDataOut2(6),
      O => U5_Mrom_seg2
    );
  U3_Mrom_seg21 : LUT4
    generic map(
      INIT => X"454C"
    )
    port map (
      I0 => U1_U1_iDataOut1(7),
      I1 => U1_U1_iDataOut1(4),
      I2 => U1_U1_iDataOut1(5),
      I3 => U1_U1_iDataOut1(6),
      O => U3_Mrom_seg2
    );
  U5_Mrom_seg41 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => U1_U1_iDataOut2(5),
      I1 => U1_U1_iDataOut2(7),
      I2 => U1_U1_iDataOut2(6),
      I3 => U1_U1_iDataOut2(4),
      O => U5_Mrom_seg4
    );
  U3_Mrom_seg41 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => U1_U1_iDataOut1(5),
      I1 => U1_U1_iDataOut1(7),
      I2 => U1_U1_iDataOut1(6),
      I3 => U1_U1_iDataOut1(4),
      O => U3_Mrom_seg4
    );
  U5_Mrom_seg51 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => U1_U1_iDataOut2(4),
      I1 => U1_U1_iDataOut2(6),
      I2 => U1_U1_iDataOut2(5),
      I3 => U1_U1_iDataOut2(7),
      O => U5_Mrom_seg5
    );
  U5_Mrom_seg111 : LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      I0 => U1_U1_iDataOut2(5),
      I1 => U1_U1_iDataOut2(7),
      I2 => U1_U1_iDataOut2(4),
      I3 => U1_U1_iDataOut2(6),
      O => U5_Mrom_seg1
    );
  U5_Mrom_seg11 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => U1_U1_iDataOut2(5),
      I1 => U1_U1_iDataOut2(6),
      I2 => U1_U1_iDataOut2(7),
      I3 => U1_U1_iDataOut2(4),
      O => U5_Mrom_seg
    );
  U3_Mrom_seg51 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => U1_U1_iDataOut1(4),
      I1 => U1_U1_iDataOut1(6),
      I2 => U1_U1_iDataOut1(5),
      I3 => U1_U1_iDataOut1(7),
      O => U3_Mrom_seg5
    );
  U3_Mrom_seg111 : LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      I0 => U1_U1_iDataOut1(5),
      I1 => U1_U1_iDataOut1(7),
      I2 => U1_U1_iDataOut1(4),
      I3 => U1_U1_iDataOut1(6),
      O => U3_Mrom_seg1
    );
  U3_Mrom_seg11 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => U1_U1_iDataOut1(5),
      I1 => U1_U1_iDataOut1(6),
      I2 => U1_U1_iDataOut1(7),
      I3 => U1_U1_iDataOut1(4),
      O => U3_Mrom_seg
    );
  U5_Mrom_seg31 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => U1_U1_iDataOut2(5),
      I1 => U1_U1_iDataOut2(7),
      I2 => U1_U1_iDataOut2(4),
      I3 => U1_U1_iDataOut2(6),
      O => U5_Mrom_seg3
    );
  U3_Mrom_seg31 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => U1_U1_iDataOut1(5),
      I1 => U1_U1_iDataOut1(7),
      I2 => U1_U1_iDataOut1(4),
      I3 => U1_U1_iDataOut1(6),
      O => U3_Mrom_seg3
    );
  U5_Mrom_seg61 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => U1_U1_iDataOut2(4),
      I1 => U1_U1_iDataOut2(5),
      I2 => U1_U1_iDataOut2(6),
      I3 => U1_U1_iDataOut2(7),
      O => U5_Mrom_seg6
    );
  U3_Mrom_seg61 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => U1_U1_iDataOut1(4),
      I1 => U1_U1_iDataOut1(5),
      I2 => U1_U1_iDataOut1(6),
      I3 => U1_U1_iDataOut1(7),
      O => U3_Mrom_seg6
    );
  U4_Mrom_seg21 : LUT4
    generic map(
      INIT => X"454C"
    )
    port map (
      I0 => U1_U1_iDataOut2(3),
      I1 => U1_U1_iDataOut2(0),
      I2 => U1_U1_iDataOut2(1),
      I3 => U1_U1_iDataOut2(2),
      O => U4_Mrom_seg2
    );
  U2_Mrom_seg21 : LUT4
    generic map(
      INIT => X"454C"
    )
    port map (
      I0 => U1_U1_iDataOut1(3),
      I1 => U1_U1_iDataOut1(0),
      I2 => U1_U1_iDataOut1(1),
      I3 => U1_U1_iDataOut1(2),
      O => U2_Mrom_seg2
    );
  U4_Mrom_seg41 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => U1_U1_iDataOut2(1),
      I1 => U1_U1_iDataOut2(3),
      I2 => U1_U1_iDataOut2(2),
      I3 => U1_U1_iDataOut2(0),
      O => U4_Mrom_seg4
    );
  U2_Mrom_seg41 : LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      I0 => U1_U1_iDataOut1(1),
      I1 => U1_U1_iDataOut1(3),
      I2 => U1_U1_iDataOut1(2),
      I3 => U1_U1_iDataOut1(0),
      O => U2_Mrom_seg4
    );
  U4_Mrom_seg51 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => U1_U1_iDataOut2(0),
      I1 => U1_U1_iDataOut2(2),
      I2 => U1_U1_iDataOut2(1),
      I3 => U1_U1_iDataOut2(3),
      O => U4_Mrom_seg5
    );
  U4_Mrom_seg111 : LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      I0 => U1_U1_iDataOut2(1),
      I1 => U1_U1_iDataOut2(3),
      I2 => U1_U1_iDataOut2(0),
      I3 => U1_U1_iDataOut2(2),
      O => U4_Mrom_seg1
    );
  U4_Mrom_seg11 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => U1_U1_iDataOut2(1),
      I1 => U1_U1_iDataOut2(2),
      I2 => U1_U1_iDataOut2(3),
      I3 => U1_U1_iDataOut2(0),
      O => U4_Mrom_seg
    );
  U2_Mrom_seg51 : LUT4
    generic map(
      INIT => X"E448"
    )
    port map (
      I0 => U1_U1_iDataOut1(0),
      I1 => U1_U1_iDataOut1(2),
      I2 => U1_U1_iDataOut1(1),
      I3 => U1_U1_iDataOut1(3),
      O => U2_Mrom_seg5
    );
  U2_Mrom_seg111 : LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      I0 => U1_U1_iDataOut1(1),
      I1 => U1_U1_iDataOut1(3),
      I2 => U1_U1_iDataOut1(0),
      I3 => U1_U1_iDataOut1(2),
      O => U2_Mrom_seg1
    );
  U2_Mrom_seg11 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => U1_U1_iDataOut1(1),
      I1 => U1_U1_iDataOut1(2),
      I2 => U1_U1_iDataOut1(3),
      I3 => U1_U1_iDataOut1(0),
      O => U2_Mrom_seg
    );
  U4_Mrom_seg31 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => U1_U1_iDataOut2(1),
      I1 => U1_U1_iDataOut2(3),
      I2 => U1_U1_iDataOut2(0),
      I3 => U1_U1_iDataOut2(2),
      O => U4_Mrom_seg3
    );
  U2_Mrom_seg31 : LUT4
    generic map(
      INIT => X"A118"
    )
    port map (
      I0 => U1_U1_iDataOut1(1),
      I1 => U1_U1_iDataOut1(3),
      I2 => U1_U1_iDataOut1(0),
      I3 => U1_U1_iDataOut1(2),
      O => U2_Mrom_seg3
    );
  U4_Mrom_seg61 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => U1_U1_iDataOut2(0),
      I1 => U1_U1_iDataOut2(1),
      I2 => U1_U1_iDataOut2(2),
      I3 => U1_U1_iDataOut2(3),
      O => U4_Mrom_seg6
    );
  U2_Mrom_seg61 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => U1_U1_iDataOut1(0),
      I1 => U1_U1_iDataOut1(1),
      I2 => U1_U1_iDataOut1(2),
      I3 => U1_U1_iDataOut1(3),
      O => U2_Mrom_seg6
    );
  U1_U2_presState_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => N56,
      I1 => U1_U2_presState_FSM_FFd2_204,
      I2 => U1_U2_presState_FSM_FFd1_202,
      O => U1_U2_presState_FSM_FFd1_In
    );
  U1_U1_iClockDiv_mux0000_2_1 : LUT4
    generic map(
      INIT => X"BEFF"
    )
    port map (
      I0 => U1_U1_iClock1xEnable_and0000,
      I1 => U1_U1_iClockDiv(0),
      I2 => U1_U1_iClockDiv(1),
      I3 => U1_U1_iClock1xEnable_102,
      O => U1_U1_iClockDiv_mux0000(2)
    );
  U1_U2_iSend_or00001 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Reset_IBUF_63,
      I1 => U1_U2_presState_FSM_FFd1_202,
      O => U1_U2_iSend_or0000
    );
  U1_U1_iEnableDataOut : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U1_U1_presState_FSM_FFd2_149,
      I1 => U1_U1_presState_FSM_FFd1_148,
      I2 => U1_U1_iNoBitsReceived(3),
      I3 => N57,
      O => U1_U1_iEnableDataOut_131
    );
  U1_U1_iClock1xEnable_and00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => U1_U1_iRxd1_137,
      I1 => U1_U1_iRxd2_139,
      O => U1_U1_iClock1xEnable_and0000
    );
  U1_U1_iClockDiv_mux0000_1_1 : LUT4
    generic map(
      INIT => X"2888"
    )
    port map (
      I0 => U1_U1_iClock1x_not0001,
      I1 => U1_U1_iClockDiv(2),
      I2 => U1_U1_iClockDiv(0),
      I3 => U1_U1_iClockDiv(1),
      O => U1_U1_iClockDiv_mux0000(1)
    );
  iCount9_or000010 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => iCount9(2),
      I1 => iCount9(7),
      I2 => iCount9(6),
      I3 => iCount9(1),
      O => iCount9_or000010_307
    );
  Send_IBUF : IBUF
    port map (
      I => Send,
      O => Send_IBUF_92
    );
  Reset_IBUF : IBUF
    port map (
      I => Reset,
      O => Reset_IBUF_63
    );
  Rxd_IBUF : IBUF
    port map (
      I => Rxd,
      O => Rxd_IBUF_90
    );
  DataIn_7_IBUF : IBUF
    port map (
      I => DataIn(7),
      O => DataIn_7_IBUF_37
    );
  DataIn_6_IBUF : IBUF
    port map (
      I => DataIn(6),
      O => DataIn_6_IBUF_36
    );
  DataIn_5_IBUF : IBUF
    port map (
      I => DataIn(5),
      O => DataIn_5_IBUF_35
    );
  DataIn_4_IBUF : IBUF
    port map (
      I => DataIn(4),
      O => DataIn_4_IBUF_34
    );
  DataIn_3_IBUF : IBUF
    port map (
      I => DataIn(3),
      O => DataIn_3_IBUF_33
    );
  DataIn_2_IBUF : IBUF
    port map (
      I => DataIn(2),
      O => DataIn_2_IBUF_32
    );
  DataIn_1_IBUF : IBUF
    port map (
      I => DataIn(1),
      O => DataIn_1_IBUF_31
    );
  DataIn_0_IBUF : IBUF
    port map (
      I => DataIn(0),
      O => DataIn_0_IBUF_30
    );
  Ca_OBUF : OBUF
    port map (
      I => Ca_OBUF_9,
      O => Ca
    );
  Cb_OBUF : OBUF
    port map (
      I => Cb_OBUF_11,
      O => Cb
    );
  Cc_OBUF : OBUF
    port map (
      I => Cc_OBUF_13,
      O => Cc
    );
  Cd_OBUF : OBUF
    port map (
      I => Cd_OBUF_15,
      O => Cd
    );
  Ce_OBUF : OBUF
    port map (
      I => Ce_OBUF_17,
      O => Ce
    );
  Cf_OBUF : OBUF
    port map (
      I => Cf_OBUF_19,
      O => Cf
    );
  Cg_OBUF : OBUF
    port map (
      I => Cg_OBUF_21,
      O => Cg
    );
  Txd_OBUF : OBUF
    port map (
      I => U1_U2_Txd_159,
      O => Txd
    );
  An_3_OBUF : OBUF
    port map (
      I => An_3_OBUF_7,
      O => An(3)
    );
  An_2_OBUF : OBUF
    port map (
      I => An_2_OBUF_6,
      O => An(2)
    );
  An_1_OBUF : OBUF
    port map (
      I => An_1_OBUF_5,
      O => An(1)
    );
  An_0_OBUF : OBUF
    port map (
      I => An_0_OBUF_4,
      O => An(0)
    );
  U6_Mcount_iCount16_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(1),
      O => U6_Mcount_iCount16_cy_1_rt_248
    );
  U6_Mcount_iCount16_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(2),
      O => U6_Mcount_iCount16_cy_2_rt_250
    );
  U6_Mcount_iCount16_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(3),
      O => U6_Mcount_iCount16_cy_3_rt_252
    );
  U6_Mcount_iCount16_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(4),
      O => U6_Mcount_iCount16_cy_4_rt_254
    );
  U6_Mcount_iCount16_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(5),
      O => U6_Mcount_iCount16_cy_5_rt_256
    );
  U6_Mcount_iCount16_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(6),
      O => U6_Mcount_iCount16_cy_6_rt_258
    );
  U6_Mcount_iCount16_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(7),
      O => U6_Mcount_iCount16_cy_7_rt_260
    );
  U6_Mcount_iCount16_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(8),
      O => U6_Mcount_iCount16_cy_8_rt_262
    );
  U6_Mcount_iCount16_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(9),
      O => U6_Mcount_iCount16_cy_9_rt_264
    );
  U6_Mcount_iCount16_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(10),
      O => U6_Mcount_iCount16_cy_10_rt_238
    );
  U6_Mcount_iCount16_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(11),
      O => U6_Mcount_iCount16_cy_11_rt_240
    );
  U6_Mcount_iCount16_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(12),
      O => U6_Mcount_iCount16_cy_12_rt_242
    );
  U6_Mcount_iCount16_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(13),
      O => U6_Mcount_iCount16_cy_13_rt_244
    );
  U6_Mcount_iCount16_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(14),
      O => U6_Mcount_iCount16_cy_14_rt_246
    );
  Mcount_iCount9_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => iCount9(1),
      O => Mcount_iCount9_cy_1_rt_40
    );
  Mcount_iCount9_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => iCount9(2),
      O => Mcount_iCount9_cy_2_rt_42
    );
  Mcount_iCount9_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => iCount9(3),
      O => Mcount_iCount9_cy_3_rt_44
    );
  Mcount_iCount9_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => iCount9(4),
      O => Mcount_iCount9_cy_4_rt_46
    );
  Mcount_iCount9_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => iCount9(5),
      O => Mcount_iCount9_cy_5_rt_48
    );
  Mcount_iCount9_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => iCount9(6),
      O => Mcount_iCount9_cy_6_rt_50
    );
  Mcount_iCount9_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => iCount9(7),
      O => Mcount_iCount9_cy_7_rt_52
    );
  U6_Mcount_iCount16_xor_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U6_iCount16(15),
      O => U6_Mcount_iCount16_xor_15_rt_266
    );
  Mcount_iCount9_xor_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => iCount9(8),
      O => Mcount_iCount9_xor_8_rt_54
    );
  U1_U1_iEnableDataOut_inv1 : LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => U1_U1_iNoBitsReceived(3),
      I1 => U1_U1_presState_FSM_FFd2_149,
      I2 => U1_U1_presState_FSM_FFd1_148,
      I3 => N50,
      O => U1_U1_iEnableDataOut_inv
    );
  U1_U1_iClockDiv_mux0000_1_11 : LUT3
    generic map(
      INIT => X"C4"
    )
    port map (
      I0 => U1_U1_iRxd2_139,
      I1 => U1_U1_iClock1xEnable_102,
      I2 => U1_U1_iRxd1_137,
      O => U1_U1_iClock1x_not0001
    );
  iCount9_or000040 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => Reset_IBUF_63,
      I1 => iCount9(0),
      I2 => iCount9_or000010_307,
      I3 => N52,
      O => iCount9_or0000
    );
  U1_U1_iClockDiv_mux0000_3_1 : LUT4
    generic map(
      INIT => X"5010"
    )
    port map (
      I0 => U1_U1_iClockDiv(0),
      I1 => U1_U1_iRxd2_139,
      I2 => U1_U1_iClock1xEnable_102,
      I3 => U1_U1_iRxd1_137,
      O => U1_U1_iClockDiv_mux0000(3)
    );
  U1_U2_iClock1x_not00011 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Reset_IBUF_63,
      I1 => U1_U2_presState_FSM_FFd1_202,
      I2 => U1_U2_iClock1xEnable_163,
      O => U1_U2_iClock1x_not0001
    );
  U1_U1_iClockDiv_mux0000_0_Q : LUT4
    generic map(
      INIT => X"BAFF"
    )
    port map (
      I0 => N54,
      I1 => U1_U1_iRxd1_137,
      I2 => U1_U1_iRxd2_139,
      I3 => U1_U1_iClock1xEnable_102,
      O => U1_U1_iClockDiv_mux0000(0)
    );
  U1_U2_iClockDiv_and00001 : LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => U1_U2_iClock1xEnable_163,
      I1 => Reset_IBUF_63,
      I2 => U1_U2_presState_FSM_FFd1_202,
      O => U1_U2_iClockDiv_and0000
    );
  U1_U2_iEnableShift_mux00001 : LUT4
    generic map(
      INIT => X"FBFF"
    )
    port map (
      I0 => U1_U2_iNoBitsSent(2),
      I1 => U1_U2_iNoBitsSent(3),
      I2 => U1_U2_iNoBitsSent(1),
      I3 => U1_U2_iNoBitsSent(0),
      O => U1_U2_iEnableShift_mux0000
    );
  U1_U2_iTxdBuffer_and00001 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => U1_U2_iClock1xEnable_163,
      I1 => U1_U2_iEnableTxdBuffer_175,
      I2 => U1_U2_iEnableShift_173,
      O => U1_U2_iTxdBuffer_and0000
    );
  U1_U2_iSend_or0000_inv1 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Reset_IBUF_63,
      I1 => U1_U2_presState_FSM_FFd1_202,
      O => U1_U2_iSend_or0000_inv
    );
  U1_U1_iClock1x_BUFG : BUFG
    port map (
      I => U1_U1_iClock1x1,
      O => U1_U1_iClock1x_100
    );
  SystemClock_BUFGP : BUFGP
    port map (
      I => SystemClock,
      O => SystemClock_BUFGP_94
    );
  U6_Mcount_iCount16_lut_0_INV_0 : INV
    port map (
      I => U6_iCount16(0),
      O => U6_Mcount_iCount16_lut(0)
    );
  Mcount_iCount9_lut_0_INV_0 : INV
    port map (
      I => iCount9(0),
      O => Mcount_iCount9_lut(0)
    );
  U1_U2_iClock1xEnable_inv1_INV_0 : INV
    port map (
      I => U1_U2_iClock1xEnable_163,
      O => U1_U2_iClock1xEnable_inv
    );
  U1_U1_iClock1xEnable_inv1_INV_0 : INV
    port map (
      I => U1_U1_iClock1xEnable_102,
      O => U1_U1_iClock1xEnable_inv
    );
  U1_U2_Mcount_iNoBitsSent_xor_0_11_INV_0 : INV
    port map (
      I => U1_U2_iNoBitsSent(0),
      O => U1_U2_Result_0_1
    );
  U1_U2_Mcount_iClockDiv_xor_0_11_INV_0 : INV
    port map (
      I => U1_U2_iClockDiv(0),
      O => U1_U2_Result(0)
    );
  U1_U1_Mcount_iNoBitsReceived_xor_0_11_INV_0 : INV
    port map (
      I => U1_U1_iNoBitsReceived(0),
      O => U1_U1_Result(0)
    );
  U1_U2_presState_cmp_eq00001 : LUT4_D
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => U1_U2_iNoBitsSent(3),
      I1 => U1_U2_iNoBitsSent(1),
      I2 => U1_U2_iNoBitsSent(0),
      I3 => U1_U2_iNoBitsSent(2),
      LO => N56,
      O => U1_U2_presState_cmp_eq0000
    );
  U1_U1_iEnableDataOut_SW0 : LUT3_D
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => U1_U1_iNoBitsReceived(2),
      I1 => U1_U1_iNoBitsReceived(1),
      I2 => U1_U1_iNoBitsReceived(0),
      LO => N57,
      O => N50
    );
  iCount9_or000040_SW0 : LUT4_L
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => iCount9(4),
      I1 => iCount9(5),
      I2 => iCount9(3),
      I3 => iCount9(8),
      LO => N52
    );
  U1_U1_iClockDiv_mux0000_0_SW1 : LUT4_L
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => U1_U1_iClockDiv(3),
      I1 => U1_U1_iClockDiv(0),
      I2 => U1_U1_iClockDiv(1),
      I3 => U1_U1_iClockDiv(2),
      LO => N54
    );

end Structure;

