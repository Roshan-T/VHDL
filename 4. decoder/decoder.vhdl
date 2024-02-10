library IEEE;
use IEEE.std_logic_1164.all;

entity Decoder24 is 
    Port(
        a: in std_logic_vector(1 downto 0);
        y: out std_logic_vector(3 downto 0)
    );
end Decoder24;

architecture deco of Decoder24 is 
begin
    process(a)
        begin 
            case a is 
                when "00"=>y<= "0001";
                when "01"=>y<= "0010";
                when "10"=>y<= "0100";
                when "11"=>y<= "1000";
                when others=>y<= "0000";
            end case;
        end process;
    end deco;
