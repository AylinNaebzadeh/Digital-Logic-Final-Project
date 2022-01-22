
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity FullSubtractor is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           DIFF : out  STD_LOGIC;
           Borrow : out  STD_LOGIC);
end FullSubtractor;

architecture Behavioral of FullSubtractor is

begin
	DIFF <= (A xor B) xor C;
	Borrow <= ((not A) and (B or C)) or (B and C);
end Behavioral;

