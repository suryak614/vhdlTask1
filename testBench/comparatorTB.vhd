library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_arith.all;
entity comparatorTB is
--  Port ( );
end comparatorTB;

architecture Behavioral of comparatorTB is
component comparator is
 port (
    a, b: in std_logic_vector (3 downto 0);
    
    g: out std_logic;
    e: out std_logic;
    l: out std_logic
  ) ;
end component;
signal a, b: std_logic_vector (3 downto 0);
signal g, e, l: std_logic;
begin
uut: comparator port map(a, b, g, e, l);
process
begin
wait for 20 ns;
a<=x"5";
b<=x"4";
wait for 20 ns;
a<=x"4";
b<=x"4";
wait for 20 ns;
a<=x"2";
b<=x"4";

end process;
end Behavioral;
