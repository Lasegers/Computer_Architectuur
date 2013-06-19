----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:04:01 01/18/2013 
-- Design Name: 
-- Module Name:    IMem - Behavioral 
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
entity IMem is
port(
	PC: 				IN		STD_LOGIC_VECTOR(31 downto 0);
	Instruction:	OUT	STD_LOGIC_VECTOR(31 downto 0)	
);
end IMem;
----------------------------------------------------------------------------------
architecture Behavioral of IMem is	
begin
	-------------------------------------------------------------------------------
	MemoryPC:process(PC)
		subtype 		word 		is STD_LOGIC_VECTOR(31 downto 0);
		type 			memory 	is array(0 to 7) of word;
		variable 	myMem:	memory	:=	
		(X"00000001", X"00000010", X"00000100", X"00001000",
		 X"00010000", X"00100000", X"01000000", X"10000000");		
	begin		
		Instruction<=myMem(conv_integer(PC(31 downto 2)));
	end process MemoryPC;
	-------------------------------------------------------------------------------	
end Behavioral;

