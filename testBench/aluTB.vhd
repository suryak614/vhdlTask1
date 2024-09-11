library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity aluTB is
end aluTB;

architecture Behavioral of aluTB is
component ALU is
    PORT (a, b: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            sel: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
            cin: IN STD_LOGIC;
            y: OUT STD_LOGIC_VECTOR (3 DOWNTO 0));
end component;
signal a, b, y, sel: STD_LOGIC_VECTOR (3 DOWNTO 0);
signal cin : STD_LOGIC;

begin
uut : ALU port map(a, b, sel, cin, y);
    process
        begin
        wait for 20ns;
        a<= "0101";
        b<="1010";
        cin<='1';
        wait for 20ns;
        sel<="0000";
        wait for 20ns;
        sel(0)<='1';
        wait for 20ns;
        sel(1)<='1';
        sel(0)<='0';
        wait for 20ns;
        sel(0)<='1';
        wait for 20ns;
        sel(0)<='0';
        sel(1)<='0';
        sel(2)<='1';
        wait for 20ns;
        sel(0)<='1';
        wait for 20ns;
        sel(1)<='1';
        sel(0)<='0';
        wait for 20ns;
        sel(0)<='1';
        wait for 20ns;
        sel(3)<='1';
        sel(2)<='0';
        sel(1)<='0';
        sel(0)<='0';
        wait for 20ns;
        sel(0)<='1';
        wait for 20ns;
        sel(1)<='1';
        sel(0)<='0';
        wait for 20ns;
        sel(0)<='1';
        wait for 20ns;
        sel(0)<='0';
        sel(1)<='0';
        sel(2)<='1';
        wait for 20ns;
        sel(0)<='1';
        wait for 20ns;
        sel(1)<='1';
        sel(0)<='0';
        wait for 20ns;
        sel(0)<='1';
        wait for 20ns;
        
              
        end process;


end Behavioral;
