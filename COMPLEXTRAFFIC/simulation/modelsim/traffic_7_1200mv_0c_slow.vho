-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "12/04/2018 15:28:48"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	traffic IS
    PORT (
	SW : IN std_logic_vector(4 DOWNTO 0);
	clock_50 : IN std_logic;
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END traffic;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF traffic IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \A1|temp~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \LEDG[1]~output_o\ : std_logic;
SIGNAL \LEDG[2]~output_o\ : std_logic;
SIGNAL \LEDG[3]~output_o\ : std_logic;
SIGNAL \LEDG[4]~output_o\ : std_logic;
SIGNAL \LEDG[5]~output_o\ : std_logic;
SIGNAL \LEDG[6]~output_o\ : std_logic;
SIGNAL \LEDG[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \A1|Add0~0_combout\ : std_logic;
SIGNAL \A1|count~17_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \A1|Add0~1\ : std_logic;
SIGNAL \A1|Add0~2_combout\ : std_logic;
SIGNAL \A1|Add0~3\ : std_logic;
SIGNAL \A1|Add0~4_combout\ : std_logic;
SIGNAL \A1|Add0~5\ : std_logic;
SIGNAL \A1|Add0~6_combout\ : std_logic;
SIGNAL \A1|Equal0~8_combout\ : std_logic;
SIGNAL \A1|Add0~7\ : std_logic;
SIGNAL \A1|Add0~8_combout\ : std_logic;
SIGNAL \A1|Add0~9\ : std_logic;
SIGNAL \A1|Add0~10_combout\ : std_logic;
SIGNAL \A1|Add0~11\ : std_logic;
SIGNAL \A1|Add0~12_combout\ : std_logic;
SIGNAL \A1|Add0~13\ : std_logic;
SIGNAL \A1|Add0~14_combout\ : std_logic;
SIGNAL \A1|count~16_combout\ : std_logic;
SIGNAL \A1|Add0~15\ : std_logic;
SIGNAL \A1|Add0~16_combout\ : std_logic;
SIGNAL \A1|Add0~17\ : std_logic;
SIGNAL \A1|Add0~18_combout\ : std_logic;
SIGNAL \A1|Add0~19\ : std_logic;
SIGNAL \A1|Add0~20_combout\ : std_logic;
SIGNAL \A1|Add0~21\ : std_logic;
SIGNAL \A1|Add0~22_combout\ : std_logic;
SIGNAL \A1|Equal0~6_combout\ : std_logic;
SIGNAL \A1|Add0~23\ : std_logic;
SIGNAL \A1|Add0~24_combout\ : std_logic;
SIGNAL \A1|count~15_combout\ : std_logic;
SIGNAL \A1|Add0~25\ : std_logic;
SIGNAL \A1|Add0~26_combout\ : std_logic;
SIGNAL \A1|count~14_combout\ : std_logic;
SIGNAL \A1|Add0~27\ : std_logic;
SIGNAL \A1|Add0~28_combout\ : std_logic;
SIGNAL \A1|count~13_combout\ : std_logic;
SIGNAL \A1|Add0~29\ : std_logic;
SIGNAL \A1|Add0~30_combout\ : std_logic;
SIGNAL \A1|count~12_combout\ : std_logic;
SIGNAL \A1|Equal0~5_combout\ : std_logic;
SIGNAL \A1|Equal0~7_combout\ : std_logic;
SIGNAL \A1|Equal0~9_combout\ : std_logic;
SIGNAL \A1|Add0~31\ : std_logic;
SIGNAL \A1|Add0~32_combout\ : std_logic;
SIGNAL \A1|Add0~33\ : std_logic;
SIGNAL \A1|Add0~34_combout\ : std_logic;
SIGNAL \A1|count~11_combout\ : std_logic;
SIGNAL \A1|Add0~35\ : std_logic;
SIGNAL \A1|Add0~36_combout\ : std_logic;
SIGNAL \A1|Add0~37\ : std_logic;
SIGNAL \A1|Add0~38_combout\ : std_logic;
SIGNAL \A1|count~10_combout\ : std_logic;
SIGNAL \A1|Add0~39\ : std_logic;
SIGNAL \A1|Add0~40_combout\ : std_logic;
SIGNAL \A1|count~22_combout\ : std_logic;
SIGNAL \A1|Add0~41\ : std_logic;
SIGNAL \A1|Add0~42_combout\ : std_logic;
SIGNAL \A1|count~21_combout\ : std_logic;
SIGNAL \A1|Add0~43\ : std_logic;
SIGNAL \A1|Add0~44_combout\ : std_logic;
SIGNAL \A1|count~20_combout\ : std_logic;
SIGNAL \A1|Add0~45\ : std_logic;
SIGNAL \A1|Add0~46_combout\ : std_logic;
SIGNAL \A1|count~19_combout\ : std_logic;
SIGNAL \A1|Add0~47\ : std_logic;
SIGNAL \A1|Add0~48_combout\ : std_logic;
SIGNAL \A1|Add0~49\ : std_logic;
SIGNAL \A1|Add0~50_combout\ : std_logic;
SIGNAL \A1|count~18_combout\ : std_logic;
SIGNAL \A1|Add0~51\ : std_logic;
SIGNAL \A1|Add0~52_combout\ : std_logic;
SIGNAL \A1|Add0~53\ : std_logic;
SIGNAL \A1|Add0~54_combout\ : std_logic;
SIGNAL \A1|Add0~55\ : std_logic;
SIGNAL \A1|Add0~56_combout\ : std_logic;
SIGNAL \A1|Add0~57\ : std_logic;
SIGNAL \A1|Add0~58_combout\ : std_logic;
SIGNAL \A1|Add0~59\ : std_logic;
SIGNAL \A1|Add0~60_combout\ : std_logic;
SIGNAL \A1|Add0~61\ : std_logic;
SIGNAL \A1|Add0~62_combout\ : std_logic;
SIGNAL \A1|Equal0~0_combout\ : std_logic;
SIGNAL \A1|Equal0~2_combout\ : std_logic;
SIGNAL \A1|Equal0~1_combout\ : std_logic;
SIGNAL \A1|Equal0~3_combout\ : std_logic;
SIGNAL \A1|Equal0~4_combout\ : std_logic;
SIGNAL \A1|temp~0_combout\ : std_logic;
SIGNAL \A1|temp~feeder_combout\ : std_logic;
SIGNAL \A1|temp~q\ : std_logic;
SIGNAL \A1|temp~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \A2|process_0~0_combout\ : std_logic;
SIGNAL \A2|Equal4~0_combout\ : std_logic;
SIGNAL \A2|next_state~36_combout\ : std_logic;
SIGNAL \A2|next_state~40_combout\ : std_logic;
SIGNAL \A2|next_state.ST3~q\ : std_logic;
SIGNAL \A2|next_state~30_combout\ : std_logic;
SIGNAL \A2|WideOr0~1_combout\ : std_logic;
SIGNAL \A2|next_state~31_combout\ : std_logic;
SIGNAL \A2|next_state~37_combout\ : std_logic;
SIGNAL \A2|next_state.ST4~q\ : std_logic;
SIGNAL \A2|next_state~38_combout\ : std_logic;
SIGNAL \A2|next_state.ST5~q\ : std_logic;
SIGNAL \A2|next_state~39_combout\ : std_logic;
SIGNAL \A2|next_state.ST6~q\ : std_logic;
SIGNAL \A2|next_state~43_combout\ : std_logic;
SIGNAL \A2|Equal3~0_combout\ : std_logic;
SIGNAL \A2|WideOr0~0_combout\ : std_logic;
SIGNAL \A2|next_state~42_combout\ : std_logic;
SIGNAL \A2|next_state~44_combout\ : std_logic;
SIGNAL \A2|next_state~56_combout\ : std_logic;
SIGNAL \A2|next_state~57_combout\ : std_logic;
SIGNAL \A2|next_state.ST10~q\ : std_logic;
SIGNAL \A2|next_state~55_combout\ : std_logic;
SIGNAL \A2|next_state~47_combout\ : std_logic;
SIGNAL \A2|next_state~48_combout\ : std_logic;
SIGNAL \A2|next_state.ST11~q\ : std_logic;
SIGNAL \A2|next_state~54_combout\ : std_logic;
SIGNAL \A2|next_state.ST12~q\ : std_logic;
SIGNAL \A2|next_state~53_combout\ : std_logic;
SIGNAL \A2|next_state.ST13~q\ : std_logic;
SIGNAL \A2|next_state~49_combout\ : std_logic;
SIGNAL \A2|next_state.ST14~q\ : std_logic;
SIGNAL \A2|next_state~41_combout\ : std_logic;
SIGNAL \A2|next_state~45_combout\ : std_logic;
SIGNAL \A2|next_state.ST7~q\ : std_logic;
SIGNAL \A2|next_state~33_combout\ : std_logic;
SIGNAL \A2|next_state~32_combout\ : std_logic;
SIGNAL \A2|next_state~58_combout\ : std_logic;
SIGNAL \A2|next_state~59_combout\ : std_logic;
SIGNAL \A2|next_state.ST0~q\ : std_logic;
SIGNAL \A2|next_state~34_combout\ : std_logic;
SIGNAL \A2|next_state.ST1~q\ : std_logic;
SIGNAL \A2|next_state~35_combout\ : std_logic;
SIGNAL \A2|next_state.ST2~q\ : std_logic;
SIGNAL \A2|WideOr1~0_combout\ : std_logic;
SIGNAL \A2|next_state~51_combout\ : std_logic;
SIGNAL \A2|next_state~50_combout\ : std_logic;
SIGNAL \A2|next_state~52_combout\ : std_logic;
SIGNAL \A2|next_state.ST8~q\ : std_logic;
SIGNAL \A2|next_state~46_combout\ : std_logic;
SIGNAL \A2|next_state.ST9~q\ : std_logic;
SIGNAL \A2|WideOr1~combout\ : std_logic;
SIGNAL \A2|WideOr0~combout\ : std_logic;
SIGNAL \A1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \A2|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \A2|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \A2|ALT_INV_next_state.ST7~q\ : std_logic;
SIGNAL \A2|ALT_INV_next_state.ST3~q\ : std_logic;
SIGNAL \A2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \A2|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \A1|ALT_INV_temp~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_SW <= SW;
ww_clock_50 <= clock_50;
LEDG <= ww_LEDG;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);

\A1|temp~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \A1|temp~q\);
\A2|ALT_INV_WideOr0~combout\ <= NOT \A2|WideOr0~combout\;
\A2|ALT_INV_WideOr1~combout\ <= NOT \A2|WideOr1~combout\;
\A2|ALT_INV_next_state.ST7~q\ <= NOT \A2|next_state.ST7~q\;
\A2|ALT_INV_next_state.ST3~q\ <= NOT \A2|next_state.ST3~q\;
\A2|ALT_INV_WideOr0~0_combout\ <= NOT \A2|WideOr0~0_combout\;
\A2|ALT_INV_WideOr1~0_combout\ <= NOT \A2|WideOr1~0_combout\;
\A1|ALT_INV_temp~clkctrl_outclk\ <= NOT \A1|temp~clkctrl_outclk\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\LEDG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\LEDG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\LEDG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[3]~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\LEDG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[4]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\LEDG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \LEDG[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N23
\LEDG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[6]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\LEDG[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDG[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST3~q\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST3~q\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST3~q\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST3~q\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST3~q\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST3~q\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST7~q\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST7~q\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST7~q\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST7~q\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST7~q\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_next_state.ST7~q\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \A2|ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G4
\clock_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X112_Y33_N0
\A1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~0_combout\ = \A1|count\(0) $ (VCC)
-- \A1|Add0~1\ = CARRY(\A1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(0),
	datad => VCC,
	combout => \A1|Add0~0_combout\,
	cout => \A1|Add0~1\);

-- Location: LCCOMB_X113_Y33_N10
\A1|count~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~17_combout\ = (\A1|Add0~0_combout\ & ((!\A1|Equal0~4_combout\) # (!\A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Add0~0_combout\,
	datac => \A1|Equal0~9_combout\,
	datad => \A1|Equal0~4_combout\,
	combout => \A1|count~17_combout\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X112_Y33_N27
\A1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \A1|count~17_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(0));

-- Location: LCCOMB_X112_Y33_N2
\A1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~2_combout\ = (\A1|count\(1) & (!\A1|Add0~1\)) # (!\A1|count\(1) & ((\A1|Add0~1\) # (GND)))
-- \A1|Add0~3\ = CARRY((!\A1|Add0~1\) # (!\A1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(1),
	datad => VCC,
	cin => \A1|Add0~1\,
	combout => \A1|Add0~2_combout\,
	cout => \A1|Add0~3\);

-- Location: FF_X112_Y33_N3
\A1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~2_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(1));

-- Location: LCCOMB_X112_Y33_N4
\A1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~4_combout\ = (\A1|count\(2) & (\A1|Add0~3\ $ (GND))) # (!\A1|count\(2) & (!\A1|Add0~3\ & VCC))
-- \A1|Add0~5\ = CARRY((\A1|count\(2) & !\A1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(2),
	datad => VCC,
	cin => \A1|Add0~3\,
	combout => \A1|Add0~4_combout\,
	cout => \A1|Add0~5\);

-- Location: FF_X112_Y33_N5
\A1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~4_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(2));

-- Location: LCCOMB_X112_Y33_N6
\A1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~6_combout\ = (\A1|count\(3) & (!\A1|Add0~5\)) # (!\A1|count\(3) & ((\A1|Add0~5\) # (GND)))
-- \A1|Add0~7\ = CARRY((!\A1|Add0~5\) # (!\A1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(3),
	datad => VCC,
	cin => \A1|Add0~5\,
	combout => \A1|Add0~6_combout\,
	cout => \A1|Add0~7\);

-- Location: FF_X112_Y33_N7
\A1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~6_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(3));

-- Location: LCCOMB_X113_Y33_N12
\A1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~8_combout\ = (!\A1|count\(0) & (!\A1|count\(3) & (!\A1|count\(2) & !\A1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(0),
	datab => \A1|count\(3),
	datac => \A1|count\(2),
	datad => \A1|count\(1),
	combout => \A1|Equal0~8_combout\);

-- Location: LCCOMB_X112_Y33_N8
\A1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~8_combout\ = (\A1|count\(4) & (\A1|Add0~7\ $ (GND))) # (!\A1|count\(4) & (!\A1|Add0~7\ & VCC))
-- \A1|Add0~9\ = CARRY((\A1|count\(4) & !\A1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(4),
	datad => VCC,
	cin => \A1|Add0~7\,
	combout => \A1|Add0~8_combout\,
	cout => \A1|Add0~9\);

-- Location: FF_X112_Y33_N9
\A1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~8_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(4));

-- Location: LCCOMB_X112_Y33_N10
\A1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~10_combout\ = (\A1|count\(5) & (!\A1|Add0~9\)) # (!\A1|count\(5) & ((\A1|Add0~9\) # (GND)))
-- \A1|Add0~11\ = CARRY((!\A1|Add0~9\) # (!\A1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(5),
	datad => VCC,
	cin => \A1|Add0~9\,
	combout => \A1|Add0~10_combout\,
	cout => \A1|Add0~11\);

-- Location: FF_X112_Y33_N11
\A1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~10_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(5));

-- Location: LCCOMB_X112_Y33_N12
\A1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~12_combout\ = (\A1|count\(6) & (\A1|Add0~11\ $ (GND))) # (!\A1|count\(6) & (!\A1|Add0~11\ & VCC))
-- \A1|Add0~13\ = CARRY((\A1|count\(6) & !\A1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(6),
	datad => VCC,
	cin => \A1|Add0~11\,
	combout => \A1|Add0~12_combout\,
	cout => \A1|Add0~13\);

-- Location: FF_X112_Y33_N13
\A1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~12_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(6));

-- Location: LCCOMB_X112_Y33_N14
\A1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~14_combout\ = (\A1|count\(7) & (!\A1|Add0~13\)) # (!\A1|count\(7) & ((\A1|Add0~13\) # (GND)))
-- \A1|Add0~15\ = CARRY((!\A1|Add0~13\) # (!\A1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(7),
	datad => VCC,
	cin => \A1|Add0~13\,
	combout => \A1|Add0~14_combout\,
	cout => \A1|Add0~15\);

-- Location: LCCOMB_X113_Y33_N8
\A1|count~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~16_combout\ = (\A1|Add0~14_combout\ & ((!\A1|Equal0~4_combout\) # (!\A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Add0~14_combout\,
	datac => \A1|Equal0~9_combout\,
	datad => \A1|Equal0~4_combout\,
	combout => \A1|count~16_combout\);

-- Location: FF_X112_Y33_N1
\A1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \A1|count~16_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(7));

-- Location: LCCOMB_X112_Y33_N16
\A1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~16_combout\ = (\A1|count\(8) & (\A1|Add0~15\ $ (GND))) # (!\A1|count\(8) & (!\A1|Add0~15\ & VCC))
-- \A1|Add0~17\ = CARRY((\A1|count\(8) & !\A1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(8),
	datad => VCC,
	cin => \A1|Add0~15\,
	combout => \A1|Add0~16_combout\,
	cout => \A1|Add0~17\);

-- Location: FF_X112_Y33_N17
\A1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~16_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(8));

-- Location: LCCOMB_X112_Y33_N18
\A1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~18_combout\ = (\A1|count\(9) & (!\A1|Add0~17\)) # (!\A1|count\(9) & ((\A1|Add0~17\) # (GND)))
-- \A1|Add0~19\ = CARRY((!\A1|Add0~17\) # (!\A1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(9),
	datad => VCC,
	cin => \A1|Add0~17\,
	combout => \A1|Add0~18_combout\,
	cout => \A1|Add0~19\);

-- Location: FF_X112_Y33_N19
\A1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~18_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(9));

-- Location: LCCOMB_X112_Y33_N20
\A1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~20_combout\ = (\A1|count\(10) & (\A1|Add0~19\ $ (GND))) # (!\A1|count\(10) & (!\A1|Add0~19\ & VCC))
-- \A1|Add0~21\ = CARRY((\A1|count\(10) & !\A1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(10),
	datad => VCC,
	cin => \A1|Add0~19\,
	combout => \A1|Add0~20_combout\,
	cout => \A1|Add0~21\);

-- Location: FF_X112_Y33_N21
\A1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~20_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(10));

-- Location: LCCOMB_X112_Y33_N22
\A1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~22_combout\ = (\A1|count\(11) & (!\A1|Add0~21\)) # (!\A1|count\(11) & ((\A1|Add0~21\) # (GND)))
-- \A1|Add0~23\ = CARRY((!\A1|Add0~21\) # (!\A1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(11),
	datad => VCC,
	cin => \A1|Add0~21\,
	combout => \A1|Add0~22_combout\,
	cout => \A1|Add0~23\);

-- Location: FF_X112_Y33_N23
\A1|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~22_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(11));

-- Location: LCCOMB_X113_Y33_N28
\A1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~6_combout\ = (!\A1|count\(8) & (!\A1|count\(11) & (!\A1|count\(10) & !\A1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(8),
	datab => \A1|count\(11),
	datac => \A1|count\(10),
	datad => \A1|count\(9),
	combout => \A1|Equal0~6_combout\);

-- Location: LCCOMB_X112_Y33_N24
\A1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~24_combout\ = (\A1|count\(12) & (\A1|Add0~23\ $ (GND))) # (!\A1|count\(12) & (!\A1|Add0~23\ & VCC))
-- \A1|Add0~25\ = CARRY((\A1|count\(12) & !\A1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(12),
	datad => VCC,
	cin => \A1|Add0~23\,
	combout => \A1|Add0~24_combout\,
	cout => \A1|Add0~25\);

-- Location: LCCOMB_X113_Y32_N24
\A1|count~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~15_combout\ = (\A1|Add0~24_combout\ & ((!\A1|Equal0~4_combout\) # (!\A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~9_combout\,
	datac => \A1|Equal0~4_combout\,
	datad => \A1|Add0~24_combout\,
	combout => \A1|count~15_combout\);

-- Location: FF_X113_Y32_N25
\A1|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~15_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(12));

-- Location: LCCOMB_X112_Y33_N26
\A1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~26_combout\ = (\A1|count\(13) & (!\A1|Add0~25\)) # (!\A1|count\(13) & ((\A1|Add0~25\) # (GND)))
-- \A1|Add0~27\ = CARRY((!\A1|Add0~25\) # (!\A1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(13),
	datad => VCC,
	cin => \A1|Add0~25\,
	combout => \A1|Add0~26_combout\,
	cout => \A1|Add0~27\);

-- Location: LCCOMB_X113_Y32_N22
\A1|count~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~14_combout\ = (\A1|Add0~26_combout\ & ((!\A1|Equal0~4_combout\) # (!\A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~9_combout\,
	datac => \A1|Equal0~4_combout\,
	datad => \A1|Add0~26_combout\,
	combout => \A1|count~14_combout\);

-- Location: FF_X113_Y32_N23
\A1|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~14_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(13));

-- Location: LCCOMB_X112_Y33_N28
\A1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~28_combout\ = (\A1|count\(14) & (\A1|Add0~27\ $ (GND))) # (!\A1|count\(14) & (!\A1|Add0~27\ & VCC))
-- \A1|Add0~29\ = CARRY((\A1|count\(14) & !\A1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(14),
	datad => VCC,
	cin => \A1|Add0~27\,
	combout => \A1|Add0~28_combout\,
	cout => \A1|Add0~29\);

-- Location: LCCOMB_X113_Y32_N0
\A1|count~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~13_combout\ = (\A1|Add0~28_combout\ & ((!\A1|Equal0~9_combout\) # (!\A1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~4_combout\,
	datac => \A1|Add0~28_combout\,
	datad => \A1|Equal0~9_combout\,
	combout => \A1|count~13_combout\);

-- Location: FF_X113_Y32_N1
\A1|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~13_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(14));

-- Location: LCCOMB_X112_Y33_N30
\A1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~30_combout\ = (\A1|count\(15) & (!\A1|Add0~29\)) # (!\A1|count\(15) & ((\A1|Add0~29\) # (GND)))
-- \A1|Add0~31\ = CARRY((!\A1|Add0~29\) # (!\A1|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(15),
	datad => VCC,
	cin => \A1|Add0~29\,
	combout => \A1|Add0~30_combout\,
	cout => \A1|Add0~31\);

-- Location: LCCOMB_X113_Y32_N30
\A1|count~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~12_combout\ = (\A1|Add0~30_combout\ & ((!\A1|Equal0~9_combout\) # (!\A1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~4_combout\,
	datac => \A1|Add0~30_combout\,
	datad => \A1|Equal0~9_combout\,
	combout => \A1|count~12_combout\);

-- Location: FF_X113_Y32_N31
\A1|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~12_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(15));

-- Location: LCCOMB_X113_Y32_N2
\A1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~5_combout\ = (\A1|count\(15) & (\A1|count\(12) & (\A1|count\(13) & \A1|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(15),
	datab => \A1|count\(12),
	datac => \A1|count\(13),
	datad => \A1|count\(14),
	combout => \A1|Equal0~5_combout\);

-- Location: LCCOMB_X113_Y33_N6
\A1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~7_combout\ = (!\A1|count\(5) & (!\A1|count\(4) & (\A1|count\(7) & !\A1|count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(5),
	datab => \A1|count\(4),
	datac => \A1|count\(7),
	datad => \A1|count\(6),
	combout => \A1|Equal0~7_combout\);

-- Location: LCCOMB_X113_Y33_N30
\A1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~9_combout\ = (\A1|Equal0~8_combout\ & (\A1|Equal0~6_combout\ & (\A1|Equal0~5_combout\ & \A1|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~8_combout\,
	datab => \A1|Equal0~6_combout\,
	datac => \A1|Equal0~5_combout\,
	datad => \A1|Equal0~7_combout\,
	combout => \A1|Equal0~9_combout\);

-- Location: LCCOMB_X112_Y32_N0
\A1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~32_combout\ = (\A1|count\(16) & (\A1|Add0~31\ $ (GND))) # (!\A1|count\(16) & (!\A1|Add0~31\ & VCC))
-- \A1|Add0~33\ = CARRY((\A1|count\(16) & !\A1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(16),
	datad => VCC,
	cin => \A1|Add0~31\,
	combout => \A1|Add0~32_combout\,
	cout => \A1|Add0~33\);

-- Location: FF_X112_Y32_N1
\A1|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~32_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(16));

-- Location: LCCOMB_X112_Y32_N2
\A1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~34_combout\ = (\A1|count\(17) & (!\A1|Add0~33\)) # (!\A1|count\(17) & ((\A1|Add0~33\) # (GND)))
-- \A1|Add0~35\ = CARRY((!\A1|Add0~33\) # (!\A1|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(17),
	datad => VCC,
	cin => \A1|Add0~33\,
	combout => \A1|Add0~34_combout\,
	cout => \A1|Add0~35\);

-- Location: LCCOMB_X113_Y32_N6
\A1|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~11_combout\ = (\A1|Add0~34_combout\ & ((!\A1|Equal0~4_combout\) # (!\A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~9_combout\,
	datac => \A1|Equal0~4_combout\,
	datad => \A1|Add0~34_combout\,
	combout => \A1|count~11_combout\);

-- Location: FF_X113_Y32_N7
\A1|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~11_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(17));

-- Location: LCCOMB_X112_Y32_N4
\A1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~36_combout\ = (\A1|count\(18) & (\A1|Add0~35\ $ (GND))) # (!\A1|count\(18) & (!\A1|Add0~35\ & VCC))
-- \A1|Add0~37\ = CARRY((\A1|count\(18) & !\A1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(18),
	datad => VCC,
	cin => \A1|Add0~35\,
	combout => \A1|Add0~36_combout\,
	cout => \A1|Add0~37\);

-- Location: FF_X112_Y32_N5
\A1|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~36_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(18));

-- Location: LCCOMB_X112_Y32_N6
\A1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~38_combout\ = (\A1|count\(19) & (!\A1|Add0~37\)) # (!\A1|count\(19) & ((\A1|Add0~37\) # (GND)))
-- \A1|Add0~39\ = CARRY((!\A1|Add0~37\) # (!\A1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(19),
	datad => VCC,
	cin => \A1|Add0~37\,
	combout => \A1|Add0~38_combout\,
	cout => \A1|Add0~39\);

-- Location: LCCOMB_X113_Y32_N20
\A1|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~10_combout\ = (\A1|Add0~38_combout\ & ((!\A1|Equal0~9_combout\) # (!\A1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~4_combout\,
	datac => \A1|Add0~38_combout\,
	datad => \A1|Equal0~9_combout\,
	combout => \A1|count~10_combout\);

-- Location: FF_X113_Y32_N21
\A1|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~10_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(19));

-- Location: LCCOMB_X112_Y32_N8
\A1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~40_combout\ = (\A1|count\(20) & (\A1|Add0~39\ $ (GND))) # (!\A1|count\(20) & (!\A1|Add0~39\ & VCC))
-- \A1|Add0~41\ = CARRY((\A1|count\(20) & !\A1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(20),
	datad => VCC,
	cin => \A1|Add0~39\,
	combout => \A1|Add0~40_combout\,
	cout => \A1|Add0~41\);

-- Location: LCCOMB_X113_Y32_N12
\A1|count~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~22_combout\ = (\A1|Add0~40_combout\ & ((!\A1|Equal0~4_combout\) # (!\A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~9_combout\,
	datac => \A1|Equal0~4_combout\,
	datad => \A1|Add0~40_combout\,
	combout => \A1|count~22_combout\);

-- Location: FF_X113_Y32_N13
\A1|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~22_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(20));

-- Location: LCCOMB_X112_Y32_N10
\A1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~42_combout\ = (\A1|count\(21) & (!\A1|Add0~41\)) # (!\A1|count\(21) & ((\A1|Add0~41\) # (GND)))
-- \A1|Add0~43\ = CARRY((!\A1|Add0~41\) # (!\A1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(21),
	datad => VCC,
	cin => \A1|Add0~41\,
	combout => \A1|Add0~42_combout\,
	cout => \A1|Add0~43\);

-- Location: LCCOMB_X113_Y32_N10
\A1|count~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~21_combout\ = (\A1|Add0~42_combout\ & ((!\A1|Equal0~4_combout\) # (!\A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~9_combout\,
	datac => \A1|Equal0~4_combout\,
	datad => \A1|Add0~42_combout\,
	combout => \A1|count~21_combout\);

-- Location: FF_X113_Y32_N11
\A1|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~21_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(21));

-- Location: LCCOMB_X112_Y32_N12
\A1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~44_combout\ = (\A1|count\(22) & (\A1|Add0~43\ $ (GND))) # (!\A1|count\(22) & (!\A1|Add0~43\ & VCC))
-- \A1|Add0~45\ = CARRY((\A1|count\(22) & !\A1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(22),
	datad => VCC,
	cin => \A1|Add0~43\,
	combout => \A1|Add0~44_combout\,
	cout => \A1|Add0~45\);

-- Location: LCCOMB_X113_Y32_N28
\A1|count~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~20_combout\ = (\A1|Add0~44_combout\ & ((!\A1|Equal0~4_combout\) # (!\A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~9_combout\,
	datac => \A1|Equal0~4_combout\,
	datad => \A1|Add0~44_combout\,
	combout => \A1|count~20_combout\);

-- Location: FF_X113_Y32_N29
\A1|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~20_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(22));

-- Location: LCCOMB_X112_Y32_N14
\A1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~46_combout\ = (\A1|count\(23) & (!\A1|Add0~45\)) # (!\A1|count\(23) & ((\A1|Add0~45\) # (GND)))
-- \A1|Add0~47\ = CARRY((!\A1|Add0~45\) # (!\A1|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(23),
	datad => VCC,
	cin => \A1|Add0~45\,
	combout => \A1|Add0~46_combout\,
	cout => \A1|Add0~47\);

-- Location: LCCOMB_X113_Y32_N14
\A1|count~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~19_combout\ = (\A1|Add0~46_combout\ & ((!\A1|Equal0~4_combout\) # (!\A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~9_combout\,
	datac => \A1|Equal0~4_combout\,
	datad => \A1|Add0~46_combout\,
	combout => \A1|count~19_combout\);

-- Location: FF_X113_Y32_N15
\A1|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~19_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(23));

-- Location: LCCOMB_X112_Y32_N16
\A1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~48_combout\ = (\A1|count\(24) & (\A1|Add0~47\ $ (GND))) # (!\A1|count\(24) & (!\A1|Add0~47\ & VCC))
-- \A1|Add0~49\ = CARRY((\A1|count\(24) & !\A1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(24),
	datad => VCC,
	cin => \A1|Add0~47\,
	combout => \A1|Add0~48_combout\,
	cout => \A1|Add0~49\);

-- Location: FF_X112_Y32_N17
\A1|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~48_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(24));

-- Location: LCCOMB_X112_Y32_N18
\A1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~50_combout\ = (\A1|count\(25) & (!\A1|Add0~49\)) # (!\A1|count\(25) & ((\A1|Add0~49\) # (GND)))
-- \A1|Add0~51\ = CARRY((!\A1|Add0~49\) # (!\A1|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(25),
	datad => VCC,
	cin => \A1|Add0~49\,
	combout => \A1|Add0~50_combout\,
	cout => \A1|Add0~51\);

-- Location: LCCOMB_X113_Y32_N26
\A1|count~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|count~18_combout\ = (\A1|Add0~50_combout\ & ((!\A1|Equal0~4_combout\) # (!\A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~9_combout\,
	datac => \A1|Equal0~4_combout\,
	datad => \A1|Add0~50_combout\,
	combout => \A1|count~18_combout\);

-- Location: FF_X113_Y32_N27
\A1|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|count~18_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(25));

-- Location: LCCOMB_X112_Y32_N20
\A1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~52_combout\ = (\A1|count\(26) & (\A1|Add0~51\ $ (GND))) # (!\A1|count\(26) & (!\A1|Add0~51\ & VCC))
-- \A1|Add0~53\ = CARRY((\A1|count\(26) & !\A1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(26),
	datad => VCC,
	cin => \A1|Add0~51\,
	combout => \A1|Add0~52_combout\,
	cout => \A1|Add0~53\);

-- Location: FF_X112_Y32_N21
\A1|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~52_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(26));

-- Location: LCCOMB_X112_Y32_N22
\A1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~54_combout\ = (\A1|count\(27) & (!\A1|Add0~53\)) # (!\A1|count\(27) & ((\A1|Add0~53\) # (GND)))
-- \A1|Add0~55\ = CARRY((!\A1|Add0~53\) # (!\A1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(27),
	datad => VCC,
	cin => \A1|Add0~53\,
	combout => \A1|Add0~54_combout\,
	cout => \A1|Add0~55\);

-- Location: FF_X112_Y32_N23
\A1|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~54_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(27));

-- Location: LCCOMB_X112_Y32_N24
\A1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~56_combout\ = (\A1|count\(28) & (\A1|Add0~55\ $ (GND))) # (!\A1|count\(28) & (!\A1|Add0~55\ & VCC))
-- \A1|Add0~57\ = CARRY((\A1|count\(28) & !\A1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(28),
	datad => VCC,
	cin => \A1|Add0~55\,
	combout => \A1|Add0~56_combout\,
	cout => \A1|Add0~57\);

-- Location: FF_X112_Y32_N25
\A1|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~56_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(28));

-- Location: LCCOMB_X112_Y32_N26
\A1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~58_combout\ = (\A1|count\(29) & (!\A1|Add0~57\)) # (!\A1|count\(29) & ((\A1|Add0~57\) # (GND)))
-- \A1|Add0~59\ = CARRY((!\A1|Add0~57\) # (!\A1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(29),
	datad => VCC,
	cin => \A1|Add0~57\,
	combout => \A1|Add0~58_combout\,
	cout => \A1|Add0~59\);

-- Location: FF_X112_Y32_N27
\A1|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~58_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(29));

-- Location: LCCOMB_X112_Y32_N28
\A1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~60_combout\ = (\A1|count\(30) & (\A1|Add0~59\ $ (GND))) # (!\A1|count\(30) & (!\A1|Add0~59\ & VCC))
-- \A1|Add0~61\ = CARRY((\A1|count\(30) & !\A1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A1|count\(30),
	datad => VCC,
	cin => \A1|Add0~59\,
	combout => \A1|Add0~60_combout\,
	cout => \A1|Add0~61\);

-- Location: FF_X112_Y32_N29
\A1|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~60_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(30));

-- Location: LCCOMB_X112_Y32_N30
\A1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Add0~62_combout\ = \A1|count\(31) $ (\A1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(31),
	cin => \A1|Add0~61\,
	combout => \A1|Add0~62_combout\);

-- Location: FF_X112_Y32_N31
\A1|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|Add0~62_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|count\(31));

-- Location: LCCOMB_X113_Y32_N16
\A1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~0_combout\ = (!\A1|count\(29) & (!\A1|count\(31) & (!\A1|count\(28) & !\A1|count\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(29),
	datab => \A1|count\(31),
	datac => \A1|count\(28),
	datad => \A1|count\(30),
	combout => \A1|Equal0~0_combout\);

-- Location: LCCOMB_X113_Y32_N18
\A1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~2_combout\ = (\A1|count\(20) & (\A1|count\(22) & (\A1|count\(23) & \A1|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(20),
	datab => \A1|count\(22),
	datac => \A1|count\(23),
	datad => \A1|count\(21),
	combout => \A1|Equal0~2_combout\);

-- Location: LCCOMB_X113_Y32_N4
\A1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~1_combout\ = (\A1|count\(25) & (!\A1|count\(26) & (!\A1|count\(24) & !\A1|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(25),
	datab => \A1|count\(26),
	datac => \A1|count\(24),
	datad => \A1|count\(27),
	combout => \A1|Equal0~1_combout\);

-- Location: LCCOMB_X113_Y32_N8
\A1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~3_combout\ = (!\A1|count\(16) & (\A1|count\(19) & (!\A1|count\(18) & \A1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|count\(16),
	datab => \A1|count\(19),
	datac => \A1|count\(18),
	datad => \A1|count\(17),
	combout => \A1|Equal0~3_combout\);

-- Location: LCCOMB_X114_Y32_N30
\A1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|Equal0~4_combout\ = (\A1|Equal0~0_combout\ & (\A1|Equal0~2_combout\ & (\A1|Equal0~1_combout\ & \A1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|Equal0~0_combout\,
	datab => \A1|Equal0~2_combout\,
	datac => \A1|Equal0~1_combout\,
	datad => \A1|Equal0~3_combout\,
	combout => \A1|Equal0~4_combout\);

-- Location: LCCOMB_X114_Y32_N18
\A1|temp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|temp~0_combout\ = \A1|temp~q\ $ (((\A1|Equal0~4_combout\ & \A1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A1|temp~q\,
	datac => \A1|Equal0~4_combout\,
	datad => \A1|Equal0~9_combout\,
	combout => \A1|temp~0_combout\);

-- Location: LCCOMB_X114_Y32_N0
\A1|temp~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \A1|temp~feeder_combout\ = \A1|temp~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \A1|temp~0_combout\,
	combout => \A1|temp~feeder_combout\);

-- Location: FF_X114_Y32_N1
\A1|temp\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \A1|temp~feeder_combout\,
	clrn => \ALT_INV_SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A1|temp~q\);

-- Location: CLKCTRL_G5
\A1|temp~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \A1|temp~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \A1|temp~clkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X107_Y28_N28
\A2|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|process_0~0_combout\ = (!\SW[3]~input_o\ & (!\SW[4]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \A2|process_0~0_combout\);

-- Location: LCCOMB_X107_Y28_N18
\A2|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|Equal4~0_combout\ = (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (!\SW[3]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \A2|Equal4~0_combout\);

-- Location: LCCOMB_X106_Y28_N24
\A2|next_state~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~36_combout\ = (!\SW[0]~input_o\ & (\A2|Equal4~0_combout\ & !\A2|next_state.ST6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \A2|Equal4~0_combout\,
	datac => \A2|next_state.ST6~q\,
	combout => \A2|next_state~36_combout\);

-- Location: LCCOMB_X105_Y28_N6
\A2|next_state~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~40_combout\ = (\A2|process_0~0_combout\ & \A2|next_state.ST2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|process_0~0_combout\,
	datac => \A2|next_state.ST2~q\,
	combout => \A2|next_state~40_combout\);

-- Location: FF_X105_Y28_N7
\A2|next_state.ST3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST3~q\);

-- Location: LCCOMB_X107_Y28_N4
\A2|next_state~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~30_combout\ = (!\SW[3]~input_o\ & (!\SW[4]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \A2|next_state~30_combout\);

-- Location: LCCOMB_X106_Y28_N28
\A2|WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|WideOr0~1_combout\ = (!\A2|next_state.ST4~q\ & (!\A2|next_state.ST5~q\ & (!\A2|next_state.ST7~q\ & !\A2|next_state.ST6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state.ST4~q\,
	datab => \A2|next_state.ST5~q\,
	datac => \A2|next_state.ST7~q\,
	datad => \A2|next_state.ST6~q\,
	combout => \A2|WideOr0~1_combout\);

-- Location: LCCOMB_X106_Y28_N26
\A2|next_state~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~31_combout\ = (\A2|next_state~30_combout\ & (\A2|WideOr0~1_combout\ & (!\A2|next_state.ST3~q\ & \A2|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state~30_combout\,
	datab => \A2|WideOr0~1_combout\,
	datac => \A2|next_state.ST3~q\,
	datad => \A2|WideOr1~0_combout\,
	combout => \A2|next_state~31_combout\);

-- Location: LCCOMB_X106_Y28_N10
\A2|next_state~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~37_combout\ = (\A2|process_0~0_combout\ & (((\A2|next_state.ST3~q\)))) # (!\A2|process_0~0_combout\ & (\A2|next_state~36_combout\ & ((!\A2|next_state~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state~36_combout\,
	datab => \A2|next_state.ST3~q\,
	datac => \A2|next_state~31_combout\,
	datad => \A2|process_0~0_combout\,
	combout => \A2|next_state~37_combout\);

-- Location: FF_X106_Y28_N11
\A2|next_state.ST4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST4~q\);

-- Location: LCCOMB_X106_Y28_N4
\A2|next_state~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~38_combout\ = (\A2|next_state.ST4~q\ & \A2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A2|next_state.ST4~q\,
	datad => \A2|process_0~0_combout\,
	combout => \A2|next_state~38_combout\);

-- Location: FF_X106_Y28_N5
\A2|next_state.ST5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST5~q\);

-- Location: LCCOMB_X106_Y28_N2
\A2|next_state~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~39_combout\ = (\A2|next_state.ST5~q\ & \A2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A2|next_state.ST5~q\,
	datad => \A2|process_0~0_combout\,
	combout => \A2|next_state~39_combout\);

-- Location: FF_X106_Y28_N3
\A2|next_state.ST6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST6~q\);

-- Location: LCCOMB_X107_Y28_N12
\A2|next_state~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~43_combout\ = (\SW[2]~input_o\) # ((\SW[4]~input_o\) # (\SW[1]~input_o\ $ (!\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \A2|next_state~43_combout\);

-- Location: LCCOMB_X107_Y28_N2
\A2|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|Equal3~0_combout\ = (\SW[1]~input_o\ & (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \A2|Equal3~0_combout\);

-- Location: LCCOMB_X106_Y28_N0
\A2|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|WideOr0~0_combout\ = (!\A2|next_state.ST6~q\ & (!\A2|next_state.ST5~q\ & !\A2|next_state.ST4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2|next_state.ST6~q\,
	datac => \A2|next_state.ST5~q\,
	datad => \A2|next_state.ST4~q\,
	combout => \A2|WideOr0~0_combout\);

-- Location: LCCOMB_X106_Y28_N16
\A2|next_state~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~42_combout\ = (\A2|Equal3~0_combout\ & (!\A2|process_0~0_combout\ & !\A2|WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Equal3~0_combout\,
	datab => \A2|process_0~0_combout\,
	datad => \A2|WideOr0~0_combout\,
	combout => \A2|next_state~42_combout\);

-- Location: LCCOMB_X106_Y28_N22
\A2|next_state~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~44_combout\ = (\A2|next_state~42_combout\) # ((\A2|next_state.ST6~q\ & (\A2|Equal4~0_combout\ & \A2|next_state~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state.ST6~q\,
	datab => \A2|Equal4~0_combout\,
	datac => \A2|next_state~43_combout\,
	datad => \A2|next_state~42_combout\,
	combout => \A2|next_state~44_combout\);

-- Location: LCCOMB_X107_Y28_N30
\A2|next_state~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~56_combout\ = (\SW[3]~input_o\ & (!\SW[1]~input_o\ & ((!\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (\A2|next_state.ST10~q\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \A2|next_state.ST10~q\,
	datac => \SW[3]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \A2|next_state~56_combout\);

-- Location: LCCOMB_X107_Y28_N16
\A2|next_state~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~57_combout\ = (!\SW[0]~input_o\ & (!\A2|process_0~0_combout\ & (\A2|next_state~56_combout\ & !\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \A2|process_0~0_combout\,
	datac => \A2|next_state~56_combout\,
	datad => \SW[4]~input_o\,
	combout => \A2|next_state~57_combout\);

-- Location: FF_X107_Y28_N17
\A2|next_state.ST10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST10~q\);

-- Location: LCCOMB_X105_Y28_N2
\A2|next_state~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~55_combout\ = (\A2|process_0~0_combout\ & \A2|next_state.ST10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A2|process_0~0_combout\,
	datad => \A2|next_state.ST10~q\,
	combout => \A2|next_state~55_combout\);

-- Location: LCCOMB_X106_Y28_N8
\A2|next_state~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~47_combout\ = (!\A2|process_0~0_combout\ & (!\SW[0]~input_o\ & \A2|next_state~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2|process_0~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \A2|next_state~30_combout\,
	combout => \A2|next_state~47_combout\);

-- Location: LCCOMB_X105_Y28_N18
\A2|next_state~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~48_combout\ = (\A2|next_state.ST3~q\) # (((!\A2|WideOr0~1_combout\) # (!\A2|WideOr1~0_combout\)) # (!\A2|next_state~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state.ST3~q\,
	datab => \A2|next_state~47_combout\,
	datac => \A2|WideOr1~0_combout\,
	datad => \A2|WideOr0~1_combout\,
	combout => \A2|next_state~48_combout\);

-- Location: FF_X105_Y28_N3
\A2|next_state.ST11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~55_combout\,
	ena => \A2|next_state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST11~q\);

-- Location: LCCOMB_X105_Y28_N20
\A2|next_state~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~54_combout\ = (\A2|process_0~0_combout\ & \A2|next_state.ST11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|process_0~0_combout\,
	datad => \A2|next_state.ST11~q\,
	combout => \A2|next_state~54_combout\);

-- Location: FF_X105_Y28_N21
\A2|next_state.ST12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~54_combout\,
	ena => \A2|next_state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST12~q\);

-- Location: LCCOMB_X105_Y28_N24
\A2|next_state~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~53_combout\ = (\A2|process_0~0_combout\ & \A2|next_state.ST12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A2|process_0~0_combout\,
	datad => \A2|next_state.ST12~q\,
	combout => \A2|next_state~53_combout\);

-- Location: FF_X105_Y28_N25
\A2|next_state.ST13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~53_combout\,
	ena => \A2|next_state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST13~q\);

-- Location: LCCOMB_X105_Y28_N14
\A2|next_state~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~49_combout\ = (\A2|next_state.ST13~q\ & \A2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2|next_state.ST13~q\,
	datac => \A2|process_0~0_combout\,
	combout => \A2|next_state~49_combout\);

-- Location: FF_X105_Y28_N15
\A2|next_state.ST14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~49_combout\,
	ena => \A2|next_state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST14~q\);

-- Location: LCCOMB_X106_Y28_N6
\A2|next_state~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~41_combout\ = (\A2|next_state.ST6~q\) # (\A2|next_state.ST14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A2|next_state.ST6~q\,
	datad => \A2|next_state.ST14~q\,
	combout => \A2|next_state~41_combout\);

-- Location: LCCOMB_X106_Y28_N14
\A2|next_state~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~45_combout\ = (\SW[0]~input_o\ & (\A2|process_0~0_combout\ & ((\A2|next_state~41_combout\)))) # (!\SW[0]~input_o\ & ((\A2|next_state~44_combout\) # ((\A2|process_0~0_combout\ & \A2|next_state~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \A2|process_0~0_combout\,
	datac => \A2|next_state~44_combout\,
	datad => \A2|next_state~41_combout\,
	combout => \A2|next_state~45_combout\);

-- Location: FF_X106_Y28_N15
\A2|next_state.ST7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST7~q\);

-- Location: LCCOMB_X106_Y28_N30
\A2|next_state~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~33_combout\ = (\A2|Equal3~0_combout\ & (((\A2|next_state.ST1~q\) # (\A2|next_state.ST2~q\)) # (!\A2|next_state.ST0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state.ST0~q\,
	datab => \A2|Equal3~0_combout\,
	datac => \A2|next_state.ST1~q\,
	datad => \A2|next_state.ST2~q\,
	combout => \A2|next_state~33_combout\);

-- Location: LCCOMB_X106_Y28_N20
\A2|next_state~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~32_combout\ = (\A2|Equal3~0_combout\ & (\A2|WideOr0~0_combout\ & ((\A2|next_state.ST3~q\) # (!\A2|WideOr0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|Equal3~0_combout\,
	datab => \A2|WideOr0~0_combout\,
	datac => \A2|next_state.ST3~q\,
	datad => \A2|WideOr0~1_combout\,
	combout => \A2|next_state~32_combout\);

-- Location: LCCOMB_X106_Y28_N18
\A2|next_state~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~58_combout\ = (\A2|next_state~31_combout\ & (((!\A2|next_state.ST0~q\)))) # (!\A2|next_state~31_combout\ & ((\A2|next_state~33_combout\) # ((\A2|next_state~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state~33_combout\,
	datab => \A2|next_state.ST0~q\,
	datac => \A2|next_state~31_combout\,
	datad => \A2|next_state~32_combout\,
	combout => \A2|next_state~58_combout\);

-- Location: LCCOMB_X106_Y28_N12
\A2|next_state~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~59_combout\ = (\A2|process_0~0_combout\ & (!\A2|next_state.ST7~q\)) # (!\A2|process_0~0_combout\ & (((!\SW[0]~input_o\ & !\A2|next_state~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state.ST7~q\,
	datab => \A2|process_0~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \A2|next_state~58_combout\,
	combout => \A2|next_state~59_combout\);

-- Location: FF_X106_Y28_N13
\A2|next_state.ST0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST0~q\);

-- Location: LCCOMB_X105_Y28_N16
\A2|next_state~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~34_combout\ = (!\A2|next_state.ST0~q\ & \A2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2|next_state.ST0~q\,
	datac => \A2|process_0~0_combout\,
	combout => \A2|next_state~34_combout\);

-- Location: FF_X105_Y28_N17
\A2|next_state.ST1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST1~q\);

-- Location: LCCOMB_X105_Y28_N22
\A2|next_state~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~35_combout\ = (\A2|process_0~0_combout\ & \A2|next_state.ST1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|process_0~0_combout\,
	datad => \A2|next_state.ST1~q\,
	combout => \A2|next_state~35_combout\);

-- Location: FF_X105_Y28_N23
\A2|next_state.ST2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST2~q\);

-- Location: LCCOMB_X105_Y28_N8
\A2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|WideOr1~0_combout\ = (!\A2|next_state.ST2~q\ & (\A2|next_state.ST0~q\ & !\A2|next_state.ST1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state.ST2~q\,
	datac => \A2|next_state.ST0~q\,
	datad => \A2|next_state.ST1~q\,
	combout => \A2|WideOr1~0_combout\);

-- Location: LCCOMB_X107_Y28_N26
\A2|next_state~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~51_combout\ = (\A2|next_state~43_combout\ & (!\A2|process_0~0_combout\ & (!\SW[0]~input_o\ & !\A2|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state~43_combout\,
	datab => \A2|process_0~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \A2|Equal4~0_combout\,
	combout => \A2|next_state~51_combout\);

-- Location: LCCOMB_X105_Y28_N30
\A2|next_state~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~50_combout\ = (\A2|process_0~0_combout\ & ((\A2|next_state.ST9~q\) # ((\A2|next_state.ST8~q\ & !\A2|next_state~48_combout\)))) # (!\A2|process_0~0_combout\ & (\A2|next_state.ST8~q\ & ((!\A2|next_state~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|process_0~0_combout\,
	datab => \A2|next_state.ST8~q\,
	datac => \A2|next_state.ST9~q\,
	datad => \A2|next_state~48_combout\,
	combout => \A2|next_state~50_combout\);

-- Location: LCCOMB_X105_Y28_N28
\A2|next_state~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~52_combout\ = (\A2|next_state~50_combout\) # ((\A2|next_state~51_combout\ & !\A2|next_state~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|next_state~51_combout\,
	datac => \A2|next_state~50_combout\,
	datad => \A2|next_state~31_combout\,
	combout => \A2|next_state~52_combout\);

-- Location: FF_X105_Y28_N29
\A2|next_state.ST8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST8~q\);

-- Location: LCCOMB_X105_Y28_N4
\A2|next_state~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|next_state~46_combout\ = (\A2|next_state.ST8~q\ & \A2|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A2|next_state.ST8~q\,
	datac => \A2|process_0~0_combout\,
	combout => \A2|next_state~46_combout\);

-- Location: FF_X105_Y28_N5
\A2|next_state.ST9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \A1|ALT_INV_temp~clkctrl_outclk\,
	d => \A2|next_state~46_combout\,
	ena => \A2|next_state~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \A2|next_state.ST9~q\);

-- Location: LCCOMB_X105_Y28_N10
\A2|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|WideOr1~combout\ = ((\A2|next_state.ST9~q\) # (\A2|next_state.ST3~q\)) # (!\A2|WideOr1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A2|WideOr1~0_combout\,
	datab => \A2|next_state.ST9~q\,
	datad => \A2|next_state.ST3~q\,
	combout => \A2|WideOr1~combout\);

-- Location: LCCOMB_X105_Y28_N0
\A2|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \A2|WideOr0~combout\ = (\A2|next_state.ST9~q\) # (!\A2|WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A2|next_state.ST9~q\,
	datad => \A2|WideOr0~1_combout\,
	combout => \A2|WideOr0~combout\);

ww_LEDG(0) <= \LEDG[0]~output_o\;

ww_LEDG(1) <= \LEDG[1]~output_o\;

ww_LEDG(2) <= \LEDG[2]~output_o\;

ww_LEDG(3) <= \LEDG[3]~output_o\;

ww_LEDG(4) <= \LEDG[4]~output_o\;

ww_LEDG(5) <= \LEDG[5]~output_o\;

ww_LEDG(6) <= \LEDG[6]~output_o\;

ww_LEDG(7) <= \LEDG[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


