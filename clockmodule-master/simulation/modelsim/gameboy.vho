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

-- DATE "10/21/2016 23:21:21"

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

ENTITY 	gameboy IS
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
END gameboy;

-- Design Ports Information
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_BLANK_N	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF gameboy IS
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
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~1_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~21_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~22\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~25_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~26\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~29_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~30\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~33_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~34\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~13_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~14\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~17_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~18\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~5_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~6\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~37_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~38\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~1_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~2\ : std_logic;
SIGNAL \Inst_vga_controller|Add0~9_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan0~2_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan0~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan0~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan0~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~2\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~5_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~6\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~17_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~18\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~9_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|v_count~0_combout\ : std_logic;
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
SIGNAL \Inst_vga_controller|v_count~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~26\ : std_logic;
SIGNAL \Inst_vga_controller|Add1~37_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|v_count~2_combout\ : std_logic;
SIGNAL \Inst_vga_controller|v_count~4_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|v_count~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[0]~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[0]~_wirecell_combout\ : std_logic;
SIGNAL \Inst_vga_controller|row[1]~feeder_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~4_combout\ : std_logic;
SIGNAL \Inst_vga_controller|LessThan7~5_combout\ : std_logic;
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
SIGNAL \Inst_vga_controller|LessThan6~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~8_combout\ : std_logic;
SIGNAL \Inst_vga_controller|disp_ena~q\ : std_logic;
SIGNAL \VGA_R[0]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \VGA_R[1]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \VGA_R[2]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \VGA_R[3]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \VGA_R[4]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \VGA_R[5]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \VGA_R[6]~reg0_q\ : std_logic;
SIGNAL \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \VGA_R[7]~reg0_q\ : std_logic;
SIGNAL \Inst_vga_controller|column[0]~0_combout\ : std_logic;
SIGNAL \VGA_G[0]~reg0_q\ : std_logic;
SIGNAL \VGA_G[1]~reg0_q\ : std_logic;
SIGNAL \VGA_G[2]~reg0_q\ : std_logic;
SIGNAL \Inst_vga_controller|column[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_G[3]~reg0_q\ : std_logic;
SIGNAL \VGA_G[4]~reg0_q\ : std_logic;
SIGNAL \Inst_vga_controller|column[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_G[5]~reg0_q\ : std_logic;
SIGNAL \VGA_G[6]~reg0_q\ : std_logic;
SIGNAL \VGA_G[7]~reg0_q\ : std_logic;
SIGNAL \VGA_B[0]~reg0_q\ : std_logic;
SIGNAL \VGA_B[1]~reg0_q\ : std_logic;
SIGNAL \VGA_B[2]~reg0_q\ : std_logic;
SIGNAL \VGA_B[3]~reg0_q\ : std_logic;
SIGNAL \VGA_B[4]~reg0_q\ : std_logic;
SIGNAL \VGA_B[5]~reg0_q\ : std_logic;
SIGNAL \VGA_B[6]~reg0_q\ : std_logic;
SIGNAL \VGA_B[7]~reg0_q\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~0_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~1_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~2_combout\ : std_logic;
SIGNAL \Inst_vga_controller|h_sync~q\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~3_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~5_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~6_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~4_combout\ : std_logic;
SIGNAL \Inst_vga_controller|process_0~7_combout\ : std_logic;
SIGNAL \Inst_vga_controller|v_sync~q\ : std_logic;
SIGNAL \Inst_vga_controller|column\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Inst_vga_controller|row\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \Inst_vga_controller|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \Inst_vga_controller|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|fboutclk_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \pll_inst|pll_inst|altera_pll_i|outclk_wire\ : std_logic_vector(1 DOWNTO 0);
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
SIGNAL \Inst_vga_controller|ALT_INV_row\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Inst_vga_controller|ALT_INV_column\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \Inst_vga_controller|ALT_INV_disp_ena~q\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~37_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~33_sumout\ : std_logic;
SIGNAL \Inst_vga_controller|ALT_INV_Add1~29_sumout\ : std_logic;
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

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & 
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & 
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ <= \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(6);

\pll_inst|pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
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
\Inst_vga_controller|ALT_INV_Add1~37_sumout\ <= NOT \Inst_vga_controller|Add1~37_sumout\;
\Inst_vga_controller|ALT_INV_Add1~33_sumout\ <= NOT \Inst_vga_controller|Add1~33_sumout\;
\Inst_vga_controller|ALT_INV_Add1~29_sumout\ <= NOT \Inst_vga_controller|Add1~29_sumout\;
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
	i => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
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

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "300.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 2000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 10,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 3,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 3,
	pll_m_cnt_odd_div_duty_en => "false",
	pll_m_cnt_ph_mux_prst => 0,
	pll_m_cnt_prst => 1,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 1,
	pll_n_cnt_lo_div => 1,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 2,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "100.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \pll_inst|pll_inst|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => GND,
	refclkin => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \pll_inst|pll_inst|altera_pll_i|fboutclk_wire\(0),
	tclk => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
  fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\pll_inst|pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 6,
	dprio0_cnt_lo_div => 6,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "25.0 mhz",
	phase_shift => "0 ps",
  fractional_pll_index => 0,
  output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \pll_inst|pll_inst|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \pll_inst|pll_inst|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \pll_inst|pll_inst|altera_pll_i|outclk_wire\(1));

-- Location: CLKCTRL_G6
\pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \pll_inst|pll_inst|altera_pll_i|outclk_wire\(1),
	outclk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\);

-- Location: MLABCELL_X25_Y80_N6
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

-- Location: MLABCELL_X28_Y80_N30
\Inst_vga_controller|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~1_sumout\ = SUM(( \Inst_vga_controller|v_count\(0) ) + ( VCC ) + ( !VCC ))
-- \Inst_vga_controller|Add1~2\ = CARRY(( \Inst_vga_controller|v_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_v_count\(0),
	cin => GND,
	sumout => \Inst_vga_controller|Add1~1_sumout\,
	cout => \Inst_vga_controller|Add1~2\);

-- Location: LABCELL_X24_Y80_N30
\Inst_vga_controller|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~21_sumout\ = SUM(( \Inst_vga_controller|h_count\(0) ) + ( VCC ) + ( !VCC ))
-- \Inst_vga_controller|Add0~22\ = CARRY(( \Inst_vga_controller|h_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count\(0),
	cin => GND,
	sumout => \Inst_vga_controller|Add0~21_sumout\,
	cout => \Inst_vga_controller|Add0~22\);

-- Location: FF_X24_Y80_N31
\Inst_vga_controller|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add0~21_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(0));

-- Location: LABCELL_X24_Y80_N33
\Inst_vga_controller|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~25_sumout\ = SUM(( \Inst_vga_controller|h_count\(1) ) + ( GND ) + ( \Inst_vga_controller|Add0~22\ ))
-- \Inst_vga_controller|Add0~26\ = CARRY(( \Inst_vga_controller|h_count\(1) ) + ( GND ) + ( \Inst_vga_controller|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count\(1),
	cin => \Inst_vga_controller|Add0~22\,
	sumout => \Inst_vga_controller|Add0~25_sumout\,
	cout => \Inst_vga_controller|Add0~26\);

-- Location: FF_X24_Y80_N35
\Inst_vga_controller|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add0~25_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(1));

-- Location: LABCELL_X24_Y80_N36
\Inst_vga_controller|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~29_sumout\ = SUM(( \Inst_vga_controller|h_count\(2) ) + ( GND ) + ( \Inst_vga_controller|Add0~26\ ))
-- \Inst_vga_controller|Add0~30\ = CARRY(( \Inst_vga_controller|h_count\(2) ) + ( GND ) + ( \Inst_vga_controller|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count\(2),
	cin => \Inst_vga_controller|Add0~26\,
	sumout => \Inst_vga_controller|Add0~29_sumout\,
	cout => \Inst_vga_controller|Add0~30\);

-- Location: FF_X24_Y80_N38
\Inst_vga_controller|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add0~29_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(2));

-- Location: LABCELL_X24_Y80_N39
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

-- Location: FF_X24_Y80_N41
\Inst_vga_controller|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add0~33_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(3));

-- Location: LABCELL_X24_Y80_N42
\Inst_vga_controller|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~13_sumout\ = SUM(( \Inst_vga_controller|h_count\(4) ) + ( GND ) + ( \Inst_vga_controller|Add0~34\ ))
-- \Inst_vga_controller|Add0~14\ = CARRY(( \Inst_vga_controller|h_count\(4) ) + ( GND ) + ( \Inst_vga_controller|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count\(4),
	cin => \Inst_vga_controller|Add0~34\,
	sumout => \Inst_vga_controller|Add0~13_sumout\,
	cout => \Inst_vga_controller|Add0~14\);

-- Location: FF_X24_Y80_N43
\Inst_vga_controller|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add0~13_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(4));

-- Location: LABCELL_X24_Y80_N45
\Inst_vga_controller|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~17_sumout\ = SUM(( \Inst_vga_controller|h_count\(5) ) + ( GND ) + ( \Inst_vga_controller|Add0~14\ ))
-- \Inst_vga_controller|Add0~18\ = CARRY(( \Inst_vga_controller|h_count\(5) ) + ( GND ) + ( \Inst_vga_controller|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count\(5),
	cin => \Inst_vga_controller|Add0~14\,
	sumout => \Inst_vga_controller|Add0~17_sumout\,
	cout => \Inst_vga_controller|Add0~18\);

-- Location: FF_X24_Y80_N47
\Inst_vga_controller|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add0~17_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(5));

-- Location: LABCELL_X24_Y80_N48
\Inst_vga_controller|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~5_sumout\ = SUM(( \Inst_vga_controller|h_count\(6) ) + ( GND ) + ( \Inst_vga_controller|Add0~18\ ))
-- \Inst_vga_controller|Add0~6\ = CARRY(( \Inst_vga_controller|h_count\(6) ) + ( GND ) + ( \Inst_vga_controller|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count\(6),
	cin => \Inst_vga_controller|Add0~18\,
	sumout => \Inst_vga_controller|Add0~5_sumout\,
	cout => \Inst_vga_controller|Add0~6\);

-- Location: FF_X24_Y80_N49
\Inst_vga_controller|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add0~5_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(6));

-- Location: LABCELL_X24_Y80_N51
\Inst_vga_controller|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~37_sumout\ = SUM(( \Inst_vga_controller|h_count\(7) ) + ( GND ) + ( \Inst_vga_controller|Add0~6\ ))
-- \Inst_vga_controller|Add0~38\ = CARRY(( \Inst_vga_controller|h_count\(7) ) + ( GND ) + ( \Inst_vga_controller|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count\(7),
	cin => \Inst_vga_controller|Add0~6\,
	sumout => \Inst_vga_controller|Add0~37_sumout\,
	cout => \Inst_vga_controller|Add0~38\);

-- Location: FF_X24_Y80_N52
\Inst_vga_controller|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add0~37_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(7));

-- Location: LABCELL_X24_Y80_N54
\Inst_vga_controller|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~1_sumout\ = SUM(( \Inst_vga_controller|h_count\(8) ) + ( GND ) + ( \Inst_vga_controller|Add0~38\ ))
-- \Inst_vga_controller|Add0~2\ = CARRY(( \Inst_vga_controller|h_count\(8) ) + ( GND ) + ( \Inst_vga_controller|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count\(8),
	cin => \Inst_vga_controller|Add0~38\,
	sumout => \Inst_vga_controller|Add0~1_sumout\,
	cout => \Inst_vga_controller|Add0~2\);

-- Location: FF_X24_Y80_N55
\Inst_vga_controller|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add0~1_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(8));

-- Location: LABCELL_X24_Y80_N57
\Inst_vga_controller|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add0~9_sumout\ = SUM(( \Inst_vga_controller|h_count\(9) ) + ( GND ) + ( \Inst_vga_controller|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_h_count\(9),
	cin => \Inst_vga_controller|Add0~2\,
	sumout => \Inst_vga_controller|Add0~9_sumout\);

-- Location: FF_X24_Y80_N59
\Inst_vga_controller|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add0~9_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_count\(9));

-- Location: MLABCELL_X25_Y80_N18
\Inst_vga_controller|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan0~2_combout\ = ( \Inst_vga_controller|h_count\(9) & ( \Inst_vga_controller|h_count\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_h_count\(8),
	datae => \Inst_vga_controller|ALT_INV_h_count\(9),
	combout => \Inst_vga_controller|LessThan0~2_combout\);

-- Location: MLABCELL_X25_Y80_N45
\Inst_vga_controller|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan0~1_combout\ = ( !\Inst_vga_controller|h_count\(5) & ( !\Inst_vga_controller|h_count\(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_h_count\(6),
	dataf => \Inst_vga_controller|ALT_INV_h_count\(5),
	combout => \Inst_vga_controller|LessThan0~1_combout\);

-- Location: LABCELL_X24_Y80_N18
\Inst_vga_controller|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan0~0_combout\ = ( \Inst_vga_controller|h_count\(2) & ( \Inst_vga_controller|h_count\(3) & ( (!\Inst_vga_controller|h_count\(7) & ((!\Inst_vga_controller|h_count\(0)) # ((!\Inst_vga_controller|h_count\(1)) # 
-- (!\Inst_vga_controller|h_count\(4))))) ) ) ) # ( !\Inst_vga_controller|h_count\(2) & ( \Inst_vga_controller|h_count\(3) & ( !\Inst_vga_controller|h_count\(7) ) ) ) # ( \Inst_vga_controller|h_count\(2) & ( !\Inst_vga_controller|h_count\(3) & ( 
-- !\Inst_vga_controller|h_count\(7) ) ) ) # ( !\Inst_vga_controller|h_count\(2) & ( !\Inst_vga_controller|h_count\(3) & ( !\Inst_vga_controller|h_count\(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_h_count\(0),
	datab => \Inst_vga_controller|ALT_INV_h_count\(7),
	datac => \Inst_vga_controller|ALT_INV_h_count\(1),
	datad => \Inst_vga_controller|ALT_INV_h_count\(4),
	datae => \Inst_vga_controller|ALT_INV_h_count\(2),
	dataf => \Inst_vga_controller|ALT_INV_h_count\(3),
	combout => \Inst_vga_controller|LessThan0~0_combout\);

-- Location: LABCELL_X27_Y80_N9
\Inst_vga_controller|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan0~3_combout\ = (!\Inst_vga_controller|LessThan0~2_combout\) # ((\Inst_vga_controller|LessThan0~1_combout\ & \Inst_vga_controller|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101110101011101010111010101110101011101010111010101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan0~1_combout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan0~0_combout\,
	combout => \Inst_vga_controller|LessThan0~3_combout\);

-- Location: FF_X28_Y80_N32
\Inst_vga_controller|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add1~1_sumout\,
	asdata => \Inst_vga_controller|v_count\(0),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(0));

-- Location: MLABCELL_X28_Y80_N33
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

-- Location: FF_X28_Y80_N35
\Inst_vga_controller|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add1~5_sumout\,
	asdata => \Inst_vga_controller|v_count\(1),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(1));

-- Location: MLABCELL_X28_Y80_N36
\Inst_vga_controller|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~17_sumout\ = SUM(( \Inst_vga_controller|v_count\(2) ) + ( GND ) + ( \Inst_vga_controller|Add1~6\ ))
-- \Inst_vga_controller|Add1~18\ = CARRY(( \Inst_vga_controller|v_count\(2) ) + ( GND ) + ( \Inst_vga_controller|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_v_count\(2),
	cin => \Inst_vga_controller|Add1~6\,
	sumout => \Inst_vga_controller|Add1~17_sumout\,
	cout => \Inst_vga_controller|Add1~18\);

-- Location: FF_X28_Y80_N38
\Inst_vga_controller|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add1~17_sumout\,
	asdata => \Inst_vga_controller|v_count\(2),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(2));

-- Location: MLABCELL_X28_Y80_N39
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

-- Location: FF_X28_Y80_N41
\Inst_vga_controller|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add1~9_sumout\,
	asdata => \Inst_vga_controller|v_count\(3),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(3));

-- Location: MLABCELL_X25_Y80_N48
\Inst_vga_controller|v_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|v_count~0_combout\ = ( \Inst_vga_controller|v_count\(2) & ( \Inst_vga_controller|v_count\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_v_count\(3),
	dataf => \Inst_vga_controller|ALT_INV_v_count\(2),
	combout => \Inst_vga_controller|v_count~0_combout\);

-- Location: MLABCELL_X28_Y80_N42
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

-- Location: FF_X28_Y80_N44
\Inst_vga_controller|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add1~13_sumout\,
	asdata => \Inst_vga_controller|v_count\(4),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(4));

-- Location: MLABCELL_X28_Y80_N45
\Inst_vga_controller|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~21_sumout\ = SUM(( \Inst_vga_controller|v_count\(5) ) + ( GND ) + ( \Inst_vga_controller|Add1~14\ ))
-- \Inst_vga_controller|Add1~22\ = CARRY(( \Inst_vga_controller|v_count\(5) ) + ( GND ) + ( \Inst_vga_controller|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_v_count\(5),
	cin => \Inst_vga_controller|Add1~14\,
	sumout => \Inst_vga_controller|Add1~21_sumout\,
	cout => \Inst_vga_controller|Add1~22\);

-- Location: FF_X28_Y80_N47
\Inst_vga_controller|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add1~21_sumout\,
	asdata => \Inst_vga_controller|v_count\(5),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(5));

-- Location: MLABCELL_X28_Y80_N48
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

-- Location: FF_X28_Y80_N50
\Inst_vga_controller|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add1~29_sumout\,
	asdata => \Inst_vga_controller|v_count\(6),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(6));

-- Location: MLABCELL_X28_Y80_N51
\Inst_vga_controller|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|Add1~33_sumout\ = SUM(( \Inst_vga_controller|v_count\(7) ) + ( GND ) + ( \Inst_vga_controller|Add1~30\ ))
-- \Inst_vga_controller|Add1~34\ = CARRY(( \Inst_vga_controller|v_count\(7) ) + ( GND ) + ( \Inst_vga_controller|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(7),
	cin => \Inst_vga_controller|Add1~30\,
	sumout => \Inst_vga_controller|Add1~33_sumout\,
	cout => \Inst_vga_controller|Add1~34\);

-- Location: FF_X28_Y80_N53
\Inst_vga_controller|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add1~33_sumout\,
	asdata => \Inst_vga_controller|v_count\(7),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(7));

-- Location: MLABCELL_X28_Y80_N54
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

-- Location: FF_X28_Y80_N56
\Inst_vga_controller|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add1~25_sumout\,
	asdata => \Inst_vga_controller|v_count\(8),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(8));

-- Location: MLABCELL_X28_Y80_N9
\Inst_vga_controller|v_count~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|v_count~1_combout\ = ( !\Inst_vga_controller|v_count\(7) & ( (!\Inst_vga_controller|v_count\(6) & (!\Inst_vga_controller|v_count\(5) & (!\Inst_vga_controller|v_count\(4) & !\Inst_vga_controller|v_count\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(6),
	datab => \Inst_vga_controller|ALT_INV_v_count\(5),
	datac => \Inst_vga_controller|ALT_INV_v_count\(4),
	datad => \Inst_vga_controller|ALT_INV_v_count\(8),
	dataf => \Inst_vga_controller|ALT_INV_v_count\(7),
	combout => \Inst_vga_controller|v_count~1_combout\);

-- Location: MLABCELL_X28_Y80_N57
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

-- Location: FF_X28_Y80_N59
\Inst_vga_controller|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|Add1~37_sumout\,
	asdata => \Inst_vga_controller|v_count\(9),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_count\(9));

-- Location: MLABCELL_X25_Y80_N30
\Inst_vga_controller|v_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|v_count~2_combout\ = ( \Inst_vga_controller|v_count\(9) & ( \Inst_vga_controller|LessThan0~0_combout\ & ( (\Inst_vga_controller|LessThan0~2_combout\ & (!\Inst_vga_controller|LessThan0~1_combout\ & 
-- ((!\Inst_vga_controller|v_count~1_combout\) # (\Inst_vga_controller|v_count~0_combout\)))) ) ) ) # ( \Inst_vga_controller|v_count\(9) & ( !\Inst_vga_controller|LessThan0~0_combout\ & ( (\Inst_vga_controller|LessThan0~2_combout\ & 
-- ((!\Inst_vga_controller|v_count~1_combout\) # (\Inst_vga_controller|v_count~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000110100000000000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count~0_combout\,
	datab => \Inst_vga_controller|ALT_INV_v_count~1_combout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	datad => \Inst_vga_controller|ALT_INV_LessThan0~1_combout\,
	datae => \Inst_vga_controller|ALT_INV_v_count\(9),
	dataf => \Inst_vga_controller|ALT_INV_LessThan0~0_combout\,
	combout => \Inst_vga_controller|v_count~2_combout\);

-- Location: LABCELL_X27_Y80_N51
\Inst_vga_controller|v_count~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|v_count~4_combout\ = ( \Inst_vga_controller|v_count\(0) & ( (!\Inst_vga_controller|v_count~2_combout\ & ((\Inst_vga_controller|Add1~1_sumout\) # (\Inst_vga_controller|LessThan0~3_combout\))) ) ) # ( !\Inst_vga_controller|v_count\(0) & 
-- ( (!\Inst_vga_controller|v_count~2_combout\ & (!\Inst_vga_controller|LessThan0~3_combout\ & \Inst_vga_controller|Add1~1_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000001100110011000000110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datad => \Inst_vga_controller|ALT_INV_Add1~1_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_v_count\(0),
	combout => \Inst_vga_controller|v_count~4_combout\);

-- Location: MLABCELL_X28_Y80_N12
\Inst_vga_controller|LessThan7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~1_combout\ = ( \Inst_vga_controller|v_count\(6) & ( (!\Inst_vga_controller|LessThan0~3_combout\ & (\Inst_vga_controller|Add1~29_sumout\ & ((\Inst_vga_controller|Add1~33_sumout\)))) # 
-- (\Inst_vga_controller|LessThan0~3_combout\ & (((\Inst_vga_controller|v_count\(7))))) ) ) # ( !\Inst_vga_controller|v_count\(6) & ( (\Inst_vga_controller|Add1~29_sumout\ & (!\Inst_vga_controller|LessThan0~3_combout\ & \Inst_vga_controller|Add1~33_sumout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100000000000100010000000011010001110000001101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add1~29_sumout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datac => \Inst_vga_controller|ALT_INV_v_count\(7),
	datad => \Inst_vga_controller|ALT_INV_Add1~33_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_v_count\(6),
	combout => \Inst_vga_controller|LessThan7~1_combout\);

-- Location: MLABCELL_X28_Y80_N0
\Inst_vga_controller|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~0_combout\ = ( \Inst_vga_controller|LessThan0~3_combout\ & ( (\Inst_vga_controller|v_count\(8) & \Inst_vga_controller|v_count\(5)) ) ) # ( !\Inst_vga_controller|LessThan0~3_combout\ & ( (\Inst_vga_controller|Add1~21_sumout\ 
-- & \Inst_vga_controller|Add1~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add1~21_sumout\,
	datab => \Inst_vga_controller|ALT_INV_Add1~25_sumout\,
	datac => \Inst_vga_controller|ALT_INV_v_count\(8),
	datad => \Inst_vga_controller|ALT_INV_v_count\(5),
	dataf => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	combout => \Inst_vga_controller|LessThan7~0_combout\);

-- Location: LABCELL_X27_Y80_N15
\Inst_vga_controller|v_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|v_count~3_combout\ = ( \Inst_vga_controller|LessThan0~0_combout\ & ( (!\Inst_vga_controller|LessThan0~1_combout\ & ((!\Inst_vga_controller|LessThan0~2_combout\ & ((\Inst_vga_controller|v_count\(9)))) # 
-- (\Inst_vga_controller|LessThan0~2_combout\ & (\Inst_vga_controller|Add1~37_sumout\)))) # (\Inst_vga_controller|LessThan0~1_combout\ & (((\Inst_vga_controller|v_count\(9))))) ) ) # ( !\Inst_vga_controller|LessThan0~0_combout\ & ( 
-- (!\Inst_vga_controller|LessThan0~2_combout\ & ((\Inst_vga_controller|v_count\(9)))) # (\Inst_vga_controller|LessThan0~2_combout\ & (\Inst_vga_controller|Add1~37_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010001110000111101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add1~37_sumout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan0~1_combout\,
	datac => \Inst_vga_controller|ALT_INV_v_count\(9),
	datad => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan0~0_combout\,
	combout => \Inst_vga_controller|v_count~3_combout\);

-- Location: LABCELL_X27_Y80_N36
\Inst_vga_controller|row[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[0]~0_combout\ = ( \Inst_vga_controller|row\(0) & ( \Inst_vga_controller|v_count~3_combout\ & ( (!\Inst_vga_controller|v_count~4_combout\) # (!\Inst_vga_controller|v_count~2_combout\) ) ) ) # ( !\Inst_vga_controller|row\(0) & ( 
-- \Inst_vga_controller|v_count~3_combout\ & ( (!\Inst_vga_controller|v_count~4_combout\ & \Inst_vga_controller|v_count~2_combout\) ) ) ) # ( \Inst_vga_controller|row\(0) & ( !\Inst_vga_controller|v_count~3_combout\ & ( 
-- (!\Inst_vga_controller|v_count~4_combout\) # ((\Inst_vga_controller|LessThan7~1_combout\ & (\Inst_vga_controller|LessThan7~0_combout\ & !\Inst_vga_controller|v_count~2_combout\))) ) ) ) # ( !\Inst_vga_controller|row\(0) & ( 
-- !\Inst_vga_controller|v_count~3_combout\ & ( (!\Inst_vga_controller|v_count~4_combout\ & ((!\Inst_vga_controller|LessThan7~1_combout\) # ((!\Inst_vga_controller|LessThan7~0_combout\) # (\Inst_vga_controller|v_count~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100010101010101010111010101000000000101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count~4_combout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan7~1_combout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan7~0_combout\,
	datad => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	datae => \Inst_vga_controller|ALT_INV_row\(0),
	dataf => \Inst_vga_controller|ALT_INV_v_count~3_combout\,
	combout => \Inst_vga_controller|row[0]~0_combout\);

-- Location: FF_X27_Y80_N37
\Inst_vga_controller|row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(0));

-- Location: LABCELL_X27_Y80_N27
\Inst_vga_controller|row[0]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[0]~_wirecell_combout\ = !\Inst_vga_controller|row\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_row\(0),
	combout => \Inst_vga_controller|row[0]~_wirecell_combout\);

-- Location: LABCELL_X27_Y80_N12
\Inst_vga_controller|row[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[1]~feeder_combout\ = ( \Inst_vga_controller|Add1~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_Add1~5_sumout\,
	combout => \Inst_vga_controller|row[1]~feeder_combout\);

-- Location: MLABCELL_X28_Y80_N6
\Inst_vga_controller|LessThan7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~3_combout\ = ( \Inst_vga_controller|v_count\(7) & ( (!\Inst_vga_controller|v_count\(9) & ((!\Inst_vga_controller|v_count\(6)) # ((!\Inst_vga_controller|v_count\(5)) # (!\Inst_vga_controller|v_count\(8))))) ) ) # ( 
-- !\Inst_vga_controller|v_count\(7) & ( !\Inst_vga_controller|v_count\(9) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111110000000001111111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(6),
	datab => \Inst_vga_controller|ALT_INV_v_count\(5),
	datac => \Inst_vga_controller|ALT_INV_v_count\(8),
	datad => \Inst_vga_controller|ALT_INV_v_count\(9),
	dataf => \Inst_vga_controller|ALT_INV_v_count\(7),
	combout => \Inst_vga_controller|LessThan7~3_combout\);

-- Location: MLABCELL_X28_Y80_N24
\Inst_vga_controller|LessThan7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~4_combout\ = ( \Inst_vga_controller|Add1~25_sumout\ & ( \Inst_vga_controller|Add1~21_sumout\ & ( (!\Inst_vga_controller|LessThan0~2_combout\ & (!\Inst_vga_controller|LessThan7~3_combout\)) # 
-- (\Inst_vga_controller|LessThan0~2_combout\ & (((\Inst_vga_controller|Add1~29_sumout\ & \Inst_vga_controller|Add1~33_sumout\)))) ) ) ) # ( !\Inst_vga_controller|Add1~25_sumout\ & ( \Inst_vga_controller|Add1~21_sumout\ & ( 
-- (!\Inst_vga_controller|LessThan0~2_combout\ & !\Inst_vga_controller|LessThan7~3_combout\) ) ) ) # ( \Inst_vga_controller|Add1~25_sumout\ & ( !\Inst_vga_controller|Add1~21_sumout\ & ( (!\Inst_vga_controller|LessThan0~2_combout\ & 
-- !\Inst_vga_controller|LessThan7~3_combout\) ) ) ) # ( !\Inst_vga_controller|Add1~25_sumout\ & ( !\Inst_vga_controller|Add1~21_sumout\ & ( (!\Inst_vga_controller|LessThan0~2_combout\ & !\Inst_vga_controller|LessThan7~3_combout\) ) ) )

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
	datad => \Inst_vga_controller|ALT_INV_Add1~33_sumout\,
	datae => \Inst_vga_controller|ALT_INV_Add1~25_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add1~21_sumout\,
	combout => \Inst_vga_controller|LessThan7~4_combout\);

-- Location: MLABCELL_X25_Y80_N42
\Inst_vga_controller|LessThan7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~5_combout\ = ( \Inst_vga_controller|LessThan0~0_combout\ & ( \Inst_vga_controller|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_LessThan0~1_combout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan0~0_combout\,
	combout => \Inst_vga_controller|LessThan7~5_combout\);

-- Location: LABCELL_X27_Y80_N54
\Inst_vga_controller|LessThan7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan7~2_combout\ = ( \Inst_vga_controller|Add1~37_sumout\ & ( \Inst_vga_controller|LessThan7~5_combout\ & ( ((!\Inst_vga_controller|LessThan0~2_combout\ & ((!\Inst_vga_controller|LessThan7~4_combout\))) # 
-- (\Inst_vga_controller|LessThan0~2_combout\ & (\Inst_vga_controller|LessThan7~3_combout\))) # (\Inst_vga_controller|v_count~2_combout\) ) ) ) # ( !\Inst_vga_controller|Add1~37_sumout\ & ( \Inst_vga_controller|LessThan7~5_combout\ & ( 
-- ((!\Inst_vga_controller|LessThan0~2_combout\ & ((!\Inst_vga_controller|LessThan7~4_combout\))) # (\Inst_vga_controller|LessThan0~2_combout\ & (\Inst_vga_controller|LessThan7~3_combout\))) # (\Inst_vga_controller|v_count~2_combout\) ) ) ) # ( 
-- \Inst_vga_controller|Add1~37_sumout\ & ( !\Inst_vga_controller|LessThan7~5_combout\ & ( ((!\Inst_vga_controller|LessThan7~4_combout\ & !\Inst_vga_controller|LessThan0~2_combout\)) # (\Inst_vga_controller|v_count~2_combout\) ) ) ) # ( 
-- !\Inst_vga_controller|Add1~37_sumout\ & ( !\Inst_vga_controller|LessThan7~5_combout\ & ( (!\Inst_vga_controller|LessThan7~4_combout\) # (\Inst_vga_controller|v_count~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011111111110000001111111111000101111111111100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan7~3_combout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan7~4_combout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	datad => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	datae => \Inst_vga_controller|ALT_INV_Add1~37_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan7~5_combout\,
	combout => \Inst_vga_controller|LessThan7~2_combout\);

-- Location: FF_X27_Y80_N13
\Inst_vga_controller|row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row[1]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(1),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(1));

-- Location: LABCELL_X27_Y80_N18
\Inst_vga_controller|row[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[2]~feeder_combout\ = \Inst_vga_controller|Add1~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_Add1~17_sumout\,
	combout => \Inst_vga_controller|row[2]~feeder_combout\);

-- Location: FF_X27_Y80_N19
\Inst_vga_controller|row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row[2]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(2),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(2));

-- Location: LABCELL_X27_Y80_N21
\Inst_vga_controller|row[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[3]~feeder_combout\ = \Inst_vga_controller|Add1~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add1~9_sumout\,
	combout => \Inst_vga_controller|row[3]~feeder_combout\);

-- Location: FF_X27_Y80_N22
\Inst_vga_controller|row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row[3]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(3),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(3));

-- Location: LABCELL_X27_Y80_N48
\Inst_vga_controller|row[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[4]~feeder_combout\ = ( \Inst_vga_controller|Add1~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_Add1~13_sumout\,
	combout => \Inst_vga_controller|row[4]~feeder_combout\);

-- Location: FF_X27_Y80_N49
\Inst_vga_controller|row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row[4]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(4),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(4));

-- Location: LABCELL_X27_Y80_N6
\Inst_vga_controller|row[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[5]~feeder_combout\ = ( \Inst_vga_controller|Add1~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_Add1~21_sumout\,
	combout => \Inst_vga_controller|row[5]~feeder_combout\);

-- Location: FF_X27_Y80_N7
\Inst_vga_controller|row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row[5]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(5),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(5));

-- Location: MLABCELL_X28_Y80_N15
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

-- Location: FF_X28_Y80_N16
\Inst_vga_controller|row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row[6]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(6),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(6));

-- Location: MLABCELL_X28_Y80_N18
\Inst_vga_controller|row[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[7]~feeder_combout\ = \Inst_vga_controller|Add1~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Inst_vga_controller|ALT_INV_Add1~33_sumout\,
	combout => \Inst_vga_controller|row[7]~feeder_combout\);

-- Location: FF_X28_Y80_N19
\Inst_vga_controller|row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row[7]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(7),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(7));

-- Location: MLABCELL_X28_Y80_N3
\Inst_vga_controller|row[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[8]~feeder_combout\ = \Inst_vga_controller|Add1~25_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Inst_vga_controller|ALT_INV_Add1~25_sumout\,
	combout => \Inst_vga_controller|row[8]~feeder_combout\);

-- Location: FF_X28_Y80_N4
\Inst_vga_controller|row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row[8]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(8),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(8));

-- Location: LABCELL_X27_Y80_N3
\Inst_vga_controller|row[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|row[9]~feeder_combout\ = \Inst_vga_controller|Add1~37_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add1~37_sumout\,
	combout => \Inst_vga_controller|row[9]~feeder_combout\);

-- Location: FF_X27_Y80_N4
\Inst_vga_controller|row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row[9]~feeder_combout\,
	asdata => \Inst_vga_controller|v_count\(9),
	sclr => \Inst_vga_controller|v_count~2_combout\,
	sload => \Inst_vga_controller|LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|row\(9));

-- Location: M10K_X26_Y80_N0
\memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "memoryfirst:memoryfirst_inst|altsyncram:altsyncram_component|altsyncram_m814:auto_generated|ALTSYNCRAM",
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
	clk1 => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	ena0 => GND,
	ena1 => VCC,
	portadatain => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X25_Y80_N36
\Inst_vga_controller|LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|LessThan6~0_combout\ = ( \Inst_vga_controller|Add0~9_sumout\ & ( \Inst_vga_controller|LessThan0~2_combout\ & ( (!\Inst_vga_controller|LessThan0~0_combout\) # ((!\Inst_vga_controller|LessThan0~1_combout\) # 
-- ((!\Inst_vga_controller|Add0~37_sumout\ & !\Inst_vga_controller|Add0~1_sumout\))) ) ) ) # ( !\Inst_vga_controller|Add0~9_sumout\ & ( \Inst_vga_controller|LessThan0~2_combout\ ) ) # ( \Inst_vga_controller|Add0~9_sumout\ & ( 
-- !\Inst_vga_controller|LessThan0~2_combout\ & ( (!\Inst_vga_controller|Add0~37_sumout\ & !\Inst_vga_controller|Add0~1_sumout\) ) ) ) # ( !\Inst_vga_controller|Add0~9_sumout\ & ( !\Inst_vga_controller|LessThan0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011000000000011111111111111111111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan0~0_combout\,
	datab => \Inst_vga_controller|ALT_INV_Add0~37_sumout\,
	datac => \Inst_vga_controller|ALT_INV_LessThan0~1_combout\,
	datad => \Inst_vga_controller|ALT_INV_Add0~1_sumout\,
	datae => \Inst_vga_controller|ALT_INV_Add0~9_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan0~2_combout\,
	combout => \Inst_vga_controller|LessThan6~0_combout\);

-- Location: LABCELL_X27_Y80_N45
\Inst_vga_controller|process_0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~8_combout\ = ( \Inst_vga_controller|v_count~3_combout\ & ( (\Inst_vga_controller|v_count~2_combout\ & \Inst_vga_controller|LessThan6~0_combout\) ) ) # ( !\Inst_vga_controller|v_count~3_combout\ & ( 
-- (\Inst_vga_controller|LessThan6~0_combout\ & ((!\Inst_vga_controller|LessThan7~0_combout\) # ((!\Inst_vga_controller|LessThan7~1_combout\) # (\Inst_vga_controller|v_count~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011101111000000001110111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan7~0_combout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan7~1_combout\,
	datac => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	datad => \Inst_vga_controller|ALT_INV_LessThan6~0_combout\,
	dataf => \Inst_vga_controller|ALT_INV_v_count~3_combout\,
	combout => \Inst_vga_controller|process_0~8_combout\);

-- Location: FF_X27_Y80_N46
\Inst_vga_controller|disp_ena\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|disp_ena~q\);

-- Location: DDIOOUTCELL_X40_Y81_N61
\VGA_R[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a0~portbdataout\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[0]~reg0_q\);

-- Location: DDIOOUTCELL_X38_Y81_N10
\VGA_R[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a1\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[1]~reg0_q\);

-- Location: DDIOOUTCELL_X26_Y81_N67
\VGA_R[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a2\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[2]~reg0_q\);

-- Location: DDIOOUTCELL_X38_Y81_N27
\VGA_R[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a3\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[3]~reg0_q\);

-- Location: DDIOOUTCELL_X36_Y81_N44
\VGA_R[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a4\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[4]~reg0_q\);

-- Location: DDIOOUTCELL_X22_Y81_N27
\VGA_R[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a5\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[5]~reg0_q\);

-- Location: DDIOOUTCELL_X22_Y81_N10
\VGA_R[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a6\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[6]~reg0_q\);

-- Location: DDIOOUTCELL_X26_Y81_N50
\VGA_R[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \memoryfirst_inst|altsyncram_component|auto_generated|ram_block1a7\,
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_R[7]~reg0_q\);

-- Location: LABCELL_X24_Y80_N6
\Inst_vga_controller|column[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|column[0]~0_combout\ = ( \Inst_vga_controller|column\(0) & ( \Inst_vga_controller|LessThan0~3_combout\ & ( (!\Inst_vga_controller|Add0~21_sumout\) # ((\Inst_vga_controller|Add0~9_sumout\ & ((\Inst_vga_controller|Add0~37_sumout\) # 
-- (\Inst_vga_controller|Add0~1_sumout\)))) ) ) ) # ( !\Inst_vga_controller|column\(0) & ( \Inst_vga_controller|LessThan0~3_combout\ & ( (!\Inst_vga_controller|Add0~21_sumout\ & ((!\Inst_vga_controller|Add0~9_sumout\) # ((!\Inst_vga_controller|Add0~1_sumout\ 
-- & !\Inst_vga_controller|Add0~37_sumout\)))) ) ) ) # ( \Inst_vga_controller|column\(0) & ( !\Inst_vga_controller|LessThan0~3_combout\ ) ) # ( !\Inst_vga_controller|column\(0) & ( !\Inst_vga_controller|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111101100000000001111111100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add0~1_sumout\,
	datab => \Inst_vga_controller|ALT_INV_Add0~9_sumout\,
	datac => \Inst_vga_controller|ALT_INV_Add0~37_sumout\,
	datad => \Inst_vga_controller|ALT_INV_Add0~21_sumout\,
	datae => \Inst_vga_controller|ALT_INV_column\(0),
	dataf => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	combout => \Inst_vga_controller|column[0]~0_combout\);

-- Location: FF_X24_Y80_N7
\Inst_vga_controller|column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|column[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(0));

-- Location: DDIOOUTCELL_X4_Y81_N27
\VGA_G[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|ALT_INV_column\(0),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[0]~reg0_q\);

-- Location: FF_X25_Y80_N28
\Inst_vga_controller|column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \Inst_vga_controller|Add0~25_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(1));

-- Location: DDIOOUTCELL_X4_Y81_N10
\VGA_G[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|column\(1),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[1]~reg0_q\);

-- Location: FF_X25_Y80_N22
\Inst_vga_controller|column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \Inst_vga_controller|Add0~29_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(2));

-- Location: DDIOOUTCELL_X20_Y81_N27
\VGA_G[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|column\(2),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[2]~reg0_q\);

-- Location: MLABCELL_X25_Y80_N12
\Inst_vga_controller|column[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|column[3]~feeder_combout\ = ( \Inst_vga_controller|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_Add0~33_sumout\,
	combout => \Inst_vga_controller|column[3]~feeder_combout\);

-- Location: FF_X25_Y80_N13
\Inst_vga_controller|column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|column[3]~feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(3));

-- Location: DDIOOUTCELL_X6_Y81_N10
\VGA_G[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|column\(3),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[3]~reg0_q\);

-- Location: FF_X24_Y80_N29
\Inst_vga_controller|column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \Inst_vga_controller|Add0~13_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(4));

-- Location: DDIOOUTCELL_X10_Y81_N67
\VGA_G[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|column\(4),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[4]~reg0_q\);

-- Location: MLABCELL_X25_Y80_N57
\Inst_vga_controller|column[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|column[5]~feeder_combout\ = ( \Inst_vga_controller|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Inst_vga_controller|ALT_INV_Add0~17_sumout\,
	combout => \Inst_vga_controller|column[5]~feeder_combout\);

-- Location: FF_X25_Y80_N59
\Inst_vga_controller|column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|column[5]~feeder_combout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(5));

-- Location: DDIOOUTCELL_X10_Y81_N50
\VGA_G[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|column\(5),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[5]~reg0_q\);

-- Location: FF_X24_Y80_N22
\Inst_vga_controller|column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \Inst_vga_controller|Add0~5_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(6));

-- Location: DDIOOUTCELL_X18_Y81_N50
\VGA_G[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|column\(6),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[6]~reg0_q\);

-- Location: FF_X25_Y80_N4
\Inst_vga_controller|column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \Inst_vga_controller|Add0~37_sumout\,
	sclr => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	sload => VCC,
	ena => \Inst_vga_controller|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|column\(7));

-- Location: DDIOOUTCELL_X18_Y81_N67
\VGA_G[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|column\(7),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_G[7]~reg0_q\);

-- Location: DDIOOUTCELL_X40_Y81_N44
\VGA_B[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|ALT_INV_row\(0),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[0]~reg0_q\);

-- Location: DDIOOUTCELL_X28_Y81_N27
\VGA_B[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row\(1),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[1]~reg0_q\);

-- Location: DDIOOUTCELL_X20_Y81_N10
\VGA_B[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row\(2),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[2]~reg0_q\);

-- Location: DDIOOUTCELL_X36_Y81_N27
\VGA_B[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row\(3),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[3]~reg0_q\);

-- Location: DDIOOUTCELL_X28_Y81_N10
\VGA_B[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row\(4),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[4]~reg0_q\);

-- Location: DDIOOUTCELL_X36_Y81_N10
\VGA_B[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row\(5),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[5]~reg0_q\);

-- Location: DDIOOUTCELL_X40_Y81_N27
\VGA_B[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row\(6),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[6]~reg0_q\);

-- Location: DDIOOUTCELL_X32_Y81_N27
\VGA_B[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|row\(7),
	sclr => \Inst_vga_controller|ALT_INV_disp_ena~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_B[7]~reg0_q\);

-- Location: LABCELL_X24_Y80_N24
\Inst_vga_controller|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~0_combout\ = ( \Inst_vga_controller|Add0~17_sumout\ & ( \Inst_vga_controller|Add0~13_sumout\ & ( (((\Inst_vga_controller|Add0~33_sumout\) # (\Inst_vga_controller|Add0~25_sumout\)) # (\Inst_vga_controller|Add0~21_sumout\)) # 
-- (\Inst_vga_controller|Add0~29_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add0~29_sumout\,
	datab => \Inst_vga_controller|ALT_INV_Add0~21_sumout\,
	datac => \Inst_vga_controller|ALT_INV_Add0~25_sumout\,
	datad => \Inst_vga_controller|ALT_INV_Add0~33_sumout\,
	datae => \Inst_vga_controller|ALT_INV_Add0~17_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add0~13_sumout\,
	combout => \Inst_vga_controller|process_0~0_combout\);

-- Location: LABCELL_X24_Y80_N12
\Inst_vga_controller|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~1_combout\ = ( \Inst_vga_controller|Add0~17_sumout\ & ( \Inst_vga_controller|Add0~37_sumout\ ) ) # ( !\Inst_vga_controller|Add0~17_sumout\ & ( \Inst_vga_controller|Add0~37_sumout\ & ( (\Inst_vga_controller|Add0~5_sumout\) # 
-- (\Inst_vga_controller|Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000111111001111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inst_vga_controller|ALT_INV_Add0~13_sumout\,
	datac => \Inst_vga_controller|ALT_INV_Add0~5_sumout\,
	datae => \Inst_vga_controller|ALT_INV_Add0~17_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_Add0~37_sumout\,
	combout => \Inst_vga_controller|process_0~1_combout\);

-- Location: LABCELL_X24_Y80_N0
\Inst_vga_controller|process_0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~2_combout\ = ( \Inst_vga_controller|Add0~1_sumout\ & ( \Inst_vga_controller|LessThan0~3_combout\ ) ) # ( !\Inst_vga_controller|Add0~1_sumout\ & ( \Inst_vga_controller|LessThan0~3_combout\ & ( 
-- (!\Inst_vga_controller|Add0~9_sumout\) # ((!\Inst_vga_controller|process_0~1_combout\) # ((\Inst_vga_controller|process_0~0_combout\ & \Inst_vga_controller|Add0~5_sumout\))) ) ) ) # ( \Inst_vga_controller|Add0~1_sumout\ & ( 
-- !\Inst_vga_controller|LessThan0~3_combout\ ) ) # ( !\Inst_vga_controller|Add0~1_sumout\ & ( !\Inst_vga_controller|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111110011011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_process_0~0_combout\,
	datab => \Inst_vga_controller|ALT_INV_Add0~9_sumout\,
	datac => \Inst_vga_controller|ALT_INV_Add0~5_sumout\,
	datad => \Inst_vga_controller|ALT_INV_process_0~1_combout\,
	datae => \Inst_vga_controller|ALT_INV_Add0~1_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	combout => \Inst_vga_controller|process_0~2_combout\);

-- Location: FF_X24_Y80_N1
\Inst_vga_controller|h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|h_sync~q\);

-- Location: LABCELL_X27_Y80_N30
\Inst_vga_controller|process_0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~3_combout\ = ( !\Inst_vga_controller|v_count~2_combout\ & ( \Inst_vga_controller|v_count\(0) & ( (!\Inst_vga_controller|LessThan0~3_combout\ & (((\Inst_vga_controller|Add1~1_sumout\ & !\Inst_vga_controller|Add1~5_sumout\)))) 
-- # (\Inst_vga_controller|LessThan0~3_combout\ & (!\Inst_vga_controller|v_count\(1))) ) ) ) # ( !\Inst_vga_controller|v_count~2_combout\ & ( !\Inst_vga_controller|v_count\(0) & ( (\Inst_vga_controller|Add1~1_sumout\ & (!\Inst_vga_controller|Add1~5_sumout\ & 
-- !\Inst_vga_controller|LessThan0~3_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000000000000000000000110000101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(1),
	datab => \Inst_vga_controller|ALT_INV_Add1~1_sumout\,
	datac => \Inst_vga_controller|ALT_INV_Add1~5_sumout\,
	datad => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datae => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	dataf => \Inst_vga_controller|ALT_INV_v_count\(0),
	combout => \Inst_vga_controller|process_0~3_combout\);

-- Location: MLABCELL_X28_Y80_N21
\Inst_vga_controller|process_0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~5_combout\ = (!\Inst_vga_controller|v_count\(4) & (\Inst_vga_controller|v_count\(3) & (!\Inst_vga_controller|v_count\(1) $ (!\Inst_vga_controller|v_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000001000000001000000100000000100000010000000010000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_v_count\(1),
	datab => \Inst_vga_controller|ALT_INV_v_count\(4),
	datac => \Inst_vga_controller|ALT_INV_v_count\(3),
	datad => \Inst_vga_controller|ALT_INV_v_count\(2),
	combout => \Inst_vga_controller|process_0~5_combout\);

-- Location: LABCELL_X27_Y80_N0
\Inst_vga_controller|process_0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~6_combout\ = ( \Inst_vga_controller|v_count\(9) & ( (!\Inst_vga_controller|Add1~37_sumout\ & (!\Inst_vga_controller|LessThan0~3_combout\ & !\Inst_vga_controller|v_count~2_combout\)) ) ) # ( !\Inst_vga_controller|v_count\(9) 
-- & ( (!\Inst_vga_controller|v_count~2_combout\ & ((!\Inst_vga_controller|LessThan0~3_combout\ & (!\Inst_vga_controller|Add1~37_sumout\)) # (\Inst_vga_controller|LessThan0~3_combout\ & ((\Inst_vga_controller|process_0~5_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000101100000000100010110000000010001000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add1~37_sumout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	datac => \Inst_vga_controller|ALT_INV_process_0~5_combout\,
	datad => \Inst_vga_controller|ALT_INV_v_count~2_combout\,
	dataf => \Inst_vga_controller|ALT_INV_v_count\(9),
	combout => \Inst_vga_controller|process_0~6_combout\);

-- Location: LABCELL_X27_Y80_N24
\Inst_vga_controller|process_0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~4_combout\ = ( !\Inst_vga_controller|LessThan0~3_combout\ & ( (!\Inst_vga_controller|Add1~9_sumout\) # ((!\Inst_vga_controller|Add1~17_sumout\ $ (\Inst_vga_controller|Add1~5_sumout\)) # 
-- (\Inst_vga_controller|Add1~13_sumout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111110111111111011111011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_Add1~9_sumout\,
	datab => \Inst_vga_controller|ALT_INV_Add1~17_sumout\,
	datac => \Inst_vga_controller|ALT_INV_Add1~13_sumout\,
	datad => \Inst_vga_controller|ALT_INV_Add1~5_sumout\,
	dataf => \Inst_vga_controller|ALT_INV_LessThan0~3_combout\,
	combout => \Inst_vga_controller|process_0~4_combout\);

-- Location: LABCELL_X27_Y80_N42
\Inst_vga_controller|process_0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Inst_vga_controller|process_0~7_combout\ = ( \Inst_vga_controller|process_0~4_combout\ ) # ( !\Inst_vga_controller|process_0~4_combout\ & ( (!\Inst_vga_controller|LessThan7~0_combout\) # ((!\Inst_vga_controller|LessThan7~1_combout\) # 
-- ((!\Inst_vga_controller|process_0~6_combout\) # (\Inst_vga_controller|process_0~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111101111111111111110111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Inst_vga_controller|ALT_INV_LessThan7~0_combout\,
	datab => \Inst_vga_controller|ALT_INV_LessThan7~1_combout\,
	datac => \Inst_vga_controller|ALT_INV_process_0~3_combout\,
	datad => \Inst_vga_controller|ALT_INV_process_0~6_combout\,
	dataf => \Inst_vga_controller|ALT_INV_process_0~4_combout\,
	combout => \Inst_vga_controller|process_0~7_combout\);

-- Location: FF_X27_Y80_N43
\Inst_vga_controller|v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pll_inst|pll_inst|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Inst_vga_controller|process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Inst_vga_controller|v_sync~q\);


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
      number_of_fplls => 1);
-- pragma translate_on
END structure;


