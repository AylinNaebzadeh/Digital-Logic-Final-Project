--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:04:16 01/13/2022
-- Design Name:   
-- Module Name:   D:/Logical-Circute/Final-Project-VHDL/secondTry/Demux17_tb.vhd
-- Project Name:  secondTry
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Demux17
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
 
ENTITY Demux17_tb IS
END Demux17_tb;
 
ARCHITECTURE behavior OF Demux17_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Demux17
    PORT(
         I : IN  std_logic;
         SEL : IN  std_logic_vector(0 to 4);
         O : OUT  std_logic_vector(0 to 16)
        );
    END COMPONENT;
    

   --Inputs
   signal I : std_logic := '0';
   signal SEL : std_logic_vector(0 to 4) := (others => '0');

 	--Outputs
   signal O : std_logic_vector(0 to 16);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Demux17 PORT MAP (
          I => I,
          SEL => SEL,
          O => O
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
