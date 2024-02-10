library IEEE;
use IEEE.std_logic_1164.all;

entity multiplexer_tb is
end multiplexer_tb;

architecture tb_arch of multiplexer_tb is
    signal a_tb, b_tb, c_tb, d_tb, s1_tb, s0_tb, y_tb: std_logic;

    component mux4
        Port (
            a, b, c, d, s1, s0: in std_logic;
            y: out std_logic
        );
    end component;

begin
    mux: mux4 port map (
        a => a_tb,
        b => b_tb,
        c => c_tb,
        d => d_tb,
        s1 => s1_tb,
        s0 => s0_tb,
        y => y_tb
    );

    process
    begin
        -- Test case 1: s1 = '0', s0 = '0'
        a_tb <= '1';
        b_tb <= '0';
        c_tb <= '0';
        d_tb <= '0';
        s1_tb <= '0';
        s0_tb <= '0';
        wait for 10 ns;
        
        -- Test case 2: s1 = '0', s0 = '1'
        a_tb <= '0';
        b_tb <= '1';
        c_tb <= '0';
        d_tb <= '0';
        s1_tb <= '0';
        s0_tb <= '1';
        wait for 10 ns;

        -- Test case 3: s1 = '1', s0 = '0'
        a_tb <= '0';
        b_tb <= '0';
        c_tb <= '1';
        d_tb <= '0';
        s1_tb <= '1';
        s0_tb <= '0';
        wait for 10 ns;
        
        -- Test case 4: s1 = '1', s0 = '1'
        a_tb <= '0';
        b_tb <= '0';
        c_tb <= '0';
        d_tb <= '1';
        s1_tb <= '1';
        s0_tb <= '1';
        wait for 10 ns;

        -- End of testbench
        wait;
    end process;

end tb_arch;
