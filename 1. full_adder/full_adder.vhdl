library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder is
    Port(
        A,B,C : in  std_logic;
        sum,carry : out std_logic
    );
end full_adder;

architecture full_adder1 of full_adder is
    begin 
        sum <= A xor B xor C;
        carry <= (A and B) or (B and C) or (C and A);
    end  full_adder1;   