library ieee;
use ieee.std_1164.ALL;

entity nBitAdder is
    generic(N: natural:=4);
    port (
    a: in std_logic_vector(N-1 downto 0);
    b: in std_logic_vector(N-1 downto 0);
    cin : in std_logic;
    s: out std_logic_vector(N-1 downto 0);
    co: out std_logic
  ) ;
end nBitAdder;


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
    
    signal c: std_logic_vector(N downto 0);

begin
    c(0)<= cin;
fa : for i in 0 to N-1 generate
    fa(i)=fullAdder port Map(a(i), b(i), c(i), s(i), c(i+1));
end generate ; -- fa
co<=c(N);


end arch ; -- arch