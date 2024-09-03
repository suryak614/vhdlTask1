library IEEE;
use IEEE.std_logic_1164.ALL;

entity fullAdder is 
port(
    a: in std_logic;
    b: in std_logic;
    cin: in std_logic;
    s: out std_logic;
    co: out std_logic);
    
end fullAdder;

architecture arch of fullAdder is 
begin
    s<= a xor b xor cin;
    co<= (a and b) or (a and cin) or (cin and b);

end arch;