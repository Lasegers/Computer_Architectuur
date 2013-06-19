----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:02:48 04/24/2013 
-- Design Name: 
-- Module Name:    Segment_8_Driver - Behavioral 
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

-- segments of display are

--					0
--        	  ----
--				5/	6  / 1
--				 ----
--			  4/	 / 2
--				---- * 7
--				 3
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
----------------------------------------------------------------------------------
entity Segment_8_Driver is
	port(
		DATA_IN:		IN		STD_LOGIC_VECTOR(3 downto 0);
		Segments:	OUT	STD_LOGIC_VECTOR(7 downto 0) 
	);
end Segment_8_Driver;

architecture Behavioral of Segment_8_Driver is

begin
	data_2_segments:process(DATA_IN)
	begin
		-- accept hex values (0 to 16 - 0 to F)
		case conv_integer(DATA_IN) is
			when 0 => Segments <= "11000000";
			when 1 => Segments <= "11111001";
			when 2 => Segments <= "10100100";
			when 3 => Segments <= "10110000";
			when 4 => Segments <= "10011001";			
			when 5 => Segments <= "10010010";			
			when 6 => Segments <= "10000010";
			when 7 => Segments <= "11111000";			
			when 8 => Segments <= "10000000";
			when 9 => Segments <= "10010000";
			when 10 => Segments <= "10001000";
			when 11 => Segments <= "10000011";
			when 12 => Segments <= "10000110";
			when 13 => Segments <= "10000110";
			when 14 => Segments <= "10001110";
			when 15 => Segments <= "10000010";
		end case;
	end process data_2_segments;

end Behavioral;

