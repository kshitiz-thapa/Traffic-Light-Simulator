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
-- Generated on "12/01/2018 21:59:33"
                                                             
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
SIGNAL LEDG : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL SW : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT traffic
	PORT (
	clock_50 : IN STD_LOGIC;
	LEDG : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	LEDR : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	SW : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : traffic
	PORT MAP (
-- list connections between master ports and signals
	clock_50 => clock_50,
	LEDG => LEDG,
	LEDR => LEDR,
	SW => SW
	);

-- clock_50
t_prcs_clock_50: PROCESS
BEGIN
LOOP
	clock_50 <= '0';
	WAIT FOR 5000 ps;
	clock_50 <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock_50;
-- SW[1]
t_prcs_SW_1: PROCESS
BEGIN
LOOP
	SW(1) <= '0';
	WAIT FOR 25000 ps;
	SW(1) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_1;
-- SW[0]
t_prcs_SW_0: PROCESS
BEGIN
LOOP
	SW(0) <= '0';
	WAIT FOR 25000 ps;
	SW(0) <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_SW_0;
END traffic_arch;
