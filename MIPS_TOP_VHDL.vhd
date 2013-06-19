----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:23:54 01/27/2013 
-- Design Name: 
-- Module Name:    MIPS_TOP_VHDL - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
----------------------------------------------------------------------------------
entity MIPS_PROCESSOR is
	port(
		clk:				IN		STD_LOGIC;
		reset:			IN		STD_LOGIC;
		instruction:	OUT	STD_LOGIC_VECTOR(31 downto 0);
		prog_counter:	OUT	STD_LOGIC_VECTOR(31 downto 0)
	);
end MIPS_PROCESSOR;
----------------------------------------------------------------------------------
architecture Behavioral of MIPS_PROCESSOR is
----------------------------------------------------------------------------------
	component PC
	port(
		Clk:	IN	STD_LOGIC;
		Reset:	IN	STD_LOGIC; 		
		PC_IN:	IN	STD_LOGIC_VECTOR(31 downto 0); 	
		PC_OUT:	OUT	STD_LOGIC_VECTOR(31 downto 0)
	);
	end component;
----------------------------------------------------------------------------------
	component IMem
	port(
		PC: 				IN		STD_LOGIC_VECTOR(31 downto 0);
		Instruction:	OUT	STD_LOGIC_VECTOR(31 downto 0)	
	);
	end component;
----------------------------------------------------------------------------------	
	component PC4
	port(
		PC_IN:	IN		STD_LOGIC_VECTOR(31 downto 0);
		PC_OUT:	OUT	STD_LOGIC_VECTOR(31 downto 0)
	);
	end component;
----------------------------------------------------------------------------------
	signal program_counter,program_counter4:STD_LOGIC_VECTOR(31 downto 0);	
begin
----------------------------------------------------------------------------------
	PCounter:PC port map(
		Clk=>clk,
		Reset=>reset,
		PC_OUT=>program_counter,
		PC_IN=>program_counter4
	);
----------------------------------------------------------------------------------
	InstructionMem:IMem port map(
		PC=>program_counter,
		Instruction=>instruction
	);
----------------------------------------------------------------------------------
	PCAdder:PC4 port map(
		PC_IN=>program_counter,
		PC_OUT=>program_counter4
	);
	
	prog_counter<=program_counter4;
end Behavioral;

