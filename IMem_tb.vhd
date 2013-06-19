--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:49:07 02/20/2013
-- Design Name:   
-- Module Name:   F:/EHB/Courses/Computer architectuur/FPGA/MIPS/MIPS/Imem_tb.vhd
-- Project Name:  MIPS
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IMem
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
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Imem_tb IS
END Imem_tb;
 
ARCHITECTURE behavior OF Imem_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IMem
    PORT(
         PC : IN  std_logic_vector(31 downto 0);
         Instruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal PC : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal Instruction : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant clk_period : time := 10 ns;
	signal clk: STD_LOGIC;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IMem PORT MAP (
          PC => PC,
          Instruction => Instruction
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
