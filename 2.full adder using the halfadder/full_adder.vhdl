library IEEE;
use IEEE.std_logic_1164.all;

entity halfadder is 
    port (
        A, B: in std_logic;
        Sum, Carry: out std_logic
    );
end halfadder;

architecture ha of halfadder is 
begin
    Sum <= A xor B;
    Carry <= A and B;
end ha;


entity fulladder is 
    port (
        A, B, C: in std_logic;
        Sum, Carry: out std_logic
    );
end fulladder;

architecture ha_fulladder of fulladder is 
    component halfadder is 
        port (
            A, B: in std_logic;
            Sum, Carry: out std_logic
        );
    end component;
    
    signal c1, c2, s1: std_logic;
begin 
    ha1: halfadder port map(A, B, s1, c1);
    ha2: halfadder port map(s1, C, Sum, c2);
    Carry <= c1 or c2;
end ha_fulladder;
