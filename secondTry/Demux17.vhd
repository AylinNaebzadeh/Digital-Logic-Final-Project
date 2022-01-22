
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity Demux17 is
    Port ( clock : in STD_LOGIC;
			  I : in  STD_LOGIC;
           SEL : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (16 downto 0));
end Demux17;

architecture Behavioral of Demux17 is
begin
	-- The "for" loop must be in a process, so I have added a clk to this component, but it is not allowed to use "generate"
	-- in a "process".
	-- full explanation --> https://stackoverflow.com/questions/26880270/for-generate-inside-process-vhdl

			--gen_label: for j in 0 to 16 generate
				--O(j) <= I when to_integer(unsigned(SEL)) = j else '0';
			--end generate gen_label;

process(clock)	
begin
if clock' event and clock = '1' then
	for j in 0 to 16 loop
		if j = to_integer(unsigned(SEL)) then
			O(j) <=  I;
		else
			O(j) <= '0';
		end if;
	end loop;
end if;
end process;
--	 O(0) <= (I AND NOT SEL(0) AND NOT SEL(1) AND NOT SEL(2) AND NOT SEL(3) AND NOT SEL(4));
--    O(1) <= (I AND SEL(0) AND NOT SEL(1) AND NOT SEL(2) AND NOT SEL(3) AND NOT SEL(4));
--    O(2) <= (I AND NOT SEL(0) AND SEL(1) AND NOT SEL(2) AND NOT SEL(3) AND NOT SEL(4));
--    O(3) <= (I AND SEL(0) AND SEL(1) AND NOT SEL(2) AND NOT SEL(3) AND NOT SEL(4));
--    O(4) <= (I AND NOT SEL(0) AND NOT SEL(1) AND SEL(2) AND NOT SEL(3) AND NOT SEL(4));
--    O(5) <= (I AND SEL(0) AND NOT SEL(1) AND SEL(2) AND NOT SEL(3) AND NOT SEL(4));
--    O(6) <= (I AND NOT SEL(0) AND SEL(1) AND SEL(2) AND NOT SEL(3) AND NOT SEL(4));
--    O(7) <= (I AND SEL(0) AND SEL(1) AND SEL(2) AND NOT SEL(3) AND NOT SEL(4));
--    O(8) <= (I AND NOT SEL(0) AND NOT SEL(1) AND NOT SEL(2) AND SEL(3) AND NOT SEL(4));
--    O(9) <= (I AND SEL(0) AND NOT SEL(1) AND NOT SEL(2) AND SEL(3) AND NOT SEL(4));
--    O(10) <= (I AND NOT SEL(0) AND SEL(1) AND NOT SEL(2) AND SEL(3) AND NOT SEL(4));
--    O(11) <= (I AND SEL(0) AND SEL(1) AND NOT SEL(2) AND SEL(3) AND NOT SEL(4));
--    O(12) <= (I AND NOT SEL(0) AND NOT SEL(1) AND SEL(2) AND SEL(3) AND NOT SEL(4));
--    O(13) <= (I AND SEL(0) AND NOT SEL(1) AND SEL(2) AND SEL(3) AND NOT SEL(4));
--    O(14) <= (I AND NOT SEL(0) AND SEL(1) AND SEL(2) AND SEL(3) AND NOT SEL(4));
--    O(15) <= (I AND SEL(0) AND SEL(1) AND SEL(2) AND SEL(3) AND SEL(4));
--    O(16) <= (I AND NOT SEL(0) AND NOT SEL(1) AND NOT SEL(2) AND NOT SEL(3) AND SEL(4));
end Behavioral;

