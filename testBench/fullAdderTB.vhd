library IEEE;
use IEEE.std_logic_1164.All;

entity fullAdderTB is
   
end fullAdderTB;

architecture arch1 of fullAdderTB is
    component fullAdder is
        port(
            a: in std_logic;
    b: in std_logic;
    cin: in std_logic;
    s: out std_logic;
    co: out std_logic);
    end component;
    
    signal a,b,ci,s,co: std_logic;
    begin
        uut: fullAdder port map(a,b,ci,s,co);
        process
        begin
            wait for 20ns;
            a<='1';
            b<='0';
            ci<='0';
            wait for 20ns;
            a<='1';
            b<='1';
            ci<='1';
            end process;

       
    end arch1;

