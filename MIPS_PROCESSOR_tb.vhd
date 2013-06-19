--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:46:37 02/03/2013
-- Design Name:   
-- Module Name:   F:/EHB/Courses/Computer architectuur/FPGA/MIPS/MIPS/MIPS_PROCESSOR_tb.vhd
-- Project Name:  MIPS
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MIPS_PROCESSOR
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
 
ENTITY MIPS_PROCESSOR_tb IS
END MIPS_PROCESSOR_tb;
 
ARCHITECTURE behavior OF MIPS_PROCESSOR_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MIPS_PROCESSOR
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         instruction : OUT  std_logic_vector(31 downto 0);
         prog_counter : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
   signal instruction : std_logic_vector(31 downto 0);
   signal prog_counter : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MIPS_PROCESSOR PORT MAP (
          clk => clk,
          reset => reset,
          instruction => instruction,
          prog_counter => prog_counter
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '1';
		wait for clk_period/2;
		clk <= '0';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		Reset<='1';
      wait for 100 ns;		
		Reset<='0';		
      wait for 41ns;
		Reset<='1';
		wait for 10ns;
		Reset<='0';
		wait for 9ns;
      wait;
   end process;

END;
