----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:18:49 01/13/2022 
-- Design Name: 
-- Module Name:    FinalComponent - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FinalComponent is
    Port ( input : in  STD_LOGIC_VECTOR (16 downto 0);
           output : out  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end FinalComponent;

architecture Behavioral of FinalComponent is

begin


end Behavioral;

