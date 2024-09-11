library ieee;
use ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

entity comparator is
  port (
    a, b: in std_logic_vector (3 downto 0);
    
    g: out std_logic;
    e: out std_logic;
    l: out std_logic
  ) ;
end comparator;

architecture arch of comparator is


begin


process (a,b)
begin
    if a>b then g<='1';
    else g<='0';
    end if;
    if a=b then e<= '1';
     else e<='0';
    end if;
    if a<b then l<= '1';
     else l<='0';
    end if;

end process;

end arch ; -- arch