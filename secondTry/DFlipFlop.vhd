--SOURCE
--https://www.fpga4student.com/2017/02/vhdl-code-for-d-flip-flop.html
-- vhdl code for rising edge d flip flop
--https://electronics.stackexchange.com/questions/323093/what-is-the-difference-between-enable-and-clock-in-flip-flops
--http://quitoart.blogspot.com/2017/10/vhdl-d-flip-flop-with-enable.html
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity DFlipFlop is
    Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
			  En : in STD_LOGIC;
           Q : out  STD_LOGIC);
end DFlipFlop;

architecture Behavioral of DFlipFlop is
begin
	process(CLK)
	begin
		if (rising_edge(CLK))then
			if (En = '1') then
				Q <= D;
			end if;
		end if;
	end process;
end Behavioral;

