library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fourBitAdderTB is
--  Port ( );
end fourBitAdderTB;

architecture Behavioral of fourBitAdderTB is
component fourBitAdder is
port (
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    cin : in std_logic;
    s: out std_logic_vector(3 downto 0);
    co: out std_logic
  ) ;
end component;

signal a, b, s: std_logic_vector(3 downto 0);
signal cin, co: std_logic;
begin

uut: fourBitAdder port map(a, b, cin, s, co);
process
begin
wait for 20ns;
a<="1101";
b<="1101";
cin<='0';
wait for 20ns;
a<="1011";
b<="1111";
cin<='1';
end process;

end Behavioral;
