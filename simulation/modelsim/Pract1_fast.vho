-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "02/04/2024 12:13:20"

-- 
-- Device: Altera EP2C20AF484A7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Pract1 IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	KEY3 : IN std_logic;
	e_p : IN std_logic_vector(7 DOWNTO 0);
	salida_serie : OUT std_logic
	);
END Pract1;

-- Design Ports Information
-- salida_serie	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY3	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- e_p[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Pract1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_KEY3 : std_logic;
SIGNAL ww_e_p : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_salida_serie : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i4|contador8[2]~20_combout\ : std_logic;
SIGNAL \i4|contador8[5]~26_combout\ : std_logic;
SIGNAL \i4|contador8[11]~39\ : std_logic;
SIGNAL \i4|contador8[12]~40_combout\ : std_logic;
SIGNAL \i4|contador8[12]~41\ : std_logic;
SIGNAL \i4|contador8[13]~42_combout\ : std_logic;
SIGNAL \i4|contador8[13]~43\ : std_logic;
SIGNAL \i4|contador8[14]~44_combout\ : std_logic;
SIGNAL \i5|contador1[4]~24_combout\ : std_logic;
SIGNAL \i5|contador1[5]~26_combout\ : std_logic;
SIGNAL \i5|contador1[7]~30_combout\ : std_logic;
SIGNAL \i2|estado_act.Reposo~regout\ : std_logic;
SIGNAL \i2|estado_act.Impar~regout\ : std_logic;
SIGNAL \i4|Equal0~3_combout\ : std_logic;
SIGNAL \i5|Equal0~1_combout\ : std_logic;
SIGNAL \i2|estado_act.Reposo~0_combout\ : std_logic;
SIGNAL \i2|Selector2~0_combout\ : std_logic;
SIGNAL \i1|registro~7_combout\ : std_logic;
SIGNAL \i1|registro~8_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Reposo~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \reset_n~combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Reposo~3_combout\ : std_logic;
SIGNAL \KEY3~combout\ : std_logic;
SIGNAL \UnidadControl|i1|estado_act.Esp1~0_combout\ : std_logic;
SIGNAL \UnidadControl|i1|estado_act.Esp1~regout\ : std_logic;
SIGNAL \UnidadControl|i1|Selector1~0_combout\ : std_logic;
SIGNAL \UnidadControl|i1|estado_act.Pulso~regout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Reposo~5_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Reposo~0_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Reposo~_emulated_regout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Reposo~2_combout\ : std_logic;
SIGNAL \UnidadControl|Selector7~0_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Start2~0_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Fin~regout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Start1~1_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Start1~0_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Start1~_emulated_regout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Start1~2_combout\ : std_logic;
SIGNAL \UnidadControl|Selector2~0_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Start2~regout\ : std_logic;
SIGNAL \i4|contador8[0]~15_combout\ : std_logic;
SIGNAL \i4|contador8[5]~17_combout\ : std_logic;
SIGNAL \i4|contador8[0]~16\ : std_logic;
SIGNAL \i4|contador8[1]~18_combout\ : std_logic;
SIGNAL \i4|contador8[1]~19\ : std_logic;
SIGNAL \i4|contador8[2]~21\ : std_logic;
SIGNAL \i4|contador8[3]~22_combout\ : std_logic;
SIGNAL \i4|Equal0~0_combout\ : std_logic;
SIGNAL \i4|contador8[3]~23\ : std_logic;
SIGNAL \i4|contador8[4]~25\ : std_logic;
SIGNAL \i4|contador8[5]~27\ : std_logic;
SIGNAL \i4|contador8[6]~28_combout\ : std_logic;
SIGNAL \i4|contador8[6]~29\ : std_logic;
SIGNAL \i4|contador8[7]~30_combout\ : std_logic;
SIGNAL \i4|contador8[4]~24_combout\ : std_logic;
SIGNAL \i4|Equal0~1_combout\ : std_logic;
SIGNAL \i4|contador8[7]~31\ : std_logic;
SIGNAL \i4|contador8[8]~32_combout\ : std_logic;
SIGNAL \i4|contador8[8]~33\ : std_logic;
SIGNAL \i4|contador8[9]~35\ : std_logic;
SIGNAL \i4|contador8[10]~36_combout\ : std_logic;
SIGNAL \i4|contador8[10]~37\ : std_logic;
SIGNAL \i4|contador8[11]~38_combout\ : std_logic;
SIGNAL \i4|contador8[9]~34_combout\ : std_logic;
SIGNAL \i4|Equal0~2_combout\ : std_logic;
SIGNAL \i4|Equal0~4_combout\ : std_logic;
SIGNAL \i5|contador1[0]~15_combout\ : std_logic;
SIGNAL \i5|contador1[3]~17_combout\ : std_logic;
SIGNAL \i5|contador1[0]~16\ : std_logic;
SIGNAL \i5|contador1[1]~18_combout\ : std_logic;
SIGNAL \i5|contador1[1]~19\ : std_logic;
SIGNAL \i5|contador1[2]~21\ : std_logic;
SIGNAL \i5|contador1[3]~22_combout\ : std_logic;
SIGNAL \i5|contador1[3]~23\ : std_logic;
SIGNAL \i5|contador1[4]~25\ : std_logic;
SIGNAL \i5|contador1[5]~27\ : std_logic;
SIGNAL \i5|contador1[6]~28_combout\ : std_logic;
SIGNAL \i5|contador1[6]~29\ : std_logic;
SIGNAL \i5|contador1[7]~31\ : std_logic;
SIGNAL \i5|contador1[8]~32_combout\ : std_logic;
SIGNAL \i5|contador1[8]~33\ : std_logic;
SIGNAL \i5|contador1[9]~34_combout\ : std_logic;
SIGNAL \i5|contador1[9]~35\ : std_logic;
SIGNAL \i5|contador1[10]~36_combout\ : std_logic;
SIGNAL \i5|contador1[10]~37\ : std_logic;
SIGNAL \i5|contador1[11]~39\ : std_logic;
SIGNAL \i5|contador1[12]~40_combout\ : std_logic;
SIGNAL \i5|contador1[12]~41\ : std_logic;
SIGNAL \i5|contador1[13]~42_combout\ : std_logic;
SIGNAL \i5|contador1[13]~43\ : std_logic;
SIGNAL \i5|contador1[14]~44_combout\ : std_logic;
SIGNAL \i5|Equal0~3_combout\ : std_logic;
SIGNAL \i5|contador1[11]~38_combout\ : std_logic;
SIGNAL \i5|Equal0~2_combout\ : std_logic;
SIGNAL \i5|contador1[2]~20_combout\ : std_logic;
SIGNAL \i5|Equal0~0_combout\ : std_logic;
SIGNAL \i5|Equal0~4_combout\ : std_logic;
SIGNAL \UnidadControl|Selector4~0_combout\ : std_logic;
SIGNAL \UnidadControl|Selector4~1_combout\ : std_logic;
SIGNAL \UnidadControl|Selector4~2_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Mensaje~regout\ : std_logic;
SIGNAL \UnidadControl|Selector5~0_combout\ : std_logic;
SIGNAL \UnidadControl|Selector5~1_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.Mensaje2~regout\ : std_logic;
SIGNAL \i5|fin_cnt1~combout\ : std_logic;
SIGNAL \UnidadControl|Selector6~0_combout\ : std_logic;
SIGNAL \UnidadControl|Selector6~1_combout\ : std_logic;
SIGNAL \UnidadControl|estado_act.E_Paridad~regout\ : std_logic;
SIGNAL \i1|registro~6_combout\ : std_logic;
SIGNAL \i1|registro[0]~1_combout\ : std_logic;
SIGNAL \i1|registro~5_combout\ : std_logic;
SIGNAL \i1|registro~4_combout\ : std_logic;
SIGNAL \i1|registro~3_combout\ : std_logic;
SIGNAL \i1|registro~2_combout\ : std_logic;
SIGNAL \i1|registro~0_combout\ : std_logic;
SIGNAL \i2|Selector1~0_combout\ : std_logic;
SIGNAL \i2|Selector1~1_combout\ : std_logic;
SIGNAL \i2|VarEstados~0_combout\ : std_logic;
SIGNAL \i2|estado_act.Par~regout\ : std_logic;
SIGNAL \i3|Mux0~0_combout\ : std_logic;
SIGNAL \UnidadControl|WideOr2~0_combout\ : std_logic;
SIGNAL \i3|Mux0~1_combout\ : std_logic;
SIGNAL \i3|Mux0~2_combout\ : std_logic;
SIGNAL \i1|registro\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i4|contador8\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \i5|contador1\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \e_p~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_KEY3 <= KEY3;
ww_e_p <= e_p;
salida_serie <= ww_salida_serie;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_reset_n~combout\ <= NOT \reset_n~combout\;

-- Location: LCFF_X33_Y1_N7
\i4|contador8[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[2]~20_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(2));

-- Location: LCFF_X33_Y1_N13
\i4|contador8[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[5]~26_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(5));

-- Location: LCFF_X33_Y1_N29
\i4|contador8[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[13]~42_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(13));

-- Location: LCFF_X33_Y1_N27
\i4|contador8[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[12]~40_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(12));

-- Location: LCFF_X33_Y1_N31
\i4|contador8[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[14]~44_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(14));

-- Location: LCFF_X29_Y1_N11
\i5|contador1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[4]~24_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(4));

-- Location: LCFF_X29_Y1_N17
\i5|contador1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[7]~30_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(7));

-- Location: LCFF_X29_Y1_N13
\i5|contador1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[5]~26_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(5));

-- Location: LCCOMB_X33_Y1_N6
\i4|contador8[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[2]~20_combout\ = (\i4|contador8\(2) & (\i4|contador8[1]~19\ $ (GND))) # (!\i4|contador8\(2) & (!\i4|contador8[1]~19\ & VCC))
-- \i4|contador8[2]~21\ = CARRY((\i4|contador8\(2) & !\i4|contador8[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador8\(2),
	datad => VCC,
	cin => \i4|contador8[1]~19\,
	combout => \i4|contador8[2]~20_combout\,
	cout => \i4|contador8[2]~21\);

-- Location: LCCOMB_X33_Y1_N12
\i4|contador8[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[5]~26_combout\ = (\i4|contador8\(5) & (!\i4|contador8[4]~25\)) # (!\i4|contador8\(5) & ((\i4|contador8[4]~25\) # (GND)))
-- \i4|contador8[5]~27\ = CARRY((!\i4|contador8[4]~25\) # (!\i4|contador8\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador8\(5),
	datad => VCC,
	cin => \i4|contador8[4]~25\,
	combout => \i4|contador8[5]~26_combout\,
	cout => \i4|contador8[5]~27\);

-- Location: LCCOMB_X33_Y1_N24
\i4|contador8[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[11]~38_combout\ = (\i4|contador8\(11) & (!\i4|contador8[10]~37\)) # (!\i4|contador8\(11) & ((\i4|contador8[10]~37\) # (GND)))
-- \i4|contador8[11]~39\ = CARRY((!\i4|contador8[10]~37\) # (!\i4|contador8\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador8\(11),
	datad => VCC,
	cin => \i4|contador8[10]~37\,
	combout => \i4|contador8[11]~38_combout\,
	cout => \i4|contador8[11]~39\);

-- Location: LCCOMB_X33_Y1_N26
\i4|contador8[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[12]~40_combout\ = (\i4|contador8\(12) & (\i4|contador8[11]~39\ $ (GND))) # (!\i4|contador8\(12) & (!\i4|contador8[11]~39\ & VCC))
-- \i4|contador8[12]~41\ = CARRY((\i4|contador8\(12) & !\i4|contador8[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador8\(12),
	datad => VCC,
	cin => \i4|contador8[11]~39\,
	combout => \i4|contador8[12]~40_combout\,
	cout => \i4|contador8[12]~41\);

-- Location: LCCOMB_X33_Y1_N28
\i4|contador8[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[13]~42_combout\ = (\i4|contador8\(13) & (!\i4|contador8[12]~41\)) # (!\i4|contador8\(13) & ((\i4|contador8[12]~41\) # (GND)))
-- \i4|contador8[13]~43\ = CARRY((!\i4|contador8[12]~41\) # (!\i4|contador8\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador8\(13),
	datad => VCC,
	cin => \i4|contador8[12]~41\,
	combout => \i4|contador8[13]~42_combout\,
	cout => \i4|contador8[13]~43\);

-- Location: LCCOMB_X33_Y1_N30
\i4|contador8[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[14]~44_combout\ = \i4|contador8[13]~43\ $ (!\i4|contador8\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i4|contador8\(14),
	cin => \i4|contador8[13]~43\,
	combout => \i4|contador8[14]~44_combout\);

-- Location: LCCOMB_X29_Y1_N10
\i5|contador1[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[4]~24_combout\ = (\i5|contador1\(4) & (\i5|contador1[3]~23\ $ (GND))) # (!\i5|contador1\(4) & (!\i5|contador1[3]~23\ & VCC))
-- \i5|contador1[4]~25\ = CARRY((\i5|contador1\(4) & !\i5|contador1[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador1\(4),
	datad => VCC,
	cin => \i5|contador1[3]~23\,
	combout => \i5|contador1[4]~24_combout\,
	cout => \i5|contador1[4]~25\);

-- Location: LCCOMB_X29_Y1_N12
\i5|contador1[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[5]~26_combout\ = (\i5|contador1\(5) & (!\i5|contador1[4]~25\)) # (!\i5|contador1\(5) & ((\i5|contador1[4]~25\) # (GND)))
-- \i5|contador1[5]~27\ = CARRY((!\i5|contador1[4]~25\) # (!\i5|contador1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador1\(5),
	datad => VCC,
	cin => \i5|contador1[4]~25\,
	combout => \i5|contador1[5]~26_combout\,
	cout => \i5|contador1[5]~27\);

-- Location: LCCOMB_X29_Y1_N16
\i5|contador1[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[7]~30_combout\ = (\i5|contador1\(7) & (!\i5|contador1[6]~29\)) # (!\i5|contador1\(7) & ((\i5|contador1[6]~29\) # (GND)))
-- \i5|contador1[7]~31\ = CARRY((!\i5|contador1[6]~29\) # (!\i5|contador1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador1\(7),
	datad => VCC,
	cin => \i5|contador1[6]~29\,
	combout => \i5|contador1[7]~30_combout\,
	cout => \i5|contador1[7]~31\);

-- Location: LCFF_X31_Y1_N21
\i1|registro[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro~7_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \UnidadControl|estado_act.E_Paridad~regout\,
	ena => \i1|registro[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(6));

-- Location: LCFF_X27_Y1_N29
\i1|registro[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro~8_combout\,
	sdata => \e_p~combout\(7),
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \UnidadControl|estado_act.E_Paridad~regout\,
	sload => \UnidadControl|estado_act.Start1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(7));

-- Location: LCFF_X31_Y1_N1
\i2|estado_act.Reposo\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|estado_act.Reposo~0_combout\,
	aclr => \i2|VarEstados~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|estado_act.Reposo~regout\);

-- Location: LCFF_X31_Y1_N11
\i2|estado_act.Impar\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|Selector2~0_combout\,
	aclr => \i2|VarEstados~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|estado_act.Impar~regout\);

-- Location: LCCOMB_X32_Y1_N20
\i4|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Equal0~3_combout\ = ((\i4|contador8\(13)) # (!\i4|contador8\(12))) # (!\i4|contador8\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador8\(14),
	datac => \i4|contador8\(12),
	datad => \i4|contador8\(13),
	combout => \i4|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y1_N12
\i5|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Equal0~1_combout\ = (\i5|contador1\(6)) # ((\i5|contador1\(7)) # ((\i5|contador1\(4)) # (!\i5|contador1\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador1\(6),
	datab => \i5|contador1\(7),
	datac => \i5|contador1\(5),
	datad => \i5|contador1\(4),
	combout => \i5|Equal0~1_combout\);

-- Location: LCCOMB_X31_Y1_N0
\i2|estado_act.Reposo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|estado_act.Reposo~0_combout\ = (\UnidadControl|estado_act.Mensaje2~regout\) # (\i2|estado_act.Reposo~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadControl|estado_act.Mensaje2~regout\,
	datac => \i2|estado_act.Reposo~regout\,
	combout => \i2|estado_act.Reposo~0_combout\);

-- Location: LCCOMB_X31_Y1_N10
\i2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Selector2~0_combout\ = (\i1|registro\(0) & ((\i2|estado_act.Impar~regout\ $ (\UnidadControl|estado_act.Mensaje2~regout\)))) # (!\i1|registro\(0) & (\i2|estado_act.Impar~regout\ & ((\i2|estado_act.Reposo~regout\) # 
-- (!\UnidadControl|estado_act.Mensaje2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|registro\(0),
	datab => \i2|estado_act.Reposo~regout\,
	datac => \i2|estado_act.Impar~regout\,
	datad => \UnidadControl|estado_act.Mensaje2~regout\,
	combout => \i2|Selector2~0_combout\);

-- Location: LCCOMB_X31_Y1_N20
\i1|registro~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro~7_combout\ = (\UnidadControl|estado_act.Start1~2_combout\ & (\e_p~combout\(6))) # (!\UnidadControl|estado_act.Start1~2_combout\ & ((\i1|registro\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e_p~combout\(6),
	datac => \i1|registro\(7),
	datad => \UnidadControl|estado_act.Start1~2_combout\,
	combout => \i1|registro~7_combout\);

-- Location: LCCOMB_X27_Y1_N28
\i1|registro~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro~8_combout\ = (\i1|registro\(7) & !\UnidadControl|estado_act.Mensaje2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i1|registro\(7),
	datad => \UnidadControl|estado_act.Mensaje2~regout\,
	combout => \i1|registro~8_combout\);

-- Location: LCCOMB_X32_Y1_N10
\UnidadControl|estado_act.Reposo~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|estado_act.Reposo~1_combout\ = (!\UnidadControl|estado_act.Reposo~5_combout\ & ((\UnidadControl|estado_act.Reposo~1_combout\) # (!\reset_n~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \UnidadControl|estado_act.Reposo~5_combout\,
	datad => \UnidadControl|estado_act.Reposo~1_combout\,
	combout => \UnidadControl|estado_act.Reposo~1_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(2),
	combout => \e_p~combout\(2));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(3),
	combout => \e_p~combout\(3));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(6),
	combout => \e_p~combout\(6));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(7),
	combout => \e_p~combout\(7));

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset_n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset_n,
	combout => \reset_n~combout\);

-- Location: LCCOMB_X30_Y1_N20
\UnidadControl|estado_act.Reposo~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|estado_act.Reposo~3_combout\ = \UnidadControl|estado_act.Reposo~1_combout\ $ (((\UnidadControl|estado_act.Reposo~2_combout\) # ((!\i5|fin_cnt1~combout\ & \UnidadControl|estado_act.Fin~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Reposo~1_combout\,
	datab => \UnidadControl|estado_act.Reposo~2_combout\,
	datac => \i5|fin_cnt1~combout\,
	datad => \UnidadControl|estado_act.Fin~regout\,
	combout => \UnidadControl|estado_act.Reposo~3_combout\);

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY3~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY3,
	combout => \KEY3~combout\);

-- Location: LCCOMB_X32_Y1_N2
\UnidadControl|i1|estado_act.Esp1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|i1|estado_act.Esp1~0_combout\ = !\KEY3~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KEY3~combout\,
	combout => \UnidadControl|i1|estado_act.Esp1~0_combout\);

-- Location: LCFF_X32_Y1_N3
\UnidadControl|i1|estado_act.Esp1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \UnidadControl|i1|estado_act.Esp1~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UnidadControl|i1|estado_act.Esp1~regout\);

-- Location: LCCOMB_X32_Y1_N12
\UnidadControl|i1|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|i1|Selector1~0_combout\ = (!\KEY3~combout\ & !\UnidadControl|i1|estado_act.Esp1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY3~combout\,
	datad => \UnidadControl|i1|estado_act.Esp1~regout\,
	combout => \UnidadControl|i1|Selector1~0_combout\);

-- Location: LCFF_X32_Y1_N13
\UnidadControl|i1|estado_act.Pulso\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \UnidadControl|i1|Selector1~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UnidadControl|i1|estado_act.Pulso~regout\);

-- Location: LCCOMB_X32_Y1_N22
\UnidadControl|estado_act.Reposo~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|estado_act.Reposo~5_combout\ = (\reset_n~combout\ & \UnidadControl|i1|estado_act.Pulso~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datad => \UnidadControl|i1|estado_act.Pulso~regout\,
	combout => \UnidadControl|estado_act.Reposo~5_combout\);

-- Location: LCCOMB_X31_Y1_N14
\UnidadControl|estado_act.Reposo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|estado_act.Reposo~0_combout\ = (\UnidadControl|estado_act.Reposo~5_combout\) # (!\reset_n~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~combout\,
	datad => \UnidadControl|estado_act.Reposo~5_combout\,
	combout => \UnidadControl|estado_act.Reposo~0_combout\);

-- Location: LCFF_X30_Y1_N21
\UnidadControl|estado_act.Reposo~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \UnidadControl|estado_act.Reposo~3_combout\,
	aclr => \UnidadControl|estado_act.Reposo~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UnidadControl|estado_act.Reposo~_emulated_regout\);

-- Location: LCCOMB_X31_Y1_N12
\UnidadControl|estado_act.Reposo~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|estado_act.Reposo~2_combout\ = (!\UnidadControl|estado_act.Reposo~5_combout\ & ((\UnidadControl|estado_act.Reposo~1_combout\ $ (\UnidadControl|estado_act.Reposo~_emulated_regout\)) # (!\reset_n~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Reposo~1_combout\,
	datab => \reset_n~combout\,
	datac => \UnidadControl|estado_act.Reposo~_emulated_regout\,
	datad => \UnidadControl|estado_act.Reposo~5_combout\,
	combout => \UnidadControl|estado_act.Reposo~2_combout\);

-- Location: LCCOMB_X30_Y1_N8
\UnidadControl|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|Selector7~0_combout\ = (\i5|fin_cnt1~combout\ & (((\UnidadControl|estado_act.Fin~regout\)))) # (!\i5|fin_cnt1~combout\ & ((\UnidadControl|estado_act.E_Paridad~regout\) # ((\UnidadControl|estado_act.Reposo~2_combout\ & 
-- \UnidadControl|estado_act.Fin~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.E_Paridad~regout\,
	datab => \UnidadControl|estado_act.Reposo~2_combout\,
	datac => \UnidadControl|estado_act.Fin~regout\,
	datad => \i5|fin_cnt1~combout\,
	combout => \UnidadControl|Selector7~0_combout\);

-- Location: LCCOMB_X31_Y1_N4
\UnidadControl|estado_act.Start2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|estado_act.Start2~0_combout\ = (\UnidadControl|i1|estado_act.Pulso~regout\) # (!\reset_n~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~combout\,
	datac => \UnidadControl|i1|estado_act.Pulso~regout\,
	combout => \UnidadControl|estado_act.Start2~0_combout\);

-- Location: LCFF_X30_Y1_N9
\UnidadControl|estado_act.Fin\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \UnidadControl|Selector7~0_combout\,
	aclr => \UnidadControl|estado_act.Start2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UnidadControl|estado_act.Fin~regout\);

-- Location: LCCOMB_X32_Y1_N4
\UnidadControl|estado_act.Start1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|estado_act.Start1~1_combout\ = (\reset_n~combout\ & ((\UnidadControl|estado_act.Start1~1_combout\) # (\UnidadControl|estado_act.Reposo~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datac => \UnidadControl|estado_act.Start1~1_combout\,
	datad => \UnidadControl|estado_act.Reposo~5_combout\,
	combout => \UnidadControl|estado_act.Start1~1_combout\);

-- Location: LCCOMB_X32_Y1_N16
\UnidadControl|estado_act.Start1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|estado_act.Start1~0_combout\ = (\UnidadControl|estado_act.Reposo~5_combout\) # (!\reset_n~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datad => \UnidadControl|estado_act.Reposo~5_combout\,
	combout => \UnidadControl|estado_act.Start1~0_combout\);

-- Location: LCFF_X32_Y1_N19
\UnidadControl|estado_act.Start1~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \UnidadControl|estado_act.Start1~1_combout\,
	aclr => \UnidadControl|estado_act.Start1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UnidadControl|estado_act.Start1~_emulated_regout\);

-- Location: LCCOMB_X32_Y1_N18
\UnidadControl|estado_act.Start1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|estado_act.Start1~2_combout\ = (\reset_n~combout\ & ((\UnidadControl|estado_act.Reposo~5_combout\) # (\UnidadControl|estado_act.Start1~1_combout\ $ (\UnidadControl|estado_act.Start1~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~combout\,
	datab => \UnidadControl|estado_act.Start1~1_combout\,
	datac => \UnidadControl|estado_act.Start1~_emulated_regout\,
	datad => \UnidadControl|estado_act.Reposo~5_combout\,
	combout => \UnidadControl|estado_act.Start1~2_combout\);

-- Location: LCCOMB_X30_Y1_N2
\UnidadControl|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|Selector2~0_combout\ = (\UnidadControl|estado_act.Start1~2_combout\) # ((\UnidadControl|estado_act.Start2~regout\ & ((\UnidadControl|estado_act.Reposo~2_combout\) # (\i5|fin_cnt1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Reposo~2_combout\,
	datab => \UnidadControl|estado_act.Start1~2_combout\,
	datac => \UnidadControl|estado_act.Start2~regout\,
	datad => \i5|fin_cnt1~combout\,
	combout => \UnidadControl|Selector2~0_combout\);

-- Location: LCFF_X30_Y1_N3
\UnidadControl|estado_act.Start2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \UnidadControl|Selector2~0_combout\,
	aclr => \UnidadControl|estado_act.Start2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UnidadControl|estado_act.Start2~regout\);

-- Location: LCCOMB_X33_Y1_N2
\i4|contador8[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[0]~15_combout\ = \i4|contador8\(0) $ (VCC)
-- \i4|contador8[0]~16\ = CARRY(\i4|contador8\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador8\(0),
	datad => VCC,
	combout => \i4|contador8[0]~15_combout\,
	cout => \i4|contador8[0]~16\);

-- Location: LCCOMB_X32_Y1_N28
\i4|contador8[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[5]~17_combout\ = ((!\UnidadControl|estado_act.Mensaje2~regout\ & !\UnidadControl|estado_act.Mensaje~regout\)) # (!\i4|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadControl|estado_act.Mensaje2~regout\,
	datac => \UnidadControl|estado_act.Mensaje~regout\,
	datad => \i4|Equal0~4_combout\,
	combout => \i4|contador8[5]~17_combout\);

-- Location: LCFF_X33_Y1_N3
\i4|contador8[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[0]~15_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(0));

-- Location: LCCOMB_X33_Y1_N4
\i4|contador8[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[1]~18_combout\ = (\i4|contador8\(1) & (!\i4|contador8[0]~16\)) # (!\i4|contador8\(1) & ((\i4|contador8[0]~16\) # (GND)))
-- \i4|contador8[1]~19\ = CARRY((!\i4|contador8[0]~16\) # (!\i4|contador8\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador8\(1),
	datad => VCC,
	cin => \i4|contador8[0]~16\,
	combout => \i4|contador8[1]~18_combout\,
	cout => \i4|contador8[1]~19\);

-- Location: LCFF_X33_Y1_N5
\i4|contador8[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[1]~18_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(1));

-- Location: LCCOMB_X33_Y1_N8
\i4|contador8[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[3]~22_combout\ = (\i4|contador8\(3) & (!\i4|contador8[2]~21\)) # (!\i4|contador8\(3) & ((\i4|contador8[2]~21\) # (GND)))
-- \i4|contador8[3]~23\ = CARRY((!\i4|contador8[2]~21\) # (!\i4|contador8\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador8\(3),
	datad => VCC,
	cin => \i4|contador8[2]~21\,
	combout => \i4|contador8[3]~22_combout\,
	cout => \i4|contador8[3]~23\);

-- Location: LCFF_X33_Y1_N9
\i4|contador8[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[3]~22_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(3));

-- Location: LCCOMB_X33_Y1_N0
\i4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Equal0~0_combout\ = (((!\i4|contador8\(0)) # (!\i4|contador8\(1))) # (!\i4|contador8\(3))) # (!\i4|contador8\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador8\(2),
	datab => \i4|contador8\(3),
	datac => \i4|contador8\(1),
	datad => \i4|contador8\(0),
	combout => \i4|Equal0~0_combout\);

-- Location: LCCOMB_X33_Y1_N10
\i4|contador8[4]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[4]~24_combout\ = (\i4|contador8\(4) & (\i4|contador8[3]~23\ $ (GND))) # (!\i4|contador8\(4) & (!\i4|contador8[3]~23\ & VCC))
-- \i4|contador8[4]~25\ = CARRY((\i4|contador8\(4) & !\i4|contador8[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador8\(4),
	datad => VCC,
	cin => \i4|contador8[3]~23\,
	combout => \i4|contador8[4]~24_combout\,
	cout => \i4|contador8[4]~25\);

-- Location: LCCOMB_X33_Y1_N14
\i4|contador8[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[6]~28_combout\ = (\i4|contador8\(6) & (\i4|contador8[5]~27\ $ (GND))) # (!\i4|contador8\(6) & (!\i4|contador8[5]~27\ & VCC))
-- \i4|contador8[6]~29\ = CARRY((\i4|contador8\(6) & !\i4|contador8[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador8\(6),
	datad => VCC,
	cin => \i4|contador8[5]~27\,
	combout => \i4|contador8[6]~28_combout\,
	cout => \i4|contador8[6]~29\);

-- Location: LCFF_X33_Y1_N15
\i4|contador8[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[6]~28_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(6));

-- Location: LCCOMB_X33_Y1_N16
\i4|contador8[7]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[7]~30_combout\ = (\i4|contador8\(7) & (!\i4|contador8[6]~29\)) # (!\i4|contador8\(7) & ((\i4|contador8[6]~29\) # (GND)))
-- \i4|contador8[7]~31\ = CARRY((!\i4|contador8[6]~29\) # (!\i4|contador8\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador8\(7),
	datad => VCC,
	cin => \i4|contador8[6]~29\,
	combout => \i4|contador8[7]~30_combout\,
	cout => \i4|contador8[7]~31\);

-- Location: LCFF_X33_Y1_N17
\i4|contador8[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[7]~30_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(7));

-- Location: LCFF_X33_Y1_N11
\i4|contador8[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[4]~24_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(4));

-- Location: LCCOMB_X32_Y1_N24
\i4|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Equal0~1_combout\ = (\i4|contador8\(5)) # (((\i4|contador8\(7)) # (!\i4|contador8\(4))) # (!\i4|contador8\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador8\(5),
	datab => \i4|contador8\(6),
	datac => \i4|contador8\(7),
	datad => \i4|contador8\(4),
	combout => \i4|Equal0~1_combout\);

-- Location: LCCOMB_X33_Y1_N18
\i4|contador8[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[8]~32_combout\ = (\i4|contador8\(8) & (\i4|contador8[7]~31\ $ (GND))) # (!\i4|contador8\(8) & (!\i4|contador8[7]~31\ & VCC))
-- \i4|contador8[8]~33\ = CARRY((\i4|contador8\(8) & !\i4|contador8[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador8\(8),
	datad => VCC,
	cin => \i4|contador8[7]~31\,
	combout => \i4|contador8[8]~32_combout\,
	cout => \i4|contador8[8]~33\);

-- Location: LCFF_X33_Y1_N19
\i4|contador8[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[8]~32_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(8));

-- Location: LCCOMB_X33_Y1_N20
\i4|contador8[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[9]~34_combout\ = (\i4|contador8\(9) & (!\i4|contador8[8]~33\)) # (!\i4|contador8\(9) & ((\i4|contador8[8]~33\) # (GND)))
-- \i4|contador8[9]~35\ = CARRY((!\i4|contador8[8]~33\) # (!\i4|contador8\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador8\(9),
	datad => VCC,
	cin => \i4|contador8[8]~33\,
	combout => \i4|contador8[9]~34_combout\,
	cout => \i4|contador8[9]~35\);

-- Location: LCCOMB_X33_Y1_N22
\i4|contador8[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|contador8[10]~36_combout\ = (\i4|contador8\(10) & (\i4|contador8[9]~35\ $ (GND))) # (!\i4|contador8\(10) & (!\i4|contador8[9]~35\ & VCC))
-- \i4|contador8[10]~37\ = CARRY((\i4|contador8\(10) & !\i4|contador8[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i4|contador8\(10),
	datad => VCC,
	cin => \i4|contador8[9]~35\,
	combout => \i4|contador8[10]~36_combout\,
	cout => \i4|contador8[10]~37\);

-- Location: LCFF_X33_Y1_N23
\i4|contador8[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[10]~36_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(10));

-- Location: LCFF_X33_Y1_N25
\i4|contador8[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[11]~38_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(11));

-- Location: LCFF_X33_Y1_N21
\i4|contador8[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i4|contador8[9]~34_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i4|contador8[5]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i4|contador8\(9));

-- Location: LCCOMB_X32_Y1_N30
\i4|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Equal0~2_combout\ = (\i4|contador8\(10)) # ((\i4|contador8\(11)) # ((\i4|contador8\(9)) # (!\i4|contador8\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|contador8\(10),
	datab => \i4|contador8\(11),
	datac => \i4|contador8\(8),
	datad => \i4|contador8\(9),
	combout => \i4|Equal0~2_combout\);

-- Location: LCCOMB_X32_Y1_N6
\i4|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i4|Equal0~4_combout\ = (\i4|Equal0~3_combout\) # ((\i4|Equal0~0_combout\) # ((\i4|Equal0~1_combout\) # (\i4|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i4|Equal0~3_combout\,
	datab => \i4|Equal0~0_combout\,
	datac => \i4|Equal0~1_combout\,
	datad => \i4|Equal0~2_combout\,
	combout => \i4|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y1_N2
\i5|contador1[0]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[0]~15_combout\ = \i5|contador1\(0) $ (VCC)
-- \i5|contador1[0]~16\ = CARRY(\i5|contador1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador1\(0),
	datad => VCC,
	combout => \i5|contador1[0]~15_combout\,
	cout => \i5|contador1[0]~16\);

-- Location: LCCOMB_X30_Y1_N30
\i5|contador1[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[3]~17_combout\ = (\UnidadControl|estado_act.Start1~2_combout\) # ((\UnidadControl|estado_act.Mensaje2~regout\) # ((\UnidadControl|estado_act.Reposo~2_combout\) # (!\i5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Start1~2_combout\,
	datab => \UnidadControl|estado_act.Mensaje2~regout\,
	datac => \UnidadControl|estado_act.Reposo~2_combout\,
	datad => \i5|Equal0~4_combout\,
	combout => \i5|contador1[3]~17_combout\);

-- Location: LCFF_X29_Y1_N3
\i5|contador1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[0]~15_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(0));

-- Location: LCCOMB_X29_Y1_N4
\i5|contador1[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[1]~18_combout\ = (\i5|contador1\(1) & (!\i5|contador1[0]~16\)) # (!\i5|contador1\(1) & ((\i5|contador1[0]~16\) # (GND)))
-- \i5|contador1[1]~19\ = CARRY((!\i5|contador1[0]~16\) # (!\i5|contador1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador1\(1),
	datad => VCC,
	cin => \i5|contador1[0]~16\,
	combout => \i5|contador1[1]~18_combout\,
	cout => \i5|contador1[1]~19\);

-- Location: LCFF_X29_Y1_N5
\i5|contador1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[1]~18_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(1));

-- Location: LCCOMB_X29_Y1_N6
\i5|contador1[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[2]~20_combout\ = (\i5|contador1\(2) & (\i5|contador1[1]~19\ $ (GND))) # (!\i5|contador1\(2) & (!\i5|contador1[1]~19\ & VCC))
-- \i5|contador1[2]~21\ = CARRY((\i5|contador1\(2) & !\i5|contador1[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador1\(2),
	datad => VCC,
	cin => \i5|contador1[1]~19\,
	combout => \i5|contador1[2]~20_combout\,
	cout => \i5|contador1[2]~21\);

-- Location: LCCOMB_X29_Y1_N8
\i5|contador1[3]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[3]~22_combout\ = (\i5|contador1\(3) & (!\i5|contador1[2]~21\)) # (!\i5|contador1\(3) & ((\i5|contador1[2]~21\) # (GND)))
-- \i5|contador1[3]~23\ = CARRY((!\i5|contador1[2]~21\) # (!\i5|contador1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador1\(3),
	datad => VCC,
	cin => \i5|contador1[2]~21\,
	combout => \i5|contador1[3]~22_combout\,
	cout => \i5|contador1[3]~23\);

-- Location: LCFF_X29_Y1_N9
\i5|contador1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[3]~22_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(3));

-- Location: LCCOMB_X29_Y1_N14
\i5|contador1[6]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[6]~28_combout\ = (\i5|contador1\(6) & (\i5|contador1[5]~27\ $ (GND))) # (!\i5|contador1\(6) & (!\i5|contador1[5]~27\ & VCC))
-- \i5|contador1[6]~29\ = CARRY((\i5|contador1\(6) & !\i5|contador1[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador1\(6),
	datad => VCC,
	cin => \i5|contador1[5]~27\,
	combout => \i5|contador1[6]~28_combout\,
	cout => \i5|contador1[6]~29\);

-- Location: LCFF_X29_Y1_N15
\i5|contador1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[6]~28_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(6));

-- Location: LCCOMB_X29_Y1_N18
\i5|contador1[8]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[8]~32_combout\ = (\i5|contador1\(8) & (\i5|contador1[7]~31\ $ (GND))) # (!\i5|contador1\(8) & (!\i5|contador1[7]~31\ & VCC))
-- \i5|contador1[8]~33\ = CARRY((\i5|contador1\(8) & !\i5|contador1[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador1\(8),
	datad => VCC,
	cin => \i5|contador1[7]~31\,
	combout => \i5|contador1[8]~32_combout\,
	cout => \i5|contador1[8]~33\);

-- Location: LCFF_X29_Y1_N19
\i5|contador1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[8]~32_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(8));

-- Location: LCCOMB_X29_Y1_N20
\i5|contador1[9]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[9]~34_combout\ = (\i5|contador1\(9) & (!\i5|contador1[8]~33\)) # (!\i5|contador1\(9) & ((\i5|contador1[8]~33\) # (GND)))
-- \i5|contador1[9]~35\ = CARRY((!\i5|contador1[8]~33\) # (!\i5|contador1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador1\(9),
	datad => VCC,
	cin => \i5|contador1[8]~33\,
	combout => \i5|contador1[9]~34_combout\,
	cout => \i5|contador1[9]~35\);

-- Location: LCFF_X29_Y1_N21
\i5|contador1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[9]~34_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(9));

-- Location: LCCOMB_X29_Y1_N22
\i5|contador1[10]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[10]~36_combout\ = (\i5|contador1\(10) & (\i5|contador1[9]~35\ $ (GND))) # (!\i5|contador1\(10) & (!\i5|contador1[9]~35\ & VCC))
-- \i5|contador1[10]~37\ = CARRY((\i5|contador1\(10) & !\i5|contador1[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador1\(10),
	datad => VCC,
	cin => \i5|contador1[9]~35\,
	combout => \i5|contador1[10]~36_combout\,
	cout => \i5|contador1[10]~37\);

-- Location: LCFF_X29_Y1_N23
\i5|contador1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[10]~36_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(10));

-- Location: LCCOMB_X29_Y1_N24
\i5|contador1[11]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[11]~38_combout\ = (\i5|contador1\(11) & (!\i5|contador1[10]~37\)) # (!\i5|contador1\(11) & ((\i5|contador1[10]~37\) # (GND)))
-- \i5|contador1[11]~39\ = CARRY((!\i5|contador1[10]~37\) # (!\i5|contador1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador1\(11),
	datad => VCC,
	cin => \i5|contador1[10]~37\,
	combout => \i5|contador1[11]~38_combout\,
	cout => \i5|contador1[11]~39\);

-- Location: LCCOMB_X29_Y1_N26
\i5|contador1[12]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[12]~40_combout\ = (\i5|contador1\(12) & (\i5|contador1[11]~39\ $ (GND))) # (!\i5|contador1\(12) & (!\i5|contador1[11]~39\ & VCC))
-- \i5|contador1[12]~41\ = CARRY((\i5|contador1\(12) & !\i5|contador1[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador1\(12),
	datad => VCC,
	cin => \i5|contador1[11]~39\,
	combout => \i5|contador1[12]~40_combout\,
	cout => \i5|contador1[12]~41\);

-- Location: LCFF_X29_Y1_N27
\i5|contador1[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[12]~40_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(12));

-- Location: LCCOMB_X29_Y1_N28
\i5|contador1[13]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[13]~42_combout\ = (\i5|contador1\(13) & (!\i5|contador1[12]~41\)) # (!\i5|contador1\(13) & ((\i5|contador1[12]~41\) # (GND)))
-- \i5|contador1[13]~43\ = CARRY((!\i5|contador1[12]~41\) # (!\i5|contador1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador1\(13),
	datad => VCC,
	cin => \i5|contador1[12]~41\,
	combout => \i5|contador1[13]~42_combout\,
	cout => \i5|contador1[13]~43\);

-- Location: LCFF_X29_Y1_N29
\i5|contador1[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[13]~42_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(13));

-- Location: LCCOMB_X29_Y1_N30
\i5|contador1[14]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|contador1[14]~44_combout\ = \i5|contador1[13]~43\ $ (!\i5|contador1\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \i5|contador1\(14),
	cin => \i5|contador1[13]~43\,
	combout => \i5|contador1[14]~44_combout\);

-- Location: LCFF_X29_Y1_N31
\i5|contador1[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[14]~44_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(14));

-- Location: LCCOMB_X30_Y1_N22
\i5|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Equal0~3_combout\ = (\i5|contador1\(12)) # ((\i5|contador1\(14)) # (\i5|contador1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i5|contador1\(12),
	datac => \i5|contador1\(14),
	datad => \i5|contador1\(13),
	combout => \i5|Equal0~3_combout\);

-- Location: LCFF_X29_Y1_N25
\i5|contador1[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[11]~38_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(11));

-- Location: LCCOMB_X29_Y1_N0
\i5|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Equal0~2_combout\ = ((\i5|contador1\(8)) # ((\i5|contador1\(10)) # (!\i5|contador1\(11)))) # (!\i5|contador1\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador1\(9),
	datab => \i5|contador1\(8),
	datac => \i5|contador1\(11),
	datad => \i5|contador1\(10),
	combout => \i5|Equal0~2_combout\);

-- Location: LCFF_X29_Y1_N7
\i5|contador1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i5|contador1[2]~20_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \i5|contador1[3]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i5|contador1\(2));

-- Location: LCCOMB_X30_Y1_N10
\i5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Equal0~0_combout\ = (\i5|contador1\(0)) # ((\i5|contador1\(2)) # ((!\i5|contador1\(3)) # (!\i5|contador1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|contador1\(0),
	datab => \i5|contador1\(2),
	datac => \i5|contador1\(1),
	datad => \i5|contador1\(3),
	combout => \i5|Equal0~0_combout\);

-- Location: LCCOMB_X30_Y1_N28
\i5|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|Equal0~4_combout\ = (\i5|Equal0~1_combout\) # ((\i5|Equal0~3_combout\) # ((\i5|Equal0~2_combout\) # (\i5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i5|Equal0~1_combout\,
	datab => \i5|Equal0~3_combout\,
	datac => \i5|Equal0~2_combout\,
	datad => \i5|Equal0~0_combout\,
	combout => \i5|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y1_N0
\UnidadControl|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|Selector4~0_combout\ = (\UnidadControl|estado_act.Mensaje2~regout\) # ((\UnidadControl|estado_act.Mensaje~regout\ & ((\UnidadControl|estado_act.Start1~2_combout\) # (\i5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Mensaje~regout\,
	datab => \UnidadControl|estado_act.Mensaje2~regout\,
	datac => \UnidadControl|estado_act.Start1~2_combout\,
	datad => \i5|Equal0~4_combout\,
	combout => \UnidadControl|Selector4~0_combout\);

-- Location: LCCOMB_X30_Y1_N26
\UnidadControl|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|Selector4~1_combout\ = (\UnidadControl|estado_act.Mensaje~regout\ & ((\UnidadControl|estado_act.Reposo~2_combout\) # ((\UnidadControl|Selector4~0_combout\)))) # (!\UnidadControl|estado_act.Mensaje~regout\ & (((\i4|Equal0~4_combout\ & 
-- \UnidadControl|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Mensaje~regout\,
	datab => \UnidadControl|estado_act.Reposo~2_combout\,
	datac => \i4|Equal0~4_combout\,
	datad => \UnidadControl|Selector4~0_combout\,
	combout => \UnidadControl|Selector4~1_combout\);

-- Location: LCCOMB_X30_Y1_N6
\UnidadControl|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|Selector4~2_combout\ = (\UnidadControl|Selector4~1_combout\) # ((\UnidadControl|estado_act.Start2~regout\ & !\i5|fin_cnt1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadControl|estado_act.Start2~regout\,
	datac => \i5|fin_cnt1~combout\,
	datad => \UnidadControl|Selector4~1_combout\,
	combout => \UnidadControl|Selector4~2_combout\);

-- Location: LCFF_X30_Y1_N7
\UnidadControl|estado_act.Mensaje\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \UnidadControl|Selector4~2_combout\,
	aclr => \UnidadControl|estado_act.Start2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UnidadControl|estado_act.Mensaje~regout\);

-- Location: LCCOMB_X30_Y1_N18
\UnidadControl|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|Selector5~0_combout\ = ((\UnidadControl|estado_act.Fin~regout\) # ((\UnidadControl|estado_act.Mensaje~regout\) # (\UnidadControl|estado_act.Reposo~2_combout\))) # (!\UnidadControl|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|WideOr2~0_combout\,
	datab => \UnidadControl|estado_act.Fin~regout\,
	datac => \UnidadControl|estado_act.Mensaje~regout\,
	datad => \UnidadControl|estado_act.Reposo~2_combout\,
	combout => \UnidadControl|Selector5~0_combout\);

-- Location: LCCOMB_X30_Y1_N4
\UnidadControl|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|Selector5~1_combout\ = (\UnidadControl|estado_act.Mensaje~regout\ & (((\UnidadControl|Selector5~0_combout\ & \UnidadControl|estado_act.Mensaje2~regout\)) # (!\i5|fin_cnt1~combout\))) # (!\UnidadControl|estado_act.Mensaje~regout\ & 
-- (\UnidadControl|Selector5~0_combout\ & (\UnidadControl|estado_act.Mensaje2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Mensaje~regout\,
	datab => \UnidadControl|Selector5~0_combout\,
	datac => \UnidadControl|estado_act.Mensaje2~regout\,
	datad => \i5|fin_cnt1~combout\,
	combout => \UnidadControl|Selector5~1_combout\);

-- Location: LCFF_X30_Y1_N5
\UnidadControl|estado_act.Mensaje2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \UnidadControl|Selector5~1_combout\,
	aclr => \UnidadControl|estado_act.Start2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UnidadControl|estado_act.Mensaje2~regout\);

-- Location: LCCOMB_X30_Y1_N14
\i5|fin_cnt1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i5|fin_cnt1~combout\ = (\UnidadControl|estado_act.Start1~2_combout\) # ((\UnidadControl|estado_act.Mensaje2~regout\) # ((\UnidadControl|estado_act.Reposo~2_combout\) # (\i5|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Start1~2_combout\,
	datab => \UnidadControl|estado_act.Mensaje2~regout\,
	datac => \UnidadControl|estado_act.Reposo~2_combout\,
	datad => \i5|Equal0~4_combout\,
	combout => \i5|fin_cnt1~combout\);

-- Location: LCCOMB_X31_Y1_N30
\UnidadControl|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|Selector6~0_combout\ = (\UnidadControl|estado_act.Mensaje2~regout\ & !\i4|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UnidadControl|estado_act.Mensaje2~regout\,
	datad => \i4|Equal0~4_combout\,
	combout => \UnidadControl|Selector6~0_combout\);

-- Location: LCCOMB_X30_Y1_N16
\UnidadControl|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|Selector6~1_combout\ = (\UnidadControl|Selector6~0_combout\) # ((\UnidadControl|estado_act.E_Paridad~regout\ & ((\UnidadControl|estado_act.Reposo~2_combout\) # (\i5|fin_cnt1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Reposo~2_combout\,
	datab => \i5|fin_cnt1~combout\,
	datac => \UnidadControl|estado_act.E_Paridad~regout\,
	datad => \UnidadControl|Selector6~0_combout\,
	combout => \UnidadControl|Selector6~1_combout\);

-- Location: LCFF_X30_Y1_N17
\UnidadControl|estado_act.E_Paridad\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \UnidadControl|Selector6~1_combout\,
	aclr => \UnidadControl|estado_act.Start2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \UnidadControl|estado_act.E_Paridad~regout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(1),
	combout => \e_p~combout\(1));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(5),
	combout => \e_p~combout\(5));

-- Location: LCCOMB_X31_Y1_N18
\i1|registro~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro~6_combout\ = (\UnidadControl|estado_act.Start1~2_combout\ & ((\e_p~combout\(5)))) # (!\UnidadControl|estado_act.Start1~2_combout\ & (\i1|registro\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i1|registro\(6),
	datab => \e_p~combout\(5),
	datad => \UnidadControl|estado_act.Start1~2_combout\,
	combout => \i1|registro~6_combout\);

-- Location: LCCOMB_X31_Y1_N6
\i1|registro[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro[0]~1_combout\ = (\UnidadControl|estado_act.E_Paridad~regout\) # ((\UnidadControl|estado_act.Mensaje2~regout\) # (\UnidadControl|estado_act.Start1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \UnidadControl|estado_act.E_Paridad~regout\,
	datac => \UnidadControl|estado_act.Mensaje2~regout\,
	datad => \UnidadControl|estado_act.Start1~2_combout\,
	combout => \i1|registro[0]~1_combout\);

-- Location: LCFF_X31_Y1_N19
\i1|registro[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro~6_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \UnidadControl|estado_act.E_Paridad~regout\,
	ena => \i1|registro[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(5));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(4),
	combout => \e_p~combout\(4));

-- Location: LCCOMB_X31_Y1_N8
\i1|registro~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro~5_combout\ = (\UnidadControl|estado_act.Start1~2_combout\ & ((\e_p~combout\(4)))) # (!\UnidadControl|estado_act.Start1~2_combout\ & (\i1|registro\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|registro\(5),
	datac => \e_p~combout\(4),
	datad => \UnidadControl|estado_act.Start1~2_combout\,
	combout => \i1|registro~5_combout\);

-- Location: LCFF_X31_Y1_N9
\i1|registro[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro~5_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \UnidadControl|estado_act.E_Paridad~regout\,
	ena => \i1|registro[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(4));

-- Location: LCCOMB_X31_Y1_N2
\i1|registro~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro~4_combout\ = (\UnidadControl|estado_act.Start1~2_combout\ & (\e_p~combout\(3))) # (!\UnidadControl|estado_act.Start1~2_combout\ & ((\i1|registro\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e_p~combout\(3),
	datac => \i1|registro\(4),
	datad => \UnidadControl|estado_act.Start1~2_combout\,
	combout => \i1|registro~4_combout\);

-- Location: LCFF_X31_Y1_N3
\i1|registro[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro~4_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \UnidadControl|estado_act.E_Paridad~regout\,
	ena => \i1|registro[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(3));

-- Location: LCCOMB_X31_Y1_N24
\i1|registro~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro~3_combout\ = (\UnidadControl|estado_act.Start1~2_combout\ & (\e_p~combout\(2))) # (!\UnidadControl|estado_act.Start1~2_combout\ & ((\i1|registro\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e_p~combout\(2),
	datab => \i1|registro\(3),
	datad => \UnidadControl|estado_act.Start1~2_combout\,
	combout => \i1|registro~3_combout\);

-- Location: LCFF_X31_Y1_N25
\i1|registro[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro~3_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \UnidadControl|estado_act.E_Paridad~regout\,
	ena => \i1|registro[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(2));

-- Location: LCCOMB_X31_Y1_N22
\i1|registro~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro~2_combout\ = (\UnidadControl|estado_act.Start1~2_combout\ & (\e_p~combout\(1))) # (!\UnidadControl|estado_act.Start1~2_combout\ & ((\i1|registro\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \e_p~combout\(1),
	datac => \i1|registro\(2),
	datad => \UnidadControl|estado_act.Start1~2_combout\,
	combout => \i1|registro~2_combout\);

-- Location: LCFF_X31_Y1_N23
\i1|registro[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro~2_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \UnidadControl|estado_act.E_Paridad~regout\,
	ena => \i1|registro[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(1));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\e_p[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_e_p(0),
	combout => \e_p~combout\(0));

-- Location: LCCOMB_X31_Y1_N16
\i1|registro~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i1|registro~0_combout\ = (\UnidadControl|estado_act.Start1~2_combout\ & ((\e_p~combout\(0)))) # (!\UnidadControl|estado_act.Start1~2_combout\ & (\i1|registro\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i1|registro\(1),
	datac => \e_p~combout\(0),
	datad => \UnidadControl|estado_act.Start1~2_combout\,
	combout => \i1|registro~0_combout\);

-- Location: LCFF_X31_Y1_N17
\i1|registro[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i1|registro~0_combout\,
	aclr => \ALT_INV_reset_n~combout\,
	sclr => \UnidadControl|estado_act.E_Paridad~regout\,
	ena => \i1|registro[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i1|registro\(0));

-- Location: LCCOMB_X32_Y1_N26
\i2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Selector1~0_combout\ = (\i2|estado_act.Par~regout\) # ((\UnidadControl|estado_act.Mensaje2~regout\ & ((\i1|registro\(0)) # (!\i2|estado_act.Reposo~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|estado_act.Reposo~regout\,
	datab => \i2|estado_act.Par~regout\,
	datac => \UnidadControl|estado_act.Mensaje2~regout\,
	datad => \i1|registro\(0),
	combout => \i2|Selector1~0_combout\);

-- Location: LCCOMB_X31_Y1_N26
\i2|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|Selector1~1_combout\ = (\i2|Selector1~0_combout\ & ((\i2|estado_act.Impar~regout\) # ((!\i1|registro\(0)) # (!\UnidadControl|estado_act.Mensaje2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2|estado_act.Impar~regout\,
	datab => \UnidadControl|estado_act.Mensaje2~regout\,
	datac => \i1|registro\(0),
	datad => \i2|Selector1~0_combout\,
	combout => \i2|Selector1~1_combout\);

-- Location: LCCOMB_X31_Y1_N28
\i2|VarEstados~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2|VarEstados~0_combout\ = (\UnidadControl|estado_act.Start1~2_combout\) # (!\reset_n~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~combout\,
	datad => \UnidadControl|estado_act.Start1~2_combout\,
	combout => \i2|VarEstados~0_combout\);

-- Location: LCFF_X31_Y1_N27
\i2|estado_act.Par\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \i2|Selector1~1_combout\,
	aclr => \i2|VarEstados~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2|estado_act.Par~regout\);

-- Location: LCCOMB_X32_Y1_N0
\i3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux0~0_combout\ = (\i2|estado_act.Par~regout\ & ((\UnidadControl|estado_act.Mensaje2~regout\) # ((\UnidadControl|estado_act.E_Paridad~regout\) # (\UnidadControl|estado_act.Mensaje~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Mensaje2~regout\,
	datab => \UnidadControl|estado_act.E_Paridad~regout\,
	datac => \UnidadControl|estado_act.Mensaje~regout\,
	datad => \i2|estado_act.Par~regout\,
	combout => \i3|Mux0~0_combout\);

-- Location: LCCOMB_X30_Y1_N24
\UnidadControl|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \UnidadControl|WideOr2~0_combout\ = (!\UnidadControl|estado_act.E_Paridad~regout\ & !\UnidadControl|estado_act.Start2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \UnidadControl|estado_act.E_Paridad~regout\,
	datad => \UnidadControl|estado_act.Start2~regout\,
	combout => \UnidadControl|WideOr2~0_combout\);

-- Location: LCCOMB_X32_Y1_N14
\i3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux0~1_combout\ = (\i1|registro\(0)) # ((!\UnidadControl|estado_act.Mensaje2~regout\ & (!\UnidadControl|estado_act.E_Paridad~regout\ & !\UnidadControl|estado_act.Mensaje~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \UnidadControl|estado_act.Mensaje2~regout\,
	datab => \UnidadControl|estado_act.E_Paridad~regout\,
	datac => \UnidadControl|estado_act.Mensaje~regout\,
	datad => \i1|registro\(0),
	combout => \i3|Mux0~1_combout\);

-- Location: LCCOMB_X32_Y1_N8
\i3|Mux0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \i3|Mux0~2_combout\ = (\UnidadControl|WideOr2~0_combout\ & ((\UnidadControl|estado_act.Start1~2_combout\ & (\i3|Mux0~0_combout\)) # (!\UnidadControl|estado_act.Start1~2_combout\ & ((\i3|Mux0~1_combout\))))) # (!\UnidadControl|WideOr2~0_combout\ & 
-- (\i3|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i3|Mux0~0_combout\,
	datab => \UnidadControl|WideOr2~0_combout\,
	datac => \UnidadControl|estado_act.Start1~2_combout\,
	datad => \i3|Mux0~1_combout\,
	combout => \i3|Mux0~2_combout\);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\salida_serie~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \i3|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_salida_serie);
END structure;


