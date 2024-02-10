library IEEE;
use IEEE.std_logic_1164.all;

entity mux4 is 
    Port (
        a, b, c, d, s1, s0: in std_logic;
        y: out std_logic
    );
end mux4;

architecture Behavioral of mux4 is
begin
    process(a, b, c, d, s1, s0)
    begin
        if (s1 = '0' and s0 = '0') then
            y <= a;
        elsif (s1 = '0' and s0 = '1') then
            y <= b;
        elsif (s1 = '1' and s0 = '0') then
            y <= c;
        elsif (s1 = '1' and s0 = '1') then
            y <= d; 
        end if;
    end process;    
end Behavioral;
