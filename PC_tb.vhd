--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:40:42 01/26/2013
-- Design Name:   
-- Module Name:   E:/workdir/EHB/Courses/Computer architectuur/FPGA/MIPS/MIPS/PC_tb.vhd
-- Project Name:  MIPS
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
ENTITY PC_tb IS
END PC_tb;
 
ARCHITECTURE behavior OF PC_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         Clk : IN  std_logic;
         Reset : IN  std_logic;
         PC_IN : IN  std_logic_vector(31 downto 0);
         PC_OUT : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Reset : std_logic := '0';
   signal PC_IN : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal PC_OUT : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          Clk => Clk,
          Reset => Reset,
          PC_IN => PC_IN,
          PC_OUT => PC_OUT
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '1';
		wait for Clk_period/2;
		Clk <= '0';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		PC_in<=(others=>'0'); 
		wait for Clk_period;		
		PC_in<=PC_OUT+4;      
		wait for Clk_period;
		PC_in<=PC_OUT+4;
		-- deal the asynchronous Reset pin		
		wait for 2 ns;
		Reset<='1';
		wait for 8 ns;
		PC_in<=PC_OUT+4;
		wait for 8 ns;		
		Reset<='0';
		wait for 2 ns;
		PC_in<=PC_OUT+4;
		wait for Clk_period;
		PC_in<=PC_OUT+4;
		wait for Clk_period;
		PC_in<=PC_OUT+4;
      wait;
   end process;

END;
