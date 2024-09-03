library ieee;
use ieee.std_logic_1164.all;

entity adder4Bit is
  port (
    a: in std_logic_vector(3 downto 0);
    b: in std_logic_vector(3 downto 0);
    c: in std_logic;
    s: out std_logic_vector(3 downto 0);
    co: out std_logic
  ) ;
end adder4Bit;

architecture arch of adder4Bit is
    component fullAdder is
        port (
            a: in std_logic;
            b: in std_logic;
            cin: in std_logic;
            s: out std_logic;
            co: out std_logic
        );
        end component;

    
begin

end arch ; -- arch