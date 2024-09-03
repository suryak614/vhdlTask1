library ieee;
use ieee.std_logic_1164.all;

entity carryLookAheadAdder is
    generic(N: Natural:=4);
    port (
    a: in std_logic_vector(N-1 downto 0);
    b: in std_logic_vector(N-1 downto 0);
    cin: in std_logic;
    s: out std_logic_vector(N-1 downto 0);
    co: out std_logic
  ) ;
end carryLookAheadAdder;


architecture arch of carryLookAheadAdder is

    

begin
    process(a, b, cin)
    variable p, g, c: std_logic_vector(N downto 0);
        begin   
        c(0):= cin;
        for i in 0 to N-1 loop     
            p(i):=a(i) xor b(i);
            g(i):=a(i) and b(i);
            s(i)<=p(i) xor c(i);
            c(i+1):= g(i)or(p(i)and c(i));
        end loop ; -- identifier
        co<=c(4);
    end process;
end arch ; -- arch

