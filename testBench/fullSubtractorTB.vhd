library IEEE;
use IEEE.std_logic_1164.All;

entity fullSubTB is
   
end fullSubTB;

architecture arch1 of fullSubTB is
    component fullSub is
        Port ( a : in STD_LOGIC; 
           b : in STD_LOGIC; 
           bin : in STD_LOGIC; 
           d : out STD_LOGIC; 
           bout : out STD_LOGIC); 
    end component;
    
    signal a,b,bi,s,bo: std_logic;
    begin
        uut: fullSub port map(a,b,bi,s,bo);
        process
        begin
            wait for 20ns;
            a<='1';
            b<='0';
            bi<='0';
            wait for 20ns;
            a<='1';
            b<='0';
            bi<='1';
            wait for 20ns;
            a<='1';
            b<='1';
            bi<='1';
            wait for 20ns;
            a<='0';
            b<='1';
            bi<='1';
            
            end process;

       
    end arch1;

