LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

entity bSH is 
port(inp: in bit_vector(7 downto 0);
sh: in unsigned(2 downto 0);
outp: out bit_vector(7 downto 0)
);
end bSH;


architecture arch of bSH is

signal s1: bit_vector(7 downto 0);

begin
s1<=inp;

outp<=s1 sll to_integer(sh);

end arch;