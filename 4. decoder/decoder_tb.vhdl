library IEEE;
use IEEE.std_logic_1164.all;


entity decoder_tb is
end decoder_tb;

architecture tb_arch of decoder_tb is

    
    signal a_tb: std_logic_vector(1 downto 0);
    signal y_tb: std_logic_vector(3 downto 0);

    
    component Decoder24
        Port (
            a: in std_logic_vector(1 downto 0);
            y: out std_logic_vector(3 downto 0)
        );
    end component;

begin
    dec: Decoder24 port map (
        a => a_tb,
        y => y_tb
    );

    process
    begin

        a_tb <= "00";
        wait for 10 ns; 
        a_tb <= "01";

        wait for 10 ns; 
        a_tb <= "10";
 
        wait for 10 ns; 
        a_tb <= "11";

        wait for 10 ns; 
        wait;

    end process ;

end tb_arch;
