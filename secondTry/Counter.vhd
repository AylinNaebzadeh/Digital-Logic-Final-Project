-------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Counter is
    Port ( CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           COUNT : inout  STD_LOGIC_VECTOR (4 downto 0));
end Counter;

architecture Behavioral of Counter is

begin
	process (CLK, RST)
		begin
		if (RST = '1')then
			COUNT <= "00000";
		elsif (rising_edge(CLK))then
			COUNT <= std_logic_vector(COUNT + 1);
		end if;
	end process;
end Behavioral;

