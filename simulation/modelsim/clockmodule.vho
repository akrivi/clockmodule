-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "10/04/2016 15:43:26"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clockmodule IS
    PORT (
	CLOCK_50 : IN std_logic;
	VGA_R : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(7 DOWNTO 0);
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	VGA_CLK : BUFFER std_logic;
	VGA_BLANK_N : BUFFER std_logic;
	VGA_SYNC_N : BUFFER std_logic;
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END clockmodule;

-- Design Ports Information
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF clockmodule IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \clk25~0_combout\ : std_logic;
SIGNAL \clk25~q\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Inst_vga_controller|h_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~21_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~22\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~25_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|h_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~26\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~30\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~33_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~34\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~13_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|h_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~14\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~17_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|h_count[5]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|h_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~18\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~5_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan0~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|h_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~6\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~37_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~38\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~1_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|h_count[8]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~2\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~9_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|h_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan0~2_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan0~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|h_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~29_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|h_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~1_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~2\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~5_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~6\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~17_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~18\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~9_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~10\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~13_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~14\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~21_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~22\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~29_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~30\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~33_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~34\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~25_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~26\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~37_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|v_count~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|v_count~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|v_count~2_combout\ : std_logic;
SIGNAL \Inst_vga_controller|v_count~4_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|v_count~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[0]~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[0]~_wirecell_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[1]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~5_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~4_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~2_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[2]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[3]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[4]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[5]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[6]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[7]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[8]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[9]~feeder_combout\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \VGA_R[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan6~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~8_combout\ : std_logic;
SIGNAL \Inst_vga_controller|disp_ena~q\ : std_logic;
SIGNAL \VGA_R[0]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \VGA_R[1]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[1]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \VGA_R[2]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[2]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \VGA_R[3]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[3]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \VGA_R[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[4]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \VGA_R[5]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[5]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \VGA_R[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[6]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \VGA_R[7]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_R[7]~reg0_q\ : std_logic;
SIGNAL \Inst_vga_controller|column[0]~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|column[0]~_wirecell_combout\ : std_logic;
SIGNAL \VGA_G[0]~reg0_q\ : std_logic;
SIGNAL \VGA_G[1]~reg0_q\ : std_logic;
SIGNAL \VGA_G[2]~reg0_q\ : std_logic;
SIGNAL \VGA_G[3]~reg0_q\ : std_logic;
SIGNAL \VGA_G[4]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[4]~reg0_q\ : std_logic;
SIGNAL \VGA_G[5]~reg0_q\ : std_logic;
SIGNAL \VGA_G[6]~reg0_q\ : std_logic;
SIGNAL \VGA_G[7]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_G[7]~reg0_q\ : std_logic;
SIGNAL \VGA_B[0]~reg0_q\ : std_logic;
SIGNAL \VGA_B[1]~reg0_q\ : std_logic;
SIGNAL \VGA_B[2]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[2]~reg0_q\ : std_logic;
SIGNAL \VGA_B[3]~reg0_q\ : std_logic;
SIGNAL \VGA_B[4]~reg0_q\ : std_logic;
SIGNAL \VGA_B[5]~reg0_q\ : std_logic;
SIGNAL \VGA_B[6]~reg0feeder_combout\ : std_logic;
SIGNAL \VGA_B[6]~reg0_q\ : std_logic;
SIGNAL \VGA_B[7]~reg0_q\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~2_combout\ : std_logic;
SIGNAL \Inst_vga_controller|h_sync~q\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~5_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~6_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~4_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~7_combout\ : std_logic;
SIGNAL \Inst_vga_controller|v_sync~q\ : std_logic;
SIGNAL \Inst_vga_controller|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Inst_vga_controller|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Inst_vga_controller|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Inst_vga_controller|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Inst_vga_controller|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Inst_vga_controller|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Inst_vga_controller|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_row\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \Inst_vga_controller|ALT_INV_column\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a1\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a2\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a3\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a4\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a5\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a6\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portbdataout\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a7\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_h_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_h_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_h_count[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_h_count[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_h_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_h_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_h_count[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_h_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_LessThan7~5_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_LessThan7~4_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_LessThan7~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_v_count~4_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_v_count~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_process_0~6_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_process_0~5_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_LessThan7~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_process_0~4_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_process_0~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_v_count~2_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_v_count~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_v_count~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_process_0~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_disp_ena~q\ : std_logic;
SIGNAL \ALT_INV_clk25~q\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~29_sumout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_CLK <= ww_VGA_CLK;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_SYNC_N <= ww_VGA_SYNC_N;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\Inst_vga_controller|row\(9) & \Inst_vga_controller|row\(8) & \Inst_vga_controller|row\(7) & \Inst_vga_controller|row\(6) & \Inst_vga_controller|row\(5) & 
\Inst_vga_controller|row\(4) & \Inst_vga_controller|row\(3) & \Inst_vga_controller|row\(2) & \Inst_vga_controller|row\(1) & \Inst_vga_controller|row[0]~_wirecell_combout\);

\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ <= \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a1\ <= \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a2\ <= \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a3\ <= \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a4\ <= \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a5\ <= \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a6\ <= \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a7\ <= \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\Inst_vga_controller|ALT_INV_Add1~25_sumout\ <= NOT \Inst_vga_controller|Add1~25_sumout\;
\Inst_vga_controller|ALT_INV_Add1~21_sumout\ <= NOT \Inst_vga_controller|Add1~21_sumout\;
\Inst_vga_controller|ALT_INV_Add1~17_sumout\ <= NOT \Inst_vga_controller|Add1~17_sumout\;
\Inst_vga_controller|ALT_INV_Add1~13_sumout\ <= NOT \Inst_vga_controller|Add1~13_sumout\;
\Inst_vga_controller|ALT_INV_Add1~9_sumout\ <= NOT \Inst_vga_controller|Add1~9_sumout\;
\Inst_vga_controller|ALT_INV_Add1~5_sumout\ <= NOT \Inst_vga_controller|Add1~5_sumout\;
\Inst_vga_controller|ALT_INV_v_count\(4) <= NOT \Inst_vga_controller|v_count\(4);
\Inst_vga_controller|ALT_INV_v_count\(5) <= NOT \Inst_vga_controller|v_count\(5);
\Inst_vga_controller|ALT_INV_v_count\(6) <= NOT \Inst_vga_controller|v_count\(6);
\Inst_vga_controller|ALT_INV_v_count\(7) <= NOT \Inst_vga_controller|v_count\(7);
\Inst_vga_controller|ALT_INV_v_count\(8) <= NOT \Inst_vga_controller|v_count\(8);
\Inst_vga_controller|ALT_INV_v_count\(2) <= NOT \Inst_vga_controller|v_count\(2);
\Inst_vga_controller|ALT_INV_v_count\(3) <= NOT \Inst_vga_controller|v_count\(3);
\Inst_vga_controller|ALT_INV_v_count\(9) <= NOT \Inst_vga_controller|v_count\(9);
\Inst_vga_controller|ALT_INV_Add1~1_sumout\ <= NOT \Inst_vga_controller|Add1~1_sumout\;
\Inst_vga_controller|ALT_INV_v_count\(0) <= NOT \Inst_vga_controller|v_count\(0);
\Inst_vga_controller|ALT_INV_v_count\(1) <= NOT \Inst_vga_controller|v_count\(1);
\Inst_vga_controller|ALT_INV_Add0~37_sumout\ <= NOT \Inst_vga_controller|Add0~37_sumout\;
\Inst_vga_controller|ALT_INV_Add0~33_sumout\ <= NOT \Inst_vga_controller|Add0~33_sumout\;
\Inst_vga_controller|ALT_INV_Add0~29_sumout\ <= NOT \Inst_vga_controller|Add0~29_sumout\;
\Inst_vga_controller|ALT_INV_Add0~25_sumout\ <= NOT \Inst_vga_controller|Add0~25_sumout\;
\Inst_vga_controller|ALT_INV_Add0~21_sumout\ <= NOT \Inst_vga_controller|Add0~21_sumout\;
\Inst_vga_controller|ALT_INV_Add0~17_sumout\ <= NOT \Inst_vga_controller|Add0~17_sumout\;
\Inst_vga_controller|ALT_INV_Add0~13_sumout\ <= NOT \Inst_vga_controller|Add0~13_sumout\;
\Inst_vga_controller|ALT_INV_h_count\(9) <= NOT \Inst_vga_controller|h_count\(9);
\Inst_vga_controller|ALT_INV_h_count\(8) <= NOT \Inst_vga_controller|h_count\(8);
\Inst_vga_controller|ALT_INV_h_count\(5) <= NOT \Inst_vga_controller|h_count\(5);
\Inst_vga_controller|ALT_INV_h_count\(6) <= NOT \Inst_vga_controller|h_count\(6);
\Inst_vga_controller|ALT_INV_h_count\(0) <= NOT \Inst_vga_controller|h_count\(0);
\Inst_vga_controller|ALT_INV_h_count\(1) <= NOT \Inst_vga_controller|h_count\(1);
\Inst_vga_controller|ALT_INV_h_count\(2) <= NOT \Inst_vga_controller|h_count\(2);
\Inst_vga_controller|ALT_INV_h_count\(3) <= NOT \Inst_vga_controller|h_count\(3);
\Inst_vga_controller|ALT_INV_h_count\(4) <= NOT \Inst_vga_controller|h_count\(4);
\Inst_vga_controller|ALT_INV_h_count\(7) <= NOT \Inst_vga_controller|h_count\(7);
\Inst_vga_controller|ALT_INV_Add0~9_sumout\ <= NOT \Inst_vga_controller|Add0~9_sumout\;
\Inst_vga_controller|ALT_INV_Add0~5_sumout\ <= NOT \Inst_vga_controller|Add0~5_sumout\;
\Inst_vga_controller|ALT_INV_Add0~1_sumout\ <= NOT \Inst_vga_controller|Add0~1_sumout\;
\Inst_vga_controller|ALT_INV_row\(6) <= NOT \Inst_vga_controller|row\(6);
\Inst_vga_controller|ALT_INV_row\(2) <= NOT \Inst_vga_controller|row\(2);
\Inst_vga_controller|ALT_INV_column\(7) <= NOT \Inst_vga_controller|column\(7);
\Inst_vga_controller|ALT_INV_column\(4) <= NOT \Inst_vga_controller|column\(4);
\memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a1\ <= NOT \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a1\;
\memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a2\ <= NOT \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a2\;
\memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a3\ <= NOT \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a3\;
\memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a4\ <= NOT \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a4\;
\memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a5\ <= NOT \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a5\;
\memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a6\ <= NOT \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a6\;
\memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portbdataout\ <= NOT \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\;
\memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a7\ <= NOT \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a7\;
\Inst_vga_controller|ALT_INV_h_count[9]~DUPLICATE_q\ <= NOT \Inst_vga_controller|h_count[9]~DUPLICATE_q\;
\Inst_vga_controller|ALT_INV_h_count[8]~DUPLICATE_q\ <= NOT \Inst_vga_controller|h_count[8]~DUPLICATE_q\;
\Inst_vga_controller|ALT_INV_h_count[5]~DUPLICATE_q\ <= NOT \Inst_vga_controller|h_count[5]~DUPLICATE_q\;
\Inst_vga_controller|ALT_INV_h_count[6]~DUPLICATE_q\ <= NOT \Inst_vga_controller|h_count[6]~DUPLICATE_q\;
\Inst_vga_controller|ALT_INV_h_count[1]~DUPLICATE_q\ <= NOT \Inst_vga_controller|h_count[1]~DUPLICATE_q\;
\Inst_vga_controller|ALT_INV_h_count[2]~DUPLICATE_q\ <= NOT \Inst_vga_controller|h_count[2]~DUPLICATE_q\;
\Inst_vga_controller|ALT_INV_h_count[4]~DUPLICATE_q\ <= NOT \Inst_vga_controller|h_count[4]~DUPLICATE_q\;
\Inst_vga_controller|ALT_INV_h_count[7]~DUPLICATE_q\ <= NOT \Inst_vga_controller|h_count[7]~DUPLICATE_q\;
\Inst_vga_controller|ALT_INV_LessThan7~5_combout\ <= NOT \Inst_vga_controller|LessThan7~5_combout\;
\Inst_vga_controller|ALT_INV_LessThan7~4_combout\ <= NOT \Inst_vga_controller|LessThan7~4_combout\;
\Inst_vga_controller|ALT_INV_LessThan7~3_combout\ <= NOT \Inst_vga_controller|LessThan7~3_combout\;
\Inst_vga_controller|ALT_INV_v_count~4_combout\ <= NOT \Inst_vga_controller|v_count~4_combout\;
\Inst_vga_controller|ALT_INV_LessThan6~0_combout\ <= NOT \Inst_vga_controller|LessThan6~0_combout\;
\Inst_vga_controller|ALT_INV_v_count~3_combout\ <= NOT \Inst_vga_controller|v_count~3_combout\;
\Inst_vga_controller|ALT_INV_process_0~6_combout\ <= NOT \Inst_vga_controller|process_0~6_combout\;
\Inst_vga_controller|ALT_INV_process_0~5_combout\ <= NOT \Inst_vga_controller|process_0~5_combout\;
\Inst_vga_controller|ALT_INV_LessThan7~1_combout\ <= NOT \Inst_vga_controller|LessThan7~1_combout\;
\Inst_vga_controller|ALT_INV_LessThan7~0_combout\ <= NOT \Inst_vga_controller|LessThan7~0_combout\;
\Inst_vga_controller|ALT_INV_process_0~4_combout\ <= NOT \Inst_vga_controller|process_0~4_combout\;
\Inst_vga_controller|ALT_INV_process_0~3_combout\ <= NOT \Inst_vga_controller|process_0~3_combout\;
\Inst_vga_controller|ALT_INV_v_count~2_combout\ <= NOT \Inst_vga_controller|v_count~2_combout\;
\Inst_vga_controller|ALT_INV_v_count~1_combout\ <= NOT \Inst_vga_controller|v_count~1_combout\;
\Inst_vga_controller|ALT_INV_v_count~0_combout\ <= NOT \Inst_vga_controller|v_count~0_combout\;
\Inst_vga_controller|ALT_INV_process_0~1_combout\ <= NOT \Inst_vga_controller|process_0~1_combout\;
\Inst_vga_controller|ALT_INV_process_0~0_combout\ <= NOT \Inst_vga_controller|process_0~0_combout\;
\Inst_vga_controller|ALT_INV_LessThan0~3_combout\ <= NOT \Inst_vga_controller|LessThan0~3_combout\;
\Inst_vga_controller|ALT_INV_LessThan0~2_combout\ <= NOT \Inst_vga_controller|LessThan0~2_combout\;
\Inst_vga_controller|ALT_INV_LessThan0~1_combout\ <= NOT \Inst_vga_controller|LessThan0~1_combout\;
\Inst_vga_controller|ALT_INV_LessThan0~0_combout\ <= NOT \Inst_vga_controller|LessThan0~0_combout\;
\Inst_vga_controller|ALT_INV_row\(0) <= NOT \Inst_vga_controller|row\(0);
\Inst_vga_controller|ALT_INV_column\(0) <= NOT \Inst_vga_controller|column\(0);
\Inst_vga_controller|ALT_INV_disp_ena~q\ <= NOT \Inst_vga_controller|disp_ena~q\;
\ALT_INV_clk25~q\ <= NOT \clk25~q\;
\Inst_vga_controller|ALT_INV_Add1~37_sumout\ <= NOT \Inst_vga_controller|Add1~37_sumout\;
\Inst_vga_controller|ALT_INV_Add1~33_sumout\ <= NOT \Inst_vga_controller|Add1~33_sumout\;
\Inst_vga_controller|ALT_INV_Add1~29_sumout\ <= NOT \Inst_vga_controller|Add1~29_sumout\;

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[0]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[1]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[2]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[3]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[4]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[5]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[6]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B[7]~reg0_q\,
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_vga_controller|h_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Inst_vga_controller|v_sync~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk25~q\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X6_Y81_N19
\VGA_BLANK_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X28_Y81_N36
\VGA_SYNC_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a7\,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X33_Y79_N51
\clk25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk25~0_combout\ = ( !\clk25~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_clk25~q\,
	combout => \clk25~0_combout\);

-- Location: FF_X33_Y79_N50
clk25 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \clk25~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk25~q\);

-- Location: MLABCELL_X39_Y79_N57
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X35_Y79_N22
\Inst_vga_controller|h_count[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|h_count[5]~feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count[5]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y79_N30
\Inst_vga_controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~21_sumout\ = SUM(( \Inst_vga_controller|h_count\(0) ) + ( VCC ) + ( !VCC ))
-- \Inst_vga_controller|Add0~22\ = CARRY(( \Inst_vga_controller|h_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_h_count\(0),
	cin => GND,
	sumout => \Inst_vga_controller|Add0~21_sumout\,
	cout => \Inst_vga_controller|Add0~22\);

-- Location: FF_X34_Y79_N8
\Inst_vga_controller|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~21_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(0));

-- Location: MLABCELL_X34_Y79_N33
\Inst_vga_controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~25_sumout\ = SUM(( \Inst_vga_controller|h_count[1]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~22\ ))
-- \Inst_vga_controller|Add0~26\ = CARRY(( \Inst_vga_controller|h_count[1]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_h_count[1]~DUPLICATE_q\,
	cin => \Inst_vga_controller|Add0~22\,
	sumout => \Inst_vga_controller|Add0~25_sumout\,
	cout => \Inst_vga_controller|Add0~26\);

-- Location: FF_X34_Y79_N28
\Inst_vga_controller|h_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~25_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count[1]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y79_N36
\Inst_vga_controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~29_sumout\ = SUM(( \Inst_vga_controller|h_count[2]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~26\ ))
-- \Inst_vga_controller|Add0~30\ = CARRY(( \Inst_vga_controller|h_count[2]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_h_count[2]~DUPLICATE_q\,
	cin => \Inst_vga_controller|Add0~26\,
	sumout => \Inst_vga_controller|Add0~29_sumout\,
	cout => \Inst_vga_controller|Add0~30\);

-- Location: MLABCELL_X34_Y79_N39
\Inst_vga_controller|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~33_sumout\ = SUM(( \Inst_vga_controller|h_count\(3) ) + ( GND ) + ( \Inst_vga_controller|Add0~30\ ))
-- \Inst_vga_controller|Add0~34\ = CARRY(( \Inst_vga_controller|h_count\(3) ) + ( GND ) + ( \Inst_vga_controller|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count\(3),
	cin => \Inst_vga_controller|Add0~30\,
	sumout => \Inst_vga_controller|Add0~33_sumout\,
	cout => \Inst_vga_controller|Add0~34\);

-- Location: FF_X34_Y79_N17
\Inst_vga_controller|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~33_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(3));

-- Location: MLABCELL_X34_Y79_N42
\Inst_vga_controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~13_sumout\ = SUM(( \Inst_vga_controller|h_count[4]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~34\ ))
-- \Inst_vga_controller|Add0~14\ = CARRY(( \Inst_vga_controller|h_count[4]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_h_count[4]~DUPLICATE_q\,
	cin => \Inst_vga_controller|Add0~34\,
	sumout => \Inst_vga_controller|Add0~13_sumout\,
	cout => \Inst_vga_controller|Add0~14\);

-- Location: FF_X34_Y79_N10
\Inst_vga_controller|h_count[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~13_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count[4]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y79_N45
\Inst_vga_controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~17_sumout\ = SUM(( \Inst_vga_controller|h_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~14\ ))
-- \Inst_vga_controller|Add0~18\ = CARRY(( \Inst_vga_controller|h_count[5]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_h_count[5]~DUPLICATE_q\,
	cin => \Inst_vga_controller|Add0~14\,
	sumout => \Inst_vga_controller|Add0~17_sumout\,
	cout => \Inst_vga_controller|Add0~18\);

-- Location: LABCELL_X35_Y79_N21
\Inst_vga_controller|h_count[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|h_count[5]~feeder_combout\ = ( \Inst_vga_controller|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_Add0~17_sumout\,
	combout => \Inst_vga_controller|h_count[5]~feeder_combout\);

-- Location: FF_X35_Y79_N23
\Inst_vga_controller|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|h_count[5]~feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(5));

-- Location: FF_X35_Y79_N26
\Inst_vga_controller|h_count[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~5_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count[6]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y79_N48
\Inst_vga_controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~5_sumout\ = SUM(( \Inst_vga_controller|h_count[6]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~18\ ))
-- \Inst_vga_controller|Add0~6\ = CARRY(( \Inst_vga_controller|h_count[6]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_h_count[6]~DUPLICATE_q\,
	cin => \Inst_vga_controller|Add0~18\,
	sumout => \Inst_vga_controller|Add0~5_sumout\,
	cout => \Inst_vga_controller|Add0~6\);

-- Location: FF_X35_Y79_N25
\Inst_vga_controller|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~5_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(6));

-- Location: LABCELL_X35_Y79_N3
\Inst_vga_controller|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan0~1_combout\ = ( !\Inst_vga_controller|h_count\(5) & ( !\Inst_vga_controller|h_count\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Inst_vga_controller|ALT_INV_h_count\(5),
	dataf => \Inst_vga_controller|ALT_INV_h_count\(6),
	combout => \Inst_vga_controller|LessThan0~1_combout\);

-- Location: FF_X35_Y79_N55
\Inst_vga_controller|h_count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~9_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count[9]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y79_N51
\Inst_vga_controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~37_sumout\ = SUM(( \Inst_vga_controller|h_count\(7) ) + ( GND ) + ( \Inst_vga_controller|Add0~6\ ))
-- \Inst_vga_controller|Add0~38\ = CARRY(( \Inst_vga_controller|h_count\(7) ) + ( GND ) + ( \Inst_vga_controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_h_count\(7),
	cin => \Inst_vga_controller|Add0~6\,
	sumout => \Inst_vga_controller|Add0~37_sumout\,
	cout => \Inst_vga_controller|Add0~38\);

-- Location: FF_X34_Y79_N4
\Inst_vga_controller|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~37_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(7));

-- Location: MLABCELL_X34_Y79_N54
\Inst_vga_controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~1_sumout\ = SUM(( \Inst_vga_controller|h_count\(8) ) + ( GND ) + ( \Inst_vga_controller|Add0~38\ ))
-- \Inst_vga_controller|Add0~2\ = CARRY(( \Inst_vga_controller|h_count\(8) ) + ( GND ) + ( \Inst_vga_controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_h_count\(8),
	cin => \Inst_vga_controller|Add0~38\,
	sumout => \Inst_vga_controller|Add0~1_sumout\,
	cout => \Inst_vga_controller|Add0~2\);

-- Location: LABCELL_X35_Y79_N12
\Inst_vga_controller|h_count[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|h_count[8]~feeder_combout\ = ( \Inst_vga_controller|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_Add0~1_sumout\,
	combout => \Inst_vga_controller|h_count[8]~feeder_combout\);

-- Location: FF_X35_Y79_N14
\Inst_vga_controller|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|h_count[8]~feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(8));

-- Location: MLABCELL_X34_Y79_N57
\Inst_vga_controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~9_sumout\ = SUM(( \Inst_vga_controller|h_count[9]~DUPLICATE_q\ ) + ( GND ) + ( \Inst_vga_controller|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count[9]~DUPLICATE_q\,
	cin => \Inst_vga_controller|Add0~2\,
	sumout => \Inst_vga_controller|Add0~9_sumout\);

-- Location: FF_X35_Y79_N56
\Inst_vga_controller|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~9_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(9));

-- Location: FF_X35_Y79_N13
\Inst_vga_controller|h_count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|h_count[8]~feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count[8]~DUPLICATE_q\);

-- Location: LABCELL_X35_Y79_N45
\Inst_vga_controller|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan0~2_combout\ = ( \Inst_vga_controller|h_count\(9) & ( \Inst_vga_controller|h_count[8]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Inst_vga_controller|ALT_INV_h_count\(9),
	dataf => \Inst_vga_controller|ALT_INV_h_count[8]~DUPLICATE_q\,
	combout => \Inst_vga_controller|LessThan0~2_combout\);

-- Location: LABCELL_X36_Y79_N9
\Inst_vga_controller|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan0~3_combout\ = ( \Inst_vga_controller|LessThan0~2_combout\ & ( (\Inst_vga_controller|LessThan0~1_combout\ & \Inst_vga_controller|LessThan0~0_combout\) ) ) # ( !\Inst_vga_controller|LessThan0~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_LessThan0~1_combout\,
	datad => \Inst_vga_controller|ALT_INV_LessThan0~0_combout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	combout => \Inst_vga_controller|LessThan0~3_combout\);

-- Location: FF_X34_Y79_N22
\Inst_vga_controller|h_count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~29_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count[2]~DUPLICATE_q\);

-- Location: FF_X34_Y79_N23
\Inst_vga_controller|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~29_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(2));

-- Location: FF_X34_Y79_N29
\Inst_vga_controller|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~25_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(1));

-- Location: FF_X34_Y79_N5
\Inst_vga_controller|h_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~37_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count[7]~DUPLICATE_q\);

-- Location: FF_X34_Y79_N11
\Inst_vga_controller|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|Add0~13_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(4));

-- Location: MLABCELL_X34_Y79_N24
\Inst_vga_controller|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan0~0_combout\ = ( !\Inst_vga_controller|h_count[7]~DUPLICATE_q\ & ( \Inst_vga_controller|h_count\(4) & ( (!\Inst_vga_controller|h_count\(2)) # ((!\Inst_vga_controller|h_count\(3)) # ((!\Inst_vga_controller|h_count\(1)) # 
-- (!\Inst_vga_controller|h_count\(0)))) ) ) ) # ( !\Inst_vga_controller|h_count[7]~DUPLICATE_q\ & ( !\Inst_vga_controller|h_count\(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_h_count\(2),
	datab => \Inst_vga_controller|ALT_INV_h_count\(3),
	datac => \Inst_vga_controller|ALT_INV_h_count\(1),
	datad => \Inst_vga_controller|ALT_INV_h_count\(0),
	datae => \Inst_vga_controller|ALT_INV_h_count[7]~DUPLICATE_q\,
	dataf => \Inst_vga_controller|ALT_INV_h_count\(4),
	combout => \Inst_vga_controller|LessThan0~0_combout\);

-- Location: LABCELL_X37_Y79_N0
\Inst_vga_controller|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~1_sumout\ = SUM(( \Inst_vga_controller|v_count\(0) ) + ( VCC ) + ( !VCC ))
-- \Inst_vga_controller|Add1~2\ = CARRY(( \Inst_vga_controller|v_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_v_count\(0),
	cin => GND,
	sumout => \Inst_vga_controller|Add1~1_sumout\,
	cout => \Inst_vga_controller|Add1~2\);

-- Location: FF_X37_Y79_N2
\Inst_vga_controller|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add1~1_sumout\,
	asdata => \Inst_vga_controller|v_count\(0),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(0));

-- Location: LABCELL_X37_Y79_N3
\Inst_vga_controller|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~5_sumout\ = SUM(( \Inst_vga_controller|v_count\(1) ) + ( GND ) + ( \Inst_vga_controller|Add1~2\ ))
-- \Inst_vga_controller|Add1~6\ = CARRY(( \Inst_vga_controller|v_count\(1) ) + ( GND ) + ( \Inst_vga_controller|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(1),
	cin => \Inst_vga_controller|Add1~2\,
	sumout => \Inst_vga_controller|Add1~5_sumout\,
	cout => \Inst_vga_controller|Add1~6\);

-- Location: FF_X37_Y79_N5
\Inst_vga_controller|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add1~5_sumout\,
	asdata => \Inst_vga_controller|v_count\(1),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(1));

-- Location: LABCELL_X37_Y79_N6
\Inst_vga_controller|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~17_sumout\ = SUM(( \Inst_vga_controller|v_count\(2) ) + ( GND ) + ( \Inst_vga_controller|Add1~6\ ))
-- \Inst_vga_controller|Add1~18\ = CARRY(( \Inst_vga_controller|v_count\(2) ) + ( GND ) + ( \Inst_vga_controller|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_v_count\(2),
	cin => \Inst_vga_controller|Add1~6\,
	sumout => \Inst_vga_controller|Add1~17_sumout\,
	cout => \Inst_vga_controller|Add1~18\);

-- Location: FF_X37_Y79_N8
\Inst_vga_controller|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add1~17_sumout\,
	asdata => \Inst_vga_controller|v_count\(2),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(2));

-- Location: LABCELL_X37_Y79_N9
\Inst_vga_controller|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~9_sumout\ = SUM(( \Inst_vga_controller|v_count\(3) ) + ( GND ) + ( \Inst_vga_controller|Add1~18\ ))
-- \Inst_vga_controller|Add1~10\ = CARRY(( \Inst_vga_controller|v_count\(3) ) + ( GND ) + ( \Inst_vga_controller|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_v_count\(3),
	cin => \Inst_vga_controller|Add1~18\,
	sumout => \Inst_vga_controller|Add1~9_sumout\,
	cout => \Inst_vga_controller|Add1~10\);

-- Location: FF_X37_Y79_N11
\Inst_vga_controller|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add1~9_sumout\,
	asdata => \Inst_vga_controller|v_count\(3),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(3));

-- Location: LABCELL_X37_Y79_N12
\Inst_vga_controller|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~13_sumout\ = SUM(( \Inst_vga_controller|v_count\(4) ) + ( GND ) + ( \Inst_vga_controller|Add1~10\ ))
-- \Inst_vga_controller|Add1~14\ = CARRY(( \Inst_vga_controller|v_count\(4) ) + ( GND ) + ( \Inst_vga_controller|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_v_count\(4),
	cin => \Inst_vga_controller|Add1~10\,
	sumout => \Inst_vga_controller|Add1~13_sumout\,
	cout => \Inst_vga_controller|Add1~14\);

-- Location: FF_X37_Y79_N14
\Inst_vga_controller|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add1~13_sumout\,
	asdata => \Inst_vga_controller|v_count\(4),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(4));

-- Location: LABCELL_X37_Y79_N15
\Inst_vga_controller|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~21_sumout\ = SUM(( \Inst_vga_controller|v_count\(5) ) + ( GND ) + ( \Inst_vga_controller|Add1~14\ ))
-- \Inst_vga_controller|Add1~22\ = CARRY(( \Inst_vga_controller|v_count\(5) ) + ( GND ) + ( \Inst_vga_controller|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_v_count\(5),
	cin => \Inst_vga_controller|Add1~14\,
	sumout => \Inst_vga_controller|Add1~21_sumout\,
	cout => \Inst_vga_controller|Add1~22\);

-- Location: FF_X37_Y79_N17
\Inst_vga_controller|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add1~21_sumout\,
	asdata => \Inst_vga_controller|v_count\(5),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(5));

-- Location: LABCELL_X37_Y79_N18
\Inst_vga_controller|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~29_sumout\ = SUM(( \Inst_vga_controller|v_count\(6) ) + ( GND ) + ( \Inst_vga_controller|Add1~22\ ))
-- \Inst_vga_controller|Add1~30\ = CARRY(( \Inst_vga_controller|v_count\(6) ) + ( GND ) + ( \Inst_vga_controller|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_v_count\(6),
	cin => \Inst_vga_controller|Add1~22\,
	sumout => \Inst_vga_controller|Add1~29_sumout\,
	cout => \Inst_vga_controller|Add1~30\);

-- Location: FF_X37_Y79_N20
\Inst_vga_controller|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add1~29_sumout\,
	asdata => \Inst_vga_controller|v_count\(6),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(6));

-- Location: LABCELL_X37_Y79_N21
\Inst_vga_controller|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~33_sumout\ = SUM(( \Inst_vga_controller|v_count\(7) ) + ( GND ) + ( \Inst_vga_controller|Add1~30\ ))
-- \Inst_vga_controller|Add1~34\ = CARRY(( \Inst_vga_controller|v_count\(7) ) + ( GND ) + ( \Inst_vga_controller|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_v_count\(7),
	cin => \Inst_vga_controller|Add1~30\,
	sumout => \Inst_vga_controller|Add1~33_sumout\,
	cout => \Inst_vga_controller|Add1~34\);

-- Location: FF_X37_Y79_N23
\Inst_vga_controller|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add1~33_sumout\,
	asdata => \Inst_vga_controller|v_count\(7),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(7));

-- Location: LABCELL_X37_Y79_N24
\Inst_vga_controller|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~25_sumout\ = SUM(( \Inst_vga_controller|v_count\(8) ) + ( GND ) + ( \Inst_vga_controller|Add1~34\ ))
-- \Inst_vga_controller|Add1~26\ = CARRY(( \Inst_vga_controller|v_count\(8) ) + ( GND ) + ( \Inst_vga_controller|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_v_count\(8),
	cin => \Inst_vga_controller|Add1~34\,
	sumout => \Inst_vga_controller|Add1~25_sumout\,
	cout => \Inst_vga_controller|Add1~26\);

-- Location: FF_X37_Y79_N26
\Inst_vga_controller|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add1~25_sumout\,
	asdata => \Inst_vga_controller|v_count\(8),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(8));

-- Location: LABCELL_X37_Y79_N27
\Inst_vga_controller|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~37_sumout\ = SUM(( \Inst_vga_controller|v_count\(9) ) + ( GND ) + ( \Inst_vga_controller|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_v_count\(9),
	cin => \Inst_vga_controller|Add1~26\,
	sumout => \Inst_vga_controller|Add1~37_sumout\);

-- Location: FF_X37_Y79_N29
\Inst_vga_controller|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add1~37_sumout\,
	asdata => \Inst_vga_controller|v_count\(9),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(9));

-- Location: LABCELL_X36_Y79_N0
\Inst_vga_controller|v_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|v_count~0_combout\ = ( \Inst_vga_controller|v_count\(2) & ( \Inst_vga_controller|v_count\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_v_count\(3),
	dataf => \Inst_vga_controller|ALT_INV_v_count\(2),
	combout => \Inst_vga_controller|v_count~0_combout\);

-- Location: LABCELL_X36_Y79_N30
\Inst_vga_controller|v_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|v_count~1_combout\ = ( !\Inst_vga_controller|v_count\(8) & ( (!\Inst_vga_controller|v_count\(7) & (!\Inst_vga_controller|v_count\(6) & (!\Inst_vga_controller|v_count\(5) & !\Inst_vga_controller|v_count\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(7),
	datab => \Inst_vga_controller|ALT_INV_v_count\(6),
	datac => \Inst_vga_controller|ALT_INV_v_count\(5),
	datad => \Inst_vga_controller|ALT_INV_v_count\(4),
	dataf => \Inst_vga_controller|ALT_INV_v_count\(8),
	combout => \Inst_vga_controller|v_count~1_combout\);

-- Location: LABCELL_X36_Y79_N42
\Inst_vga_controller|v_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|v_count~2_combout\ = ( \Inst_vga_controller|v_count~0_combout\ & ( \Inst_vga_controller|v_count~1_combout\ & ( (\Inst_vga_controller|v_count\(9) & (\Inst_vga_controller|LessThan0~2_combout\ & 
-- ((!\Inst_vga_controller|LessThan0~0_combout\) # (!\Inst_vga_controller|LessThan0~1_combout\)))) ) ) ) # ( \Inst_vga_controller|v_count~0_combout\ & ( !\Inst_vga_controller|v_count~1_combout\ & ( (\Inst_vga_controller|v_count\(9) & 
-- (\Inst_vga_controller|LessThan0~2_combout\ & ((!\Inst_vga_controller|LessThan0~0_combout\) # (!\Inst_vga_controller|LessThan0~1_combout\)))) ) ) ) # ( !\Inst_vga_controller|v_count~0_combout\ & ( !\Inst_vga_controller|v_count~1_combout\ & ( 
-- (\Inst_vga_controller|v_count\(9) & (\Inst_vga_controller|LessThan0~2_combout\ & ((!\Inst_vga_controller|LessThan0~0_combout\) # (!\Inst_vga_controller|LessThan0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000010000000110000001000000000000000000000001100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan0~0_combout\,
	datab => \Inst_vga_controller|ALT_INV_v_count\(9),
	datac => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	datad => \Inst_vga_controller|ALT_INV_LessThan0~1_combout\,
	datae => \Inst_vga_controller|ALT_INV_v_count~0_combout\,
	dataf => \Inst_vga_controller|ALT_INV_v_count~1_combout\,
	combout => \Inst_vga_controller|v_count~2_combout\);

-- Location: LABCELL_X36_Y79_N57
\Inst_vga_controller|v_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|v_count~4_combout\ = ( \Inst_vga_controller|Add1~1_sumout\ & ( (!\Inst_vga_controller|v_count~2_combout\ & ((!\Inst_vga_controller|LessThan0~3_combout\) # (\Inst_vga_controller|v_count\(0)))) ) ) # ( 
-- !\Inst_vga_controller|Add1~1_sumout\ & ( (!\Inst_vga_controller|v_count~2_combout\ & (\Inst_vga_controller|LessThan0~3_combout\ & \Inst_vga_controller|v_count\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110011000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datad => \Inst_vga_controller|ALT_INV_v_count\(0),
	dataf => \Inst_vga_controller|ALT_INV_Add1~1_sumout\,
	combout => \Inst_vga_controller|v_count~4_combout\);

-- Location: LABCELL_X36_Y79_N15
\Inst_vga_controller|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~0_combout\ = ( \Inst_vga_controller|Add1~25_sumout\ & ( (!\Inst_vga_controller|LessThan0~3_combout\ & (((\Inst_vga_controller|Add1~21_sumout\)))) # (\Inst_vga_controller|LessThan0~3_combout\ & 
-- (\Inst_vga_controller|v_count\(5) & (\Inst_vga_controller|v_count\(8)))) ) ) # ( !\Inst_vga_controller|Add1~25_sumout\ & ( (\Inst_vga_controller|v_count\(5) & (\Inst_vga_controller|v_count\(8) & \Inst_vga_controller|LessThan0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(5),
	datab => \Inst_vga_controller|ALT_INV_v_count\(8),
	datac => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datad => \Inst_vga_controller|ALT_INV_Add1~21_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add1~25_sumout\,
	combout => \Inst_vga_controller|LessThan7~0_combout\);

-- Location: LABCELL_X36_Y79_N51
\Inst_vga_controller|v_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|v_count~3_combout\ = ( \Inst_vga_controller|Add1~37_sumout\ & ( ((\Inst_vga_controller|LessThan0~2_combout\ & ((!\Inst_vga_controller|LessThan0~1_combout\) # (!\Inst_vga_controller|LessThan0~0_combout\)))) # 
-- (\Inst_vga_controller|v_count\(9)) ) ) # ( !\Inst_vga_controller|Add1~37_sumout\ & ( (\Inst_vga_controller|v_count\(9) & ((!\Inst_vga_controller|LessThan0~2_combout\) # ((\Inst_vga_controller|LessThan0~1_combout\ & 
-- \Inst_vga_controller|LessThan0~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101011000000001010101101010100111111110101010011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan0~1_combout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan0~0_combout\,
	datad => \Inst_vga_controller|ALT_INV_v_count\(9),
	dataf => \Inst_vga_controller|ALT_INV_Add1~37_sumout\,
	combout => \Inst_vga_controller|v_count~3_combout\);

-- Location: LABCELL_X36_Y79_N33
\Inst_vga_controller|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~1_combout\ = ( \Inst_vga_controller|Add1~33_sumout\ & ( (!\Inst_vga_controller|LessThan0~3_combout\ & (((\Inst_vga_controller|Add1~29_sumout\)))) # (\Inst_vga_controller|LessThan0~3_combout\ & 
-- (\Inst_vga_controller|v_count\(7) & (\Inst_vga_controller|v_count\(6)))) ) ) # ( !\Inst_vga_controller|Add1~33_sumout\ & ( (\Inst_vga_controller|v_count\(7) & (\Inst_vga_controller|v_count\(6) & \Inst_vga_controller|LessThan0~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001111100010000000111110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(7),
	datab => \Inst_vga_controller|ALT_INV_v_count\(6),
	datac => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datad => \Inst_vga_controller|ALT_INV_Add1~29_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add1~33_sumout\,
	combout => \Inst_vga_controller|LessThan7~1_combout\);

-- Location: LABCELL_X36_Y79_N36
\Inst_vga_controller|row[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[0]~0_combout\ = ( \Inst_vga_controller|v_count~3_combout\ & ( \Inst_vga_controller|LessThan7~1_combout\ & ( (!\Inst_vga_controller|v_count~2_combout\ & (\Inst_vga_controller|row\(0))) # (\Inst_vga_controller|v_count~2_combout\ & 
-- ((!\Inst_vga_controller|v_count~4_combout\))) ) ) ) # ( !\Inst_vga_controller|v_count~3_combout\ & ( \Inst_vga_controller|LessThan7~1_combout\ & ( (!\Inst_vga_controller|v_count~2_combout\ & ((!\Inst_vga_controller|LessThan7~0_combout\ & 
-- ((!\Inst_vga_controller|v_count~4_combout\))) # (\Inst_vga_controller|LessThan7~0_combout\ & (\Inst_vga_controller|row\(0))))) # (\Inst_vga_controller|v_count~2_combout\ & (((!\Inst_vga_controller|v_count~4_combout\)))) ) ) ) # ( 
-- \Inst_vga_controller|v_count~3_combout\ & ( !\Inst_vga_controller|LessThan7~1_combout\ & ( (!\Inst_vga_controller|v_count~2_combout\ & (\Inst_vga_controller|row\(0))) # (\Inst_vga_controller|v_count~2_combout\ & 
-- ((!\Inst_vga_controller|v_count~4_combout\))) ) ) ) # ( !\Inst_vga_controller|v_count~3_combout\ & ( !\Inst_vga_controller|LessThan7~1_combout\ & ( !\Inst_vga_controller|v_count~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100010111000101110011001100010111000101110001011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_row\(0),
	datab => \Inst_vga_controller|ALT_INV_v_count~4_combout\,
	datac => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	datad => \Inst_vga_controller|ALT_INV_LessThan7~0_combout\,
	datae => \Inst_vga_controller|ALT_INV_v_count~3_combout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan7~1_combout\,
	combout => \Inst_vga_controller|row[0]~0_combout\);

-- Location: FF_X36_Y79_N46
\Inst_vga_controller|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|row[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(0));

-- Location: MLABCELL_X39_Y79_N15
\Inst_vga_controller|row[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[0]~_wirecell_combout\ = ( !\Inst_vga_controller|row\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_row\(0),
	combout => \Inst_vga_controller|row[0]~_wirecell_combout\);

-- Location: LABCELL_X36_Y79_N12
\Inst_vga_controller|row[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[1]~feeder_combout\ = \Inst_vga_controller|Add1~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_Add1~5_sumout\,
	combout => \Inst_vga_controller|row[1]~feeder_combout\);

-- Location: LABCELL_X35_Y79_N36
\Inst_vga_controller|LessThan7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~5_combout\ = ( \Inst_vga_controller|LessThan0~1_combout\ & ( \Inst_vga_controller|LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Inst_vga_controller|ALT_INV_LessThan0~1_combout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan0~0_combout\,
	combout => \Inst_vga_controller|LessThan7~5_combout\);

-- Location: LABCELL_X36_Y79_N3
\Inst_vga_controller|LessThan7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~3_combout\ = ( \Inst_vga_controller|v_count\(8) & ( (!\Inst_vga_controller|v_count\(9) & ((!\Inst_vga_controller|v_count\(7)) # ((!\Inst_vga_controller|v_count\(6)) # (!\Inst_vga_controller|v_count\(5))))) ) ) # ( 
-- !\Inst_vga_controller|v_count\(8) & ( !\Inst_vga_controller|v_count\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111000001111000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(7),
	datab => \Inst_vga_controller|ALT_INV_v_count\(6),
	datac => \Inst_vga_controller|ALT_INV_v_count\(9),
	datad => \Inst_vga_controller|ALT_INV_v_count\(5),
	dataf => \Inst_vga_controller|ALT_INV_v_count\(8),
	combout => \Inst_vga_controller|LessThan7~3_combout\);

-- Location: LABCELL_X37_Y79_N30
\Inst_vga_controller|LessThan7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~4_combout\ = ( \Inst_vga_controller|Add1~33_sumout\ & ( \Inst_vga_controller|Add1~25_sumout\ & ( (!\Inst_vga_controller|LessThan0~2_combout\ & (!\Inst_vga_controller|LessThan7~3_combout\)) # 
-- (\Inst_vga_controller|LessThan0~2_combout\ & (((\Inst_vga_controller|Add1~29_sumout\ & \Inst_vga_controller|Add1~21_sumout\)))) ) ) ) # ( !\Inst_vga_controller|Add1~33_sumout\ & ( \Inst_vga_controller|Add1~25_sumout\ & ( 
-- (!\Inst_vga_controller|LessThan0~2_combout\ & !\Inst_vga_controller|LessThan7~3_combout\) ) ) ) # ( \Inst_vga_controller|Add1~33_sumout\ & ( !\Inst_vga_controller|Add1~25_sumout\ & ( (!\Inst_vga_controller|LessThan0~2_combout\ & 
-- !\Inst_vga_controller|LessThan7~3_combout\) ) ) ) # ( !\Inst_vga_controller|Add1~33_sumout\ & ( !\Inst_vga_controller|Add1~25_sumout\ & ( (!\Inst_vga_controller|LessThan0~2_combout\ & !\Inst_vga_controller|LessThan7~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan7~3_combout\,
	datac => \Inst_vga_controller|ALT_INV_Add1~29_sumout\,
	datad => \Inst_vga_controller|ALT_INV_Add1~21_sumout\,
	datae => \Inst_vga_controller|ALT_INV_Add1~33_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add1~25_sumout\,
	combout => \Inst_vga_controller|LessThan7~4_combout\);

-- Location: LABCELL_X37_Y79_N36
\Inst_vga_controller|LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~2_combout\ = ( \Inst_vga_controller|Add1~37_sumout\ & ( \Inst_vga_controller|LessThan7~4_combout\ & ( ((\Inst_vga_controller|LessThan7~5_combout\ & (\Inst_vga_controller|LessThan0~2_combout\ & 
-- \Inst_vga_controller|LessThan7~3_combout\))) # (\Inst_vga_controller|v_count~2_combout\) ) ) ) # ( !\Inst_vga_controller|Add1~37_sumout\ & ( \Inst_vga_controller|LessThan7~4_combout\ & ( ((\Inst_vga_controller|LessThan7~5_combout\ & 
-- (\Inst_vga_controller|LessThan0~2_combout\ & \Inst_vga_controller|LessThan7~3_combout\))) # (\Inst_vga_controller|v_count~2_combout\) ) ) ) # ( \Inst_vga_controller|Add1~37_sumout\ & ( !\Inst_vga_controller|LessThan7~4_combout\ & ( 
-- ((!\Inst_vga_controller|LessThan0~2_combout\) # ((\Inst_vga_controller|LessThan7~5_combout\ & \Inst_vga_controller|LessThan7~3_combout\))) # (\Inst_vga_controller|v_count~2_combout\) ) ) ) # ( !\Inst_vga_controller|Add1~37_sumout\ & ( 
-- !\Inst_vga_controller|LessThan7~4_combout\ & ( (!\Inst_vga_controller|LessThan7~5_combout\) # (((!\Inst_vga_controller|LessThan0~2_combout\) # (\Inst_vga_controller|LessThan7~3_combout\)) # (\Inst_vga_controller|v_count~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101111111111111100111111011100110011001101110011001100110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan7~5_combout\,
	datab => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	datad => \Inst_vga_controller|ALT_INV_LessThan7~3_combout\,
	datae => \Inst_vga_controller|ALT_INV_Add1~37_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan7~4_combout\,
	combout => \Inst_vga_controller|LessThan7~2_combout\);

-- Location: FF_X36_Y79_N14
\Inst_vga_controller|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|row[1]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(1),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(1));

-- Location: LABCELL_X37_Y79_N42
\Inst_vga_controller|row[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[2]~feeder_combout\ = \Inst_vga_controller|Add1~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_Add1~17_sumout\,
	combout => \Inst_vga_controller|row[2]~feeder_combout\);

-- Location: FF_X37_Y79_N43
\Inst_vga_controller|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|row[2]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(2),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(2));

-- Location: LABCELL_X37_Y79_N48
\Inst_vga_controller|row[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[3]~feeder_combout\ = \Inst_vga_controller|Add1~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_Add1~9_sumout\,
	combout => \Inst_vga_controller|row[3]~feeder_combout\);

-- Location: FF_X37_Y79_N49
\Inst_vga_controller|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|row[3]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(3),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(3));

-- Location: LABCELL_X37_Y79_N57
\Inst_vga_controller|row[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[4]~feeder_combout\ = \Inst_vga_controller|Add1~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_Add1~13_sumout\,
	combout => \Inst_vga_controller|row[4]~feeder_combout\);

-- Location: FF_X37_Y79_N59
\Inst_vga_controller|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|row[4]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(4),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(4));

-- Location: LABCELL_X37_Y79_N54
\Inst_vga_controller|row[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[5]~feeder_combout\ = \Inst_vga_controller|Add1~21_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_Add1~21_sumout\,
	combout => \Inst_vga_controller|row[5]~feeder_combout\);

-- Location: FF_X37_Y79_N55
\Inst_vga_controller|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|row[5]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(5),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(5));

-- Location: LABCELL_X37_Y79_N45
\Inst_vga_controller|row[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[6]~feeder_combout\ = \Inst_vga_controller|Add1~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add1~29_sumout\,
	combout => \Inst_vga_controller|row[6]~feeder_combout\);

-- Location: FF_X37_Y79_N46
\Inst_vga_controller|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|row[6]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(6),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(6));

-- Location: LABCELL_X36_Y79_N27
\Inst_vga_controller|row[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[7]~feeder_combout\ = ( \Inst_vga_controller|Add1~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_Add1~33_sumout\,
	combout => \Inst_vga_controller|row[7]~feeder_combout\);

-- Location: FF_X36_Y79_N29
\Inst_vga_controller|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|row[7]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(7),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(7));

-- Location: LABCELL_X37_Y79_N51
\Inst_vga_controller|row[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[8]~feeder_combout\ = ( \Inst_vga_controller|Add1~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_Add1~25_sumout\,
	combout => \Inst_vga_controller|row[8]~feeder_combout\);

-- Location: FF_X37_Y79_N52
\Inst_vga_controller|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|row[8]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(8),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(8));

-- Location: LABCELL_X36_Y79_N48
\Inst_vga_controller|row[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[9]~feeder_combout\ = ( \Inst_vga_controller|Add1~37_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_Add1~37_sumout\,
	combout => \Inst_vga_controller|row[9]~feeder_combout\);

-- Location: FF_X36_Y79_N49
\Inst_vga_controller|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|row[9]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(9),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(9));

-- Location: M10K_X38_Y79_N0
\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "334CD1ACEA2BCF632CEE32CD10982109029334AE32CD70B4210D4D63344322C2100C060902933435358CD114100841C0189E32C0D0A0183987E35C320840907CC4048E7330AE32C6E32CD70B8213443C3A8030F8050A04632CD70B0210D4D6334430D42100C0604841334CD1ACEA3FC3E0D4D630C481F8210700619022188CB18470170E5170E5170E5170E51F4711F404170E5170E515CB4180EE1842D15CAF17CDF158B2134FE1680613401178E4174FF174B4174691741E18C0B170E116CA6184A91649F1605F18CAD184E217CCC190F816C551849D17C2B170FF17C4F170E515C0415C0415C0415C0415051148191381B12CBE1247417C62170061545415",
	mem_init3 => "C911987711CDD164691606A19073194EC15CFF158B21583E154F617830154291504214CFD174D1140011345113065178B81704F178731787317821174261707C1701616C8115C3F108A3184701806419C8D194811904518C09158D815032144C2140AA140581400D1747C164A2124201609C130F9128E31242611CEA118C0110E611020120CE1485D1480214445140E41405D12CB1120FE120AC1742E1205F11C8411C2E11888114F410CC910C4A10819180E913C7A17C3E17C1217C1A19092188A2188A2188A2188A2188A2188A2188A2188A2188A2164FE188A2188A2188A21744916C3F1646A1608915CA7158A2158221242614C931485916C46168F01281",
	mem_init2 => "A124D516C641248319C5E150F815048194AE15000188BA110D014CAE1887D184BB15C5D15C20180F4158E3158E318031188431589D17C2715879148C31208915C30118A711839158EA15879170FF16836164BC1147B1583C130A2154E710C7B10C0B100EB1440115850154C8178E11547B178A4120981547D15440150621085112C0216C2F100A41045C11C9B1188210C3F1000013CFF100F1138781303812C20128DA1242C124991200C1186D110BE108D4118861042D10000100001148110C90104E610000100C3124A4124A41241E1000012CA710000124981000011C4E1145410C57108A132420000EA2E0E03C440000CD080003A8B8380030F8F52E0F03",
	mem_init1 => "2400380300F8F8380B003CE60BC003C0003C0003C0003C0003C0003C0003C0003C0003C0003C000380100F8470DCCB03CE60BC003C0003C0003C0003C0003C0003C00038000038200F81F150C333C1A3A8000F802060AF00C28044FE0D0C334C000CC0100C0504C030C430000000000011455130420804E13C4D1144B13C500F8332E4BB27C99370DD330EC0386E18C672ECBB264D9374DD3986E330DC038002248807C1102000034000300020C001CC0302C00034CC198663B4CE0045030C0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "0000000000000000000000000000000000000324F8080B01E40B04C120A8C9080003A8B8380F1000B533420000EA2E0E0338E93E8F52E0F0338E93A8C93EC20014191DC28018000101130C00084A00F8C93F020014222800630C00084AF32440380FF32C403C0C93FCE01E0403807F398403C0FA080913F8443C0FF3808732C473FCF003CE02BCD9000000000000021094C3000000000000023018C3000000000000000000FF000000000000020090C3000000000000000000FF000000000000000000FF000000000000000000FF000000000000000000FF000000000000000000FF000000000000000000FF000000000000000000FF000000000000000000FF",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "../../../../../Users/A/Downloads/pokeblue.hex",
	init_file_layout => "port_a",
	logical_ram_name => "memoryfirst:memoryfirst_inst|altsyncram:altsyncram_component|altsyncram_ol34:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 65536,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 65536,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbre => VCC,
	clk0 => GND,
	clk1 => \clk25~q\,
	ena0 => GND,
	ena1 => VCC,
	portadatain => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X34_Y80_N39
\VGA_R[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[0]~reg0feeder_combout\ = ( \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a0~portbdataout\,
	combout => \VGA_R[0]~reg0feeder_combout\);

-- Location: MLABCELL_X34_Y79_N0
\Inst_vga_controller|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan6~0_combout\ = ( \Inst_vga_controller|Add0~9_sumout\ & ( \Inst_vga_controller|Add0~37_sumout\ & ( (\Inst_vga_controller|LessThan0~2_combout\ & ((!\Inst_vga_controller|LessThan0~0_combout\) # 
-- (!\Inst_vga_controller|LessThan0~1_combout\))) ) ) ) # ( !\Inst_vga_controller|Add0~9_sumout\ & ( \Inst_vga_controller|Add0~37_sumout\ ) ) # ( \Inst_vga_controller|Add0~9_sumout\ & ( !\Inst_vga_controller|Add0~37_sumout\ & ( 
-- (!\Inst_vga_controller|Add0~1_sumout\) # ((\Inst_vga_controller|LessThan0~2_combout\ & ((!\Inst_vga_controller|LessThan0~0_combout\) # (!\Inst_vga_controller|LessThan0~1_combout\)))) ) ) ) # ( !\Inst_vga_controller|Add0~9_sumout\ & ( 
-- !\Inst_vga_controller|Add0~37_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111101110111011101011111111111111110011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add0~1_sumout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan0~0_combout\,
	datad => \Inst_vga_controller|ALT_INV_LessThan0~1_combout\,
	datae => \Inst_vga_controller|ALT_INV_Add0~9_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add0~37_sumout\,
	combout => \Inst_vga_controller|LessThan6~0_combout\);

-- Location: LABCELL_X36_Y79_N54
\Inst_vga_controller|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~8_combout\ = ( \Inst_vga_controller|LessThan7~0_combout\ & ( (\Inst_vga_controller|LessThan6~0_combout\ & (((!\Inst_vga_controller|LessThan7~1_combout\ & !\Inst_vga_controller|v_count~3_combout\)) # 
-- (\Inst_vga_controller|v_count~2_combout\))) ) ) # ( !\Inst_vga_controller|LessThan7~0_combout\ & ( (\Inst_vga_controller|LessThan6~0_combout\ & ((!\Inst_vga_controller|v_count~3_combout\) # (\Inst_vga_controller|v_count~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110011000000001111001100000000101100110000000010110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan7~1_combout\,
	datab => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	datac => \Inst_vga_controller|ALT_INV_v_count~3_combout\,
	datad => \Inst_vga_controller|ALT_INV_LessThan6~0_combout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan7~0_combout\,
	combout => \Inst_vga_controller|process_0~8_combout\);

-- Location: FF_X36_Y79_N56
\Inst_vga_controller|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|disp_ena~q\);

-- Location: FF_X34_Y80_N40
\VGA_R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_R[0]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[0]~reg0_q\);

-- Location: MLABCELL_X34_Y80_N33
\VGA_R[1]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[1]~reg0feeder_combout\ = ( \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a1\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a1\,
	combout => \VGA_R[1]~reg0feeder_combout\);

-- Location: FF_X34_Y80_N34
\VGA_R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_R[1]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[1]~reg0_q\);

-- Location: LABCELL_X33_Y79_N21
\VGA_R[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[2]~reg0feeder_combout\ = ( \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a2\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a2\,
	combout => \VGA_R[2]~reg0feeder_combout\);

-- Location: FF_X33_Y79_N22
\VGA_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_R[2]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[2]~reg0_q\);

-- Location: MLABCELL_X34_Y80_N24
\VGA_R[3]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[3]~reg0feeder_combout\ = ( \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a3\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a3\,
	combout => \VGA_R[3]~reg0feeder_combout\);

-- Location: FF_X34_Y80_N25
\VGA_R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_R[3]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[3]~reg0_q\);

-- Location: LABCELL_X33_Y79_N3
\VGA_R[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[4]~reg0feeder_combout\ = ( \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a4\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a4\,
	combout => \VGA_R[4]~reg0feeder_combout\);

-- Location: FF_X33_Y79_N4
\VGA_R[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_R[4]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[4]~reg0_q\);

-- Location: LABCELL_X33_Y79_N36
\VGA_R[5]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[5]~reg0feeder_combout\ = ( \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a5\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a5\,
	combout => \VGA_R[5]~reg0feeder_combout\);

-- Location: FF_X33_Y79_N37
\VGA_R[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_R[5]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[5]~reg0_q\);

-- Location: LABCELL_X33_Y79_N39
\VGA_R[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[6]~reg0feeder_combout\ = ( \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a6\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a6\,
	combout => \VGA_R[6]~reg0feeder_combout\);

-- Location: FF_X33_Y79_N40
\VGA_R[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_R[6]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[6]~reg0_q\);

-- Location: LABCELL_X33_Y79_N18
\VGA_R[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_R[7]~reg0feeder_combout\ = ( \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a7\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \memoryfirst_inst|altsyncram_component|auto_generated|ALT_INV_ram_block1a7\,
	combout => \VGA_R[7]~reg0feeder_combout\);

-- Location: FF_X33_Y79_N19
\VGA_R[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_R[7]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[7]~reg0_q\);

-- Location: MLABCELL_X34_Y79_N18
\Inst_vga_controller|column[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|column[0]~0_combout\ = ( \Inst_vga_controller|Add0~1_sumout\ & ( \Inst_vga_controller|Add0~9_sumout\ & ( (!\Inst_vga_controller|LessThan0~3_combout\) # (\Inst_vga_controller|column\(0)) ) ) ) # ( !\Inst_vga_controller|Add0~1_sumout\ & 
-- ( \Inst_vga_controller|Add0~9_sumout\ & ( (!\Inst_vga_controller|LessThan0~3_combout\) # ((!\Inst_vga_controller|Add0~37_sumout\ & ((!\Inst_vga_controller|Add0~21_sumout\))) # (\Inst_vga_controller|Add0~37_sumout\ & (\Inst_vga_controller|column\(0)))) ) ) 
-- ) # ( \Inst_vga_controller|Add0~1_sumout\ & ( !\Inst_vga_controller|Add0~9_sumout\ & ( (!\Inst_vga_controller|Add0~21_sumout\) # (!\Inst_vga_controller|LessThan0~3_combout\) ) ) ) # ( !\Inst_vga_controller|Add0~1_sumout\ & ( 
-- !\Inst_vga_controller|Add0~9_sumout\ & ( (!\Inst_vga_controller|Add0~21_sumout\) # (!\Inst_vga_controller|LessThan0~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011111111110001011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_column\(0),
	datab => \Inst_vga_controller|ALT_INV_Add0~21_sumout\,
	datac => \Inst_vga_controller|ALT_INV_Add0~37_sumout\,
	datad => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datae => \Inst_vga_controller|ALT_INV_Add0~1_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add0~9_sumout\,
	combout => \Inst_vga_controller|column[0]~0_combout\);

-- Location: FF_X34_Y79_N59
\Inst_vga_controller|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|column[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(0));

-- Location: LABCELL_X33_Y79_N6
\Inst_vga_controller|column[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|column[0]~_wirecell_combout\ = ( !\Inst_vga_controller|column\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Inst_vga_controller|ALT_INV_column\(0),
	combout => \Inst_vga_controller|column[0]~_wirecell_combout\);

-- Location: FF_X33_Y79_N7
\VGA_G[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|column[0]~_wirecell_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[0]~reg0_q\);

-- Location: FF_X34_Y79_N34
\Inst_vga_controller|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add0~25_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(1));

-- Location: FF_X33_Y79_N55
\VGA_G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|column\(1),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[1]~reg0_q\);

-- Location: FF_X34_Y79_N37
\Inst_vga_controller|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add0~29_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(2));

-- Location: FF_X33_Y79_N58
\VGA_G[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|column\(2),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[2]~reg0_q\);

-- Location: FF_X34_Y79_N41
\Inst_vga_controller|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add0~33_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(3));

-- Location: FF_X33_Y79_N10
\VGA_G[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|column\(3),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[3]~reg0_q\);

-- Location: FF_X34_Y79_N43
\Inst_vga_controller|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add0~13_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(4));

-- Location: LABCELL_X33_Y79_N27
\VGA_G[4]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G[4]~reg0feeder_combout\ = ( \Inst_vga_controller|column\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_column\(4),
	combout => \VGA_G[4]~reg0feeder_combout\);

-- Location: FF_X33_Y79_N29
\VGA_G[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_G[4]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[4]~reg0_q\);

-- Location: FF_X34_Y79_N46
\Inst_vga_controller|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add0~17_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(5));

-- Location: FF_X33_Y79_N31
\VGA_G[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|column\(5),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[5]~reg0_q\);

-- Location: FF_X34_Y79_N50
\Inst_vga_controller|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add0~5_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(6));

-- Location: FF_X33_Y79_N35
\VGA_G[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|column\(6),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[6]~reg0_q\);

-- Location: FF_X34_Y79_N52
\Inst_vga_controller|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|Add0~37_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(7));

-- Location: LABCELL_X33_Y79_N42
\VGA_G[7]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_G[7]~reg0feeder_combout\ = ( \Inst_vga_controller|column\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_column\(7),
	combout => \VGA_G[7]~reg0feeder_combout\);

-- Location: FF_X33_Y79_N44
\VGA_G[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_G[7]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[7]~reg0_q\);

-- Location: FF_X33_Y79_N14
\VGA_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|row[0]~_wirecell_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[0]~reg0_q\);

-- Location: FF_X33_Y79_N47
\VGA_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|row\(1),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[1]~reg0_q\);

-- Location: LABCELL_X33_Y79_N24
\VGA_B[2]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_B[2]~reg0feeder_combout\ = ( \Inst_vga_controller|row\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_row\(2),
	combout => \VGA_B[2]~reg0feeder_combout\);

-- Location: FF_X33_Y79_N25
\VGA_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_B[2]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[2]~reg0_q\);

-- Location: FF_X34_Y80_N7
\VGA_B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|row\(3),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[3]~reg0_q\);

-- Location: FF_X33_Y79_N16
\VGA_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|row\(4),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[4]~reg0_q\);

-- Location: FF_X34_Y80_N4
\VGA_B[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|row\(5),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[5]~reg0_q\);

-- Location: MLABCELL_X34_Y80_N54
\VGA_B[6]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGA_B[6]~reg0feeder_combout\ = ( \Inst_vga_controller|row\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_row\(6),
	combout => \VGA_B[6]~reg0feeder_combout\);

-- Location: FF_X34_Y80_N55
\VGA_B[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \VGA_B[6]~reg0feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[6]~reg0_q\);

-- Location: FF_X33_Y79_N2
\VGA_B[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	asdata => \Inst_vga_controller|row\(7),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[7]~reg0_q\);

-- Location: LABCELL_X33_Y79_N12
\Inst_vga_controller|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~0_combout\ = ( \Inst_vga_controller|Add0~13_sumout\ & ( \Inst_vga_controller|Add0~17_sumout\ & ( (((\Inst_vga_controller|Add0~21_sumout\) # (\Inst_vga_controller|Add0~25_sumout\)) # (\Inst_vga_controller|Add0~29_sumout\)) # 
-- (\Inst_vga_controller|Add0~33_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add0~33_sumout\,
	datab => \Inst_vga_controller|ALT_INV_Add0~29_sumout\,
	datac => \Inst_vga_controller|ALT_INV_Add0~25_sumout\,
	datad => \Inst_vga_controller|ALT_INV_Add0~21_sumout\,
	datae => \Inst_vga_controller|ALT_INV_Add0~13_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add0~17_sumout\,
	combout => \Inst_vga_controller|process_0~0_combout\);

-- Location: MLABCELL_X34_Y79_N6
\Inst_vga_controller|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~1_combout\ = ( \Inst_vga_controller|Add0~5_sumout\ & ( \Inst_vga_controller|Add0~13_sumout\ & ( \Inst_vga_controller|Add0~37_sumout\ ) ) ) # ( !\Inst_vga_controller|Add0~5_sumout\ & ( \Inst_vga_controller|Add0~13_sumout\ & ( 
-- \Inst_vga_controller|Add0~37_sumout\ ) ) ) # ( \Inst_vga_controller|Add0~5_sumout\ & ( !\Inst_vga_controller|Add0~13_sumout\ & ( \Inst_vga_controller|Add0~37_sumout\ ) ) ) # ( !\Inst_vga_controller|Add0~5_sumout\ & ( !\Inst_vga_controller|Add0~13_sumout\ 
-- & ( (\Inst_vga_controller|Add0~37_sumout\ & \Inst_vga_controller|Add0~17_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_Add0~37_sumout\,
	datad => \Inst_vga_controller|ALT_INV_Add0~17_sumout\,
	datae => \Inst_vga_controller|ALT_INV_Add0~5_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add0~13_sumout\,
	combout => \Inst_vga_controller|process_0~1_combout\);

-- Location: MLABCELL_X34_Y79_N12
\Inst_vga_controller|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~2_combout\ = ( \Inst_vga_controller|process_0~1_combout\ & ( \Inst_vga_controller|Add0~9_sumout\ & ( (!\Inst_vga_controller|LessThan0~3_combout\) # (((\Inst_vga_controller|process_0~0_combout\ & 
-- \Inst_vga_controller|Add0~5_sumout\)) # (\Inst_vga_controller|Add0~1_sumout\)) ) ) ) # ( !\Inst_vga_controller|process_0~1_combout\ & ( \Inst_vga_controller|Add0~9_sumout\ ) ) # ( \Inst_vga_controller|process_0~1_combout\ & ( 
-- !\Inst_vga_controller|Add0~9_sumout\ ) ) # ( !\Inst_vga_controller|process_0~1_combout\ & ( !\Inst_vga_controller|Add0~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111100111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_process_0~0_combout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datac => \Inst_vga_controller|ALT_INV_Add0~1_sumout\,
	datad => \Inst_vga_controller|ALT_INV_Add0~5_sumout\,
	datae => \Inst_vga_controller|ALT_INV_process_0~1_combout\,
	dataf => \Inst_vga_controller|ALT_INV_Add0~9_sumout\,
	combout => \Inst_vga_controller|process_0~2_combout\);

-- Location: FF_X34_Y79_N13
\Inst_vga_controller|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_sync~q\);

-- Location: MLABCELL_X39_Y79_N36
\Inst_vga_controller|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~5_combout\ = ( \Inst_vga_controller|v_count\(1) & ( \Inst_vga_controller|v_count\(3) & ( (!\Inst_vga_controller|v_count\(4) & !\Inst_vga_controller|v_count\(2)) ) ) ) # ( !\Inst_vga_controller|v_count\(1) & ( 
-- \Inst_vga_controller|v_count\(3) & ( (!\Inst_vga_controller|v_count\(4) & \Inst_vga_controller|v_count\(2)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_v_count\(4),
	datad => \Inst_vga_controller|ALT_INV_v_count\(2),
	datae => \Inst_vga_controller|ALT_INV_v_count\(1),
	dataf => \Inst_vga_controller|ALT_INV_v_count\(3),
	combout => \Inst_vga_controller|process_0~5_combout\);

-- Location: LABCELL_X36_Y79_N6
\Inst_vga_controller|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~6_combout\ = ( \Inst_vga_controller|Add1~37_sumout\ & ( (\Inst_vga_controller|LessThan0~3_combout\ & (!\Inst_vga_controller|v_count~2_combout\ & (\Inst_vga_controller|process_0~5_combout\ & 
-- !\Inst_vga_controller|v_count\(9)))) ) ) # ( !\Inst_vga_controller|Add1~37_sumout\ & ( (!\Inst_vga_controller|v_count~2_combout\ & ((!\Inst_vga_controller|LessThan0~3_combout\) # ((\Inst_vga_controller|process_0~5_combout\ & 
-- !\Inst_vga_controller|v_count\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001000100011001000100000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datab => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	datac => \Inst_vga_controller|ALT_INV_process_0~5_combout\,
	datad => \Inst_vga_controller|ALT_INV_v_count\(9),
	dataf => \Inst_vga_controller|ALT_INV_Add1~37_sumout\,
	combout => \Inst_vga_controller|process_0~6_combout\);

-- Location: LABCELL_X36_Y79_N24
\Inst_vga_controller|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~4_combout\ = ( \Inst_vga_controller|Add1~13_sumout\ & ( !\Inst_vga_controller|LessThan0~3_combout\ ) ) # ( !\Inst_vga_controller|Add1~13_sumout\ & ( (!\Inst_vga_controller|LessThan0~3_combout\ & 
-- ((!\Inst_vga_controller|Add1~9_sumout\) # (!\Inst_vga_controller|Add1~17_sumout\ $ (\Inst_vga_controller|Add1~5_sumout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000100110011001000010011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add1~17_sumout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datac => \Inst_vga_controller|ALT_INV_Add1~5_sumout\,
	datad => \Inst_vga_controller|ALT_INV_Add1~9_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add1~13_sumout\,
	combout => \Inst_vga_controller|process_0~4_combout\);

-- Location: LABCELL_X36_Y79_N18
\Inst_vga_controller|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~3_combout\ = ( \Inst_vga_controller|Add1~5_sumout\ & ( !\Inst_vga_controller|v_count~2_combout\ & ( (\Inst_vga_controller|v_count\(0) & (\Inst_vga_controller|LessThan0~3_combout\ & !\Inst_vga_controller|v_count\(1))) ) ) ) # 
-- ( !\Inst_vga_controller|Add1~5_sumout\ & ( !\Inst_vga_controller|v_count~2_combout\ & ( (!\Inst_vga_controller|LessThan0~3_combout\ & (((\Inst_vga_controller|Add1~1_sumout\)))) # (\Inst_vga_controller|LessThan0~3_combout\ & 
-- (\Inst_vga_controller|v_count\(0) & (!\Inst_vga_controller|v_count\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011011100000100000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(0),
	datab => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datac => \Inst_vga_controller|ALT_INV_v_count\(1),
	datad => \Inst_vga_controller|ALT_INV_Add1~1_sumout\,
	datae => \Inst_vga_controller|ALT_INV_Add1~5_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	combout => \Inst_vga_controller|process_0~3_combout\);

-- Location: LABCELL_X35_Y79_N57
\Inst_vga_controller|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~7_combout\ = ( \Inst_vga_controller|process_0~4_combout\ & ( \Inst_vga_controller|process_0~3_combout\ ) ) # ( !\Inst_vga_controller|process_0~4_combout\ & ( \Inst_vga_controller|process_0~3_combout\ ) ) # ( 
-- \Inst_vga_controller|process_0~4_combout\ & ( !\Inst_vga_controller|process_0~3_combout\ ) ) # ( !\Inst_vga_controller|process_0~4_combout\ & ( !\Inst_vga_controller|process_0~3_combout\ & ( (!\Inst_vga_controller|LessThan7~0_combout\) # 
-- ((!\Inst_vga_controller|LessThan7~1_combout\) # (!\Inst_vga_controller|process_0~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111010111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan7~0_combout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan7~1_combout\,
	datad => \Inst_vga_controller|ALT_INV_process_0~6_combout\,
	datae => \Inst_vga_controller|ALT_INV_process_0~4_combout\,
	dataf => \Inst_vga_controller|ALT_INV_process_0~3_combout\,
	combout => \Inst_vga_controller|process_0~7_combout\);

-- Location: FF_X35_Y79_N59
\Inst_vga_controller|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk25~q\,
	d => \Inst_vga_controller|process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_sync~q\);
END structure;


