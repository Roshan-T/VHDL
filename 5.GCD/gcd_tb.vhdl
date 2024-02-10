library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity fsmgcd_tb is
end fsmgcd_tb;

architecture Behavioral of fsmgcd_tb is

    -- Component Declaration for the gcd Module
    component gcd
        Port (
            RESET : in  STD_LOGIC;
            CLK   : in  STD_LOGIC;
            GO    : in  STD_LOGIC;
            NUM1  : in  INTEGER;
            NUM2  : in  INTEGER;
            GCDN  : out INTEGER
        );
    end component;

    -- Testbench signals
    signal RESET_tb, CLK_tb, GO_tb: STD_LOGIC := '0';
    signal NUM1_tb, NUM2_tb: INTEGER := 0;
    signal GCDN_tb: INTEGER;

    -- Clock period definitions for simulation
    constant CLK_PERIOD : time := 10 ns;

begin

    -- Instantiate the gcd module
    DUT : gcd
        port map (
            RESET => RESET_tb,
            CLK   => CLK_tb,
            GO    => GO_tb,
            NUM1  => NUM1_tb,
            NUM2  => NUM2_tb,
            GCDN  => GCDN_tb
        );

    -- Stimulus process
    stimulus_proc: process
    begin
        -- Initialize/reset inputs
        RESET_tb <= '1';
        CLK_tb   <= '0';
        GO_tb    <= '0';
        NUM1_tb  <= 0;
        NUM2_tb  <= 0;

        wait for 20 ns;  -- Reset for 2 clock cycles

        RESET_tb <= '0';  -- De-assert reset

        -- Provide inputs and start computation
        NUM1_tb <= 5;
        NUM2_tb <= 10;
        GO_tb   <= '1';

        wait for 50 ns;  -- Wait for computation to finish

        GO_tb <= '0';  -- Stop computation

        wait;

    end process stimulus_proc;

    -- Clock process
    clk_proc: process
    begin
        while now < 200 ns loop  -- Simulation duration
            CLK_tb <= not CLK_tb;
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process clk_proc;

end Behavioral;
