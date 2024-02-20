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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/02/2018 01:21:33"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          traffic
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY traffic_vhd_vec_tst IS
END traffic_vhd_vec_tst;
ARCHITECTURE traffic_arch OF traffic_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_50 : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LEDG : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT traffic
	PORT (
	clock_50 : IN STD_LOGIC;
	HEX0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	LEDG : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : traffic
	PORT MAP (
-- list connections between master ports and signals
	clock_50 => clock_50,
	HEX0 => HEX0,
	HEX1 => HEX1,
	LEDG => LEDG,
	LEDR => LEDR,
	SW => SW
	);

-- clock_50
t_prcs_clock_50: PROCESS
BEGIN
LOOP
	clock_50 <= '0';
	WAIT FOR 50000 ps;
	clock_50 <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_50;
-- SW[4]
t_prcs_SW_4: PROCESS
BEGIN
LOOP
	SW(4) <= '0';
	WAIT FOR 400000 ps;
	SW(4) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_4;
-- SW[3]
t_prcs_SW_3: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		SW(3) <= '0';
		WAIT FOR 320000 ps;
		SW(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	SW(3) <= '0';
WAIT;
END PROCESS t_prcs_SW_3;
-- SW[2]
t_prcs_SW_2: PROCESS
BEGIN
LOOP
	SW(2) <= '0';
	WAIT FOR 50000 ps;
	SW(2) <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_2;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
LOOP
	SW(1) <= '0';
	WAIT FOR 100000 ps;
	SW(1) <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
	FOR i IN 1 TO 2
	LOOP
		SW(0) <= '0';
		WAIT FOR 360000 ps;
		SW(0) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	SW(0) <= '0';
WAIT;
END PROCESS t_prcs_SW_0;
END traffic_arch;
