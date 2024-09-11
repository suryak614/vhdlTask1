library IEEE;
use IEEE.std_logic_1164.All;

entity halfAdder is
    port(
        a: in std_logic;
        b: in std_logic;
        s: out std_logic;
        c: out std_logic

    );

end halfAdder;

architecture arch1 of halfAdder is
    begin
        s<= a xor b;
        c<= a and b;
    end arch1;

