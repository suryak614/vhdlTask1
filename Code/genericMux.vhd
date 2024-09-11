library ieee;
use ieee.std_logic_1164.all;

entity genericMux is 
generic(N: Natural:=2);
    port(
        i0 : in std_logic_vector( N-1 downto 0);
        i1 : in std_logic_vector( N-1 downto 0);
        i2 : in std_logic_vector( N-1 downto 0);
        i3 : in std_logic_vector( N-1 downto 0);
        s : in std_logic_vector(1 downto 0);
        o : out std_logic_vector(N-1 downto 0)
    );
end genericMux;

architecture arch of genericMux is 
begin 
o<= i0 when s = "00" else
    i1 when s = "01" else
    i2 when s = "10" else
    i3 when s = "11" else 
    (others=>'Z');

end arch;