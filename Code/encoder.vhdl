library ieee;
use ieee.std_logic_1164.all;

entity encoder is
  port (
    i: in std_logic_vector(3 downto 0);
    d: out std_logic_vector(1 downto 0)
  ) ;
end encoder;


architecture arch of encoder is

    begin
        process(i)


            begin
                if i= "0001" then d<= "00";
                elsif i="0010" then d<= "01";
                elsif i= "0100" then d<= "10";
                elsif i="1000" then d<= "11";
                else d<=(others=>'Z');
                end if;
                
            end process;

end arch;

