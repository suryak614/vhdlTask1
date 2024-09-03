library ieee;
use ieee.std_logic_1164.all;

entity deMux is
  port (
    i : in std_logic;
    s: in std_logic_vector(1 downto 0); 
    d: out std_logic_vector(3 downto 0)
  ) ;
end deMux;

architecture arch of deMux is 
begin
    with s select
    d<= "000"&i when "00",
        "00"&i&'0 when "01",
        '0'&i&"00" when "10",
        i&"000" when "11";

end arch;

