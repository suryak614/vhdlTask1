library ieee;
use ieee.std_logic_1164.all;

entity muxTB is
end muxTB;

architecture arch of muxTB is
    component mux is
        port(
            i : in std_logic_vector( 3 downto 0);
            s : in std_logic_vector(1 downto 0);
            o : out std_logic
        );

    end component;
    signal i: std_logic_vector( 3 downto 0);
    signal s: std_logic_vector(1 downto 0);
    signal o: std_logic;
    begin
        uut: mux port map(i, s, o);
        process
            begin
                wait for 20ns;
                i<=x"5";
                s<="00";
                wait for 20ns;
                s<="01";
                wait for 20ns;
                s<="10";
                wait for 20ns;
                s<="11";
        end process;
end arch ; -- arch