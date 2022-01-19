--SOURCE
--https://www.electronicshub.org/binary-adder-and-subtractor/#Binary_Subtraction_Circuits
-- I'm going to implement it using 8 full adders hence I won't use full subtractor.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FullSubtrator8bit is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Ci : in  STD_LOGIC;
           Co : out  STD_LOGIC;
           Sub : out STD_LOGIC_VECTOR (7 downto 0));
end FullSubtrator8bit;

architecture Behavioral of FullSubtrator8bit is
signal C: std_logic_vector(7 downto 1);
begin
	FA1 : entity work.FullAdder PORT MAP(
		A => A(0),
		B => not B(0),
		Cin => Ci,
		O => Sub(0),
		Cout => C(1)
	);
	FA2 : entity work.FullAdder PORT MAP(
		A => A(1),
		B => not B(1),
		Cin => C(1),
		O => Sub(1),
		Cout => C(2)
	);
	FA3 : entity work.FullAdder PORT MAP(
		A => A(2),
		B => not B(2),
		Cin => C(2),
		O => Sub(2),
		Cout => C(3)
	);
	FA4 : entity work.FullAdder PORT MAP(
		A => A(3),
		B => not B(3),
		Cin => C(3),
		O => Sub(3),
		Cout => C(4)
	);
	FA5 : entity work.FullAdder PORT MAP(
		A => A(4),
		B => not B(4),
		Cin => C(4),
		O => Sub(4),
		Cout => C(5)
	);
	FA6 : entity work.FullAdder PORT MAP(
		A => A(5),
		B => not B(5),
		Cin => C(5),
		O => Sub(5),
		Cout => C(6)
	);
	FA7 : entity work.FullAdder PORT MAP(
		A => A(6),
		B => not B(6),
		Cin => C(6),
		O => Sub(6),
		Cout => C(7)
	);
	FA8 : entity work.FullAdder PORT MAP(
		A => A(7),
		B => not B(7),
		Cin => C(7),
		O => Sub(7),
		Cout => Co
	);

end Behavioral;

