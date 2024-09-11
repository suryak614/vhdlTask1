library ieee;
use ieee.std_logic_1164.all;

entity demuxTB is
end demuxTB;

architecture arch of demuxTB is
    component deMux is
        port (
            i : in std_logic;
            s: in std_logic_vector(1 downto 0); 
            d: out std_logic_vector(3 downto 0)
        ) ;

    end component;
    signal o: std_logic_vector( 3 downto 0);
    signal s: std_logic_vector(1 downto 0);
    signal i: std_logic;
    begin
        uut: demux port map(i, s, o);
        process
            begin
                wait for 20ns;
                i<='1';
                s<="00";
                wait for 20ns;
                s<="01";
                wait for 20ns;
                s<="10";
                wait for 20ns;
                s<="11";
        end process;
end arch ; -- arch