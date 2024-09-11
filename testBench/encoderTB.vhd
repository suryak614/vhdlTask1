library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity encoderTB is

end encoderTB;

architecture Behavioral of encoderTB is

 component encoder is
    port (
    i: in std_logic_vector(3 downto 0);
    d: out std_logic_vector(1 downto 0)
  ) ; 
 
 end component;

signal i: std_logic_vector(3 downto 0);
signal d: std_logic_vector(1 downto 0);
    begin
    uut: encoder port map(i, d);
        process
            begin
                wait for 20ns;
                i<="0001";
                wait for 20ns;
                i<="0010";
                wait for 20ns;
                i<="0100";
                wait for 20ns;
                i<="1000";
            end process;
    end Behavioral;
