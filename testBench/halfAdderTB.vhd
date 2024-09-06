library IEEE;
use IEEE.std_logic_1164.All;

entity halfAdderTB is
   

end halfAdderTB;

architecture arch1 of halfAdderTB is
    component halfAdder is
        port(
            a: in std_logic;
            b: in std_logic;
            s: out std_logic;
            c: out std_logic);
    end component;
    
    signal a,b,s,c: std_logic;
    begin
        uut: halfAdder port map(a,b,s,c);
        process
        begin
            wait for 20ns;
            a<='1';
            b<='0';
            wait for 20ns;
            a<='1';
            b<='1';

            end process;

       
    end arch1;

