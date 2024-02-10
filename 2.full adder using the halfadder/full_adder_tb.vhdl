library IEEE;
use IEEE.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture tb_arch of full_adder_tb is
    component fulladder
        Port (
            A, B, C: in std_logic;
            Sum, Carry: out std_logic
        );
    end component;

    signal A_tb, B_tb, C_tb, Sum_tb, Carry_tb: std_logic;

begin
    -- Instantiate the fulladder
    fa: fulladder port map (
        A => A_tb,
        B => B_tb,
        C => C_tb,
        Sum => Sum_tb,
        Carry => Carry_tb
    );

    process
    begin
        -- Test case 1: A=0, B=0, C=0
        A_tb <= '0';
        B_tb <= '0';
        C_tb <= '0';
        wait for 10 ns;
        
        -- Test case 2: A=0, B=0, C=1
        A_tb <= '0';
        B_tb <= '0';
        C_tb <= '1';
        wait for 10 ns;

        -- Test case 3: A=0, B=1, C=0
        A_tb <= '0';
        B_tb <= '1';
        C_tb <= '0';
        wait for 10 ns;
        
        -- Test case 4: A=0, B=1, C=1
        A_tb <= '0';
        B_tb <= '1';
        C_tb <= '1';
        wait for 10 ns;
        
        -- Test case 5: A=1, B=0, C=0
        A_tb <= '1';
        B_tb <= '0';
        C_tb <= '0';
        wait for 10 ns;
        
        -- Test case 6: A=1, B=0, C=1
        A_tb <= '1';
        B_tb <= '0';
        C_tb <= '1';
        wait for 10 ns;
        
        -- Test case 7: A=1, B=1, C=0
        A_tb <= '1';
        B_tb <= '1';
        C_tb <= '0';
        wait for 10 ns;
        
        -- Test case 8: A=1, B=1, C=1
        A_tb <= '1';
        B_tb <= '1';
        C_tb <= '1';
        wait for 10 ns;
        
        -- End of test
        wait;
    end process;

end tb_arch;
