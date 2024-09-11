library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity genericMuxTB is
generic(N: Natural:=2);
end genericMuxTB;

architecture Behavioral of genericMuxTB is
    component genericMux is 
    generic(N: Natural:=2);
    port(
        i0 : in std_logic_vector( N-1 downto 0);
        i1 : in std_logic_vector( N-1 downto 0);
        i2 : in std_logic_vector( N-1 downto 0);
        i3 : in std_logic_vector( N-1 downto 0);
        s : in std_logic_vector(1 downto 0);
        o : out std_logic_vector(N-1 downto 0)
    );
    end component;
    signal i0, i1, i2, i3, o: std_logic_vector( N-1 downto 0);
    signal s: std_logic_vector(1 downto 0);
    begin
        uut: genericMux generic map(N)port map(i0, i1, i2, i3,s,o);
        process
            begin
            wait for 20ns;
            i0<="00";
            i1<="01";
            i2<="10";
            i3<="11";
            wait for 20ns;
            s<="00";
            wait for 20ns;
            s<="01";
            wait for 20ns;
            s<="10";
            wait for 20ns;
            s<="11";
        end process;

end Behavioral;
