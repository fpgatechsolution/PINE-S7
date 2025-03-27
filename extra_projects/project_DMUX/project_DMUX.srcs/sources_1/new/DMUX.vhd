library IEEE;
use IEEE.STD_LOGIC_1164.all;
 
entity demux_1to4 is
 port(
 
 F : in STD_LOGIC;
 S0,S1: in STD_LOGIC;
 A,B,C,D: out STD_LOGIC
 );
end demux_1to4;
 
architecture bhv of demux_1to4 is
begin
process (F,S0,S1) is
begin
 if (S0 ='0' and S1 = '0') then
 A <= F;
 elsif (S0 ='1' and S1 = '0') then
 B <= F;
 elsif (S0 ='0' and S1 = '1') then
 C <= F;
 else
 D <= F;
 end if;
 
end process;
end bhv;
