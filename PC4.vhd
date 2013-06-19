----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:25:29 01/27/2013 
-- Design Name: 
-- Module Name:    PC4 - Behavioral 
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
entity PC4 is
	port(
		PC_IN:	IN		STD_LOGIC_VECTOR(31 downto 0);
		PC_OUT:	OUT	STD_LOGIC_VECTOR(31 downto 0)
	);
end PC4;
----------------------------------------------------------------------------------
architecture Behavioral of PC4 is
begin
----------------------------------------------------------------------------------
	add:process(PC_IN)
	begin
		PC_OUT<=PC_IN+4;
	end process add;
----------------------------------------------------------------------------------
end Behavioral;

