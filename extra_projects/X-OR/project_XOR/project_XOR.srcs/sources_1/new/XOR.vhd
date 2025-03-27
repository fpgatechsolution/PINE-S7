library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_xnor_top is
    Port ( A : in  STD_LOGIC;      -- XOR gate input 1
           B : in  STD_LOGIC;      -- XOR gate input 2       
           Y : out  STD_LOGIC);    -- XNOR gate output
end xor_xnor_top;

architecture Behavioral of xor_xnor_top is
begin
Y <= A XOR B;		-- 2 input exclusive-XOR gate
end Behavioral;