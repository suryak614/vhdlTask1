library ieee;
use ieee.std_logic_1164.all;

entity mux is 
    port(
        i : in std_logic_vector( 3 downto 0);
        s : in std_logic_vector(1 downto 0);
        o : out std_logic
    );
end mux;

architecture arch of mux is 
begin 
o<= i(0) when s = "00" else
    i(1) when s = "01" else
    i(2) when s = "10" else
    i(3) when s = "11"; 

end arch;
