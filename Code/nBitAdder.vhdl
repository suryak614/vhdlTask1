library ieee;
use ieee.std_logic_1164.ALL;

entity nBitAdder is
  generic(n: natural:=2);
  port (
    a: in std_logic_vector(n-1 downto 0);
    b: in std_logic_vector(n-1 downto 0);
    cin : in std_logic;
    s: out std_logic_vector(n-1 downto 0);
    co: out std_logic
  ) ;
end nBitAdder;


architecture arch of nBitAdder is
    component fullAdder is 
        port(
            a: in std_logic;
            b: in std_logic;
            cin: in std_logic;
            s: out std_logic;
            co: out std_logic
        );
    end component;
    
    signal c: std_logic_vector(n downto 0);

begin
    c(0)<= cin;

fa : for i in 0 to n-1 generate
faa: fullAdder port Map(a(i), b(i), c(i), s(i), c(i+1));
end generate ; -- fa

   
co<=c(n);


end arch ; -- arch