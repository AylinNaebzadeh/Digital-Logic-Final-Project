-------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- SOURCE
--https://technobyte.org/vhdl-code-synchronous-upcounter-behavioral/
-- https://stackoverflow.com/questions/30666389/can-not-have-such-operands-in-this-context-error-vhdl-code
-- What ais a register? 
-- https://www.javatpoint.com/registers-in-digital-electronics#:~:text=A%20Register%20is%20a%20collection,more%20than%20one%20flip%20flops.
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

