LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
entity bSHtb is
--  Port ( );
end bSHtb;

architecture Behavioral of bSHtb is
component bSH is
port(inp: in bit_vector(7 downto 0);
sh: in unsigned(3 downto 0);
outp: out bit_vector(7 downto 0)
);
end component;
signal inp: bit_vector(7 downto 0);
signal sh: unsigned(3 downto 0);
signal outp: bit_vector(7 downto 0);
begin
uut: bSH port map(inp, sh, outp);

process
begin
wait for 20ns;
inp<=x"0F";
sh<=x"1";
wait for 20ns;
sh<=x"2";
wait for 20ns;
sh<=x"4";

end process;
end Behavioral;
