library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
entity halfSub is 
    Port ( a : in STD_LOGIC; 
    b : in STD_LOGIC; 
    d : out STD_LOGIC; 
    bo : out STD_LOGIC); 
end halfSub; 
architecture Behavioral of halfSub is 
begin 
d <= a xor b; 
bo <= ((not a)and b); 
end Behavioral; 