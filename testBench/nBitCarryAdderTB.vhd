library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nBitAdderTB is
generic(n: natural:=2);
end nBitAdderTB;

architecture Behavioral of nBitAdderTB is
component nBitAdder is
generic(n: natural:=2);
  port (
    a: in std_logic_vector(n-1 downto 0);
    b: in std_logic_vector(n-1 downto 0);
    cin : in std_logic;
    s: out std_logic_vector(n-1 downto 0);
    co: out std_logic
  ) ;
end component;

signal a, b, s: std_logic_vector(n-1 downto 0);
signal cin, co: std_logic;
begin

uut: nBitAdder generic map(n) port map(a, b, cin, s, co);
process
begin
wait for 20ns;
a<="01";
b<="11";
cin<='0';
wait for 20ns;
a<="11";
b<="11";
cin<='1';
end process;

end Behavioral;
