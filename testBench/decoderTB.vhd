library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoderTB is
end decoderTB;

architecture Behavioral of decoderTB is
    component decoder is
        port(s: in std_logic_vector(1 downto 0);
        d: out std_logic_vector(3 downto 0)
        );

    end component;

    signal s: std_logic_vector(1 downto 0);
    signal d: std_logic_vector(3 downto 0);
     begin
     uut: decoder port map(s, d);
     process
     begin
     wait for 20ns;
     s<= "00";
     wait for 20ns;
     s<= "01";
     wait for 20ns;
     s<= "10";
     wait for 20ns;
     s<= "11";
     end process;
end Behavioral;
