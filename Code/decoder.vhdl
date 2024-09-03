library ieee;
use ieee.std_logic_1164.all;

entity decoder is
  port (
    s: in std_logic_vector(1 downto 0);
    d: out std_logic_vector(3 downto 0)
  ) ;
end decoder;

architecture arch of decoder is

    begin   
        process(s)
            begin
                case s is 
                    "00"=> d<="0001";
                    "01"=> d<="0010";
                    "10"=> d<= "0100";
                    "11"=> d<="1000";
                end case;
            end process; 

end arch ; -- arch