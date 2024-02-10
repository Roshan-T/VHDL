library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_tb is 
end full_adder_tb;

architecture tb of full_adder_tb is 
    component full_adder 
        Port(
            A, B, C: in std_logic;
            sum , carry : out std_logic
        );
    end component;
    
    signal A, B, C, sum, carry : std_logic;

begin
    y1: full_adder port map(
        A => A,
        B => B,
        C => C,
        sum => sum,
        carry => carry
    );

    process 
    begin
        A <= '0'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '0'; B <= '1'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '0'; C <= '1'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '0'; wait for 10 ns;
        A <= '1'; B <= '1'; C <= '1'; wait for 10 ns;
        wait;
    end process;
end tb;
