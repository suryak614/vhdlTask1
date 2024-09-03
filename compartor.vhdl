library ieee;
use ieee.std_logic_1164.all;

entity comparator is
  port (
    a: in unsigned;
    b: in unsigned;
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
    elsif a=b then e<= '1';
    elsif a<b then l<= '1';
    end if;

end process;

end arch ; -- arch