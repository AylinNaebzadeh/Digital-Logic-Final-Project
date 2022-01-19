-- this signal is connected to multiple drivers. Reason? 
--I guess beacuse of one variable can not be both output and input in the same time.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Top is
    Port ( clock : in STD_LOGIC;
			  demux_data: in STD_LOGIC;
			  inputBits : inout  STD_LOGIC_VECTOR (16 downto 0);
           reset : in  STD_LOGIC;
			  inputEnables : in STD_LOGIC_VECTOR (16 downto 0);
			  finalResult : out STD_LOGIC_VECTOR(7 downto 0));
			  
end Top;


architecture Behavioral of Top is

signal clock_number: std_logic_vector(4 downto 0); 
signal carry_in: std_logic;
signal carry_out: std_logic;
signal second_number: std_logic_vector(7 downto 0);
signal tmp: std_logic_vector(16 downto 0);
signal second_tmp: std_logic_vector(16 downto 0);
begin
	counter: entity work.Counter PORT MAP(
		CLK => clock,
		RST => reset,
		COUNT => clock_number
	);
	demux: entity work.Demux17 PORT MAP(
		clock => clock,
		I => demux_data,
		SEL => clock_number,
		O => inputBits
	);
	tmp <= inputBits(16 downto 0);
	--line 35 changed, Now it has the same clock as counter component
	ff17: entity work.StoringBitsIn17FlipFlops PORT MAP(
		clock => clock,
		I => inputBits,
		Enables => inputEnables,
		O => tmp
	);
	
	process(clock) is 
		begin
		if (tmp(16) = '1') then
			second_number <= tmp(15 downto 8);
		else
			second_number <= not tmp(15 downto 8);
		end if;
	end process;
	second_tmp <= tmp(16 downto 0);
	fulladder8bit: entity work.FullAdder8bit PORT MAP(
			X => second_tmp(7 downto 0),
			Y => second_number,
			Ci => carry_in,
			Co => carry_out,
			Sum => finalResult
		);
--Before pass the second number to full adder, we should initialized it base on the value of inputBits(16)
--	second_number <= tmp(15 downto 8) when tmp(16) = '1'
--							else
--							not tmp(15 downto 8) when tmp(16) = '0';
--	gen_case_0: if inputBits(16) = '0' generate
--	end generate;
	--There is no need to use this  component we can use a "when/ else" statement instead.
--	fullsubtractor8bit: entity work.FullSubtrator8bit PORT MAP(
--		A => inputBits(7 downto 0),
--		B => inputBits(15 downto 8),
--		Ci => carry_in,
--		Co => carry_out,
--		Sub => finalSub
--	);




end Behavioral;

