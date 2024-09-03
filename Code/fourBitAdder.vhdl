library ieee;
use ieee.std_1164.ALL;

entity fourBitAdder is
  port (
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    cin : in std_logic;
    s: out std_logic_vector(3 downto 0);
    co: out std_logic
  ) ;
end fourBitAdder;


architecture arch of fourBitAdder is
    component fullAdder is 
        port(
            a: in std_logic;
            b: in std_logic;
            cin: in std_logic;
            s: out: std_logic;
            co: out: std_logic
        );
    end component;
    
    signal c: std_logic_vector(4 downto 0);

begin
    c(0)<= cin;
fa1: fullAdder port Map(a(0), b(0), c(0), s(0), c(1));
fa2: fullAdder port Map(a(1), b(1), c(1), s(1), c(2));
fa3: fullAdder port Map(a(2), b(2), c(2), s(2), c(3));
fa4: fullAdder port Map(a(3), b(3), c(3), s(3), c(4));
co<=c(4);


end arch ; -- arch