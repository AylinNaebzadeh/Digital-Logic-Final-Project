--SOURCE
--https://www.youtube.com/watch?v=7tKW00VNOBU&ab_channel=..andthenBAM%21
--https://allaboutfpga.com/vhdl-code-for-full-adder/
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FullAdder8bit is
    Port ( X : in  STD_LOGIC_VECTOR (7 downto 0);
           Y : in  STD_LOGIC_VECTOR (7 downto 0);
           Ci : in  STD_LOGIC;
           Co : out  STD_LOGIC;
           Sum : out  STD_LOGIC_VECTOR (7 downto 0));
end FullAdder8bit;

architecture Behavioral of FullAdder8bit is
signal C: std_logic_vector(7 downto 1);
begin
	FA1: entity work.FullAdder PORT MAP(
		A => X(0),
		B => Y(0),
		Cin => Ci,
		O => Sum(0),
		Cout => C(1)
	);
	FA2 : entity work.FullAdder PORT MAP(
		A => X(1),
		B => Y(1),
		Cin => C(1),
		O => Sum(1),
		Cout => C(2)
	);
	FA3 : entity work.FullAdder PORT MAP(
		A => X(2),
		B => Y(2),
		Cin => C(2),
		O => Sum(2),
		Cout => C(3)
	);
	FA4 : entity work.FullAdder PORT MAP(
		A => X(3),
		B => Y(3),
		Cin => C(3),
		O => Sum(3),
		Cout => C(4)
	);
	 FA5 : entity work.FullAdder PORT MAP(
		A => X(4),
		B => Y(4),
		Cin => C(4),
		O => Sum(4),
		Cout => C(5)
	);
	FA6 : entity work.FullAdder PORT MAP(
		A => X(5),
		B => Y(5),
		Cin => C(5),
		O => Sum(5),
		Cout => C(6)
	);
	FA7 : entity work.FullAdder PORT MAP(
		A => X(6),
		B => Y(6),
		Cin => C(6),
		O => Sum(6),
		Cout => C(7)
	);
	FA8 : entity work.FullAdder PORT MAP(
		A => X(7),
		B => Y(7),
		Cin => C(7),
		O => Sum(7),
		Cout => Co
	);

end Behavioral;

