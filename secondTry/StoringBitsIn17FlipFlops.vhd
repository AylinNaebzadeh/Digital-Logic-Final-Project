
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity StoringBitsIn17FlipFlops is
    Port ( clock : in  STD_LOGIC; --Not completely sure whether it must be a vector or not..
			  I : in  STD_LOGIC_VECTOR (16 downto 0);
			  Enables : in STD_LOGIC_VECTOR (16 downto 0);
           O : out  STD_LOGIC_VECTOR (16 downto 0));
end StoringBitsIn17FlipFlops;

architecture Behavioral of StoringBitsIn17FlipFlops is

begin
	-- The first 8 bit number would be taken
	D1 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(0),
		En => Enables(0),
		Q => O(0)
	);
   D2 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(1),
		En => Enables(1),
		Q => O(1)
	);
	D3 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(2),
		En => Enables(2),
		Q => O(2)
	);
  D4 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(3),
		En => Enables(3),
		Q => O(3)
	);
	D5 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(4),
		En => Enables(4),
		Q => O(4)
	);
	D6 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(5),
		En => Enables(5),
		Q => O(5)
	);
	D7 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(6),
		En => Enables(6),
		Q => O(6)
	);
	D8 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(7),
		En => Enables(7),
		Q => O(7)
	);
	-- The second 8 bit number would be taken
	D9 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(8),
		En => Enables(8),
		Q => O(8)
	);
	D10 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(9),
		En => Enables(9),
		Q => O(9)
	);
	D11 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(10),
		En => Enables(10),
		Q => O(10)
	);
	D12 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(11),
		En => Enables(11),
		Q => O(11)
	);
	D13 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(12),
		En => Enables(12),
		Q => O(12)
	);
	D14 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(13),
		En => Enables(13),
		Q => O(13)
	);
	D15 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(14),
		En => Enables(14),
		Q => O(14)
	);
	D16 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(15),
		En => Enables(15),
		Q => O(15)
	);
	-- In this clock, we will comprehend which operation(add | sub) to use
	D17 : entity work.DFlipFlop PORT MAP(
		CLK => clock,
		D => I(16),
		En => Enables(16),
		Q => O(16)
	);

end Behavioral;

