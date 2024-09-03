library ieee;
use ieee.std_logic_1164.all;

entity cLATB is
    generic(N: Natural:=4);
end cLATB;

architecture arch of cLATB is


    component carryLookAheadAdder is
        generic(N: Natural:=4);
        port (
        a: in std_logic_vector(N-1 downto 0);
        b: in std_logic_vector(N-1 downto 0);
        cin: in std_logic;
        s: out std_logic_vector(N-1 downto 0);
        co: out std_logic
      ) ;
        end component;
    signal a, b, s: std_logic_vector(N-1 downto 0);
    signal c, co: std_logic;
begin
uut : carryLookAheadAdder Generic Map(4) port Map (a, b, c, s, co);
process 
begin
    wait for 20ns;
    a<="1111";
    b<="1011";
    c<='1';
    end process;


end arch ; -- arch