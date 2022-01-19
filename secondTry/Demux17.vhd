--SOURCE 
--https://www.youtube.com/watch?v=BrBykxdaFJw&ab_channel=MKSubramanian
--https://surf-vhdl.com/vhdl-for-loop-statement/
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
function my_std_logic (inp: integer) return std_logic is
	 begin
		  if inp = 1 then
				return '1';
		  else
				return '0';
		  end if;
	 end function my_std_logic;

begin
	-- The "for" loop must be in a process, so I have added a clk to this component, but it is not allowed to use "generate"
	-- in a "process".
	-- full explanation --> https://stackoverflow.com/questions/26880270/for-generate-inside-process-vhdl

	--		gen_label: for j in 0 to 16 generate
	--		if (rising_edge(clock)) then
	--			O(j) <= I when to_integer(unsigned(SEL)) = j else '0';
	--		end if;
	--		end generate gen_label;

process(clock)	
begin
if clock' event and clock = '1' then
	for i in 0 to 16 loop
		if i = to_integer(unsigned(SEL)) then
			O(i) <= my_std_logic(inp => I);
		else
			O(i) <= '0';
		end if;
	end loop;
end if;
end process;
end Behavioral;

