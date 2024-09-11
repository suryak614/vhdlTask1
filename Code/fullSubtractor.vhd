library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
entity fullSub is 
    Port ( a : in STD_LOGIC; 
           b : in STD_LOGIC; 
           bin : in STD_LOGIC; 
           d : out STD_LOGIC; 
           bout : out STD_LOGIC); 
end fullSub; 
architecture Behavioral of fullSub is 
begin 
d  <= a xor b xor bin; 
bout <= ((b xor bin) and (not a)) or (b and bin); 
end Behavioral;