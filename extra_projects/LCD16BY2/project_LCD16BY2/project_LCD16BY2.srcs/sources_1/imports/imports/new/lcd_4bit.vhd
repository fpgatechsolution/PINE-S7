-------------------------------------------------------------------------------
-- Title			:	LCD Controller in FPGA.
-------------------------------------------------------------------------------
-- Description		:	Displays the String on LCD
-------------------------------------------------------------------------------
-- Organization		:	FPGATECHSOLUTION, Pune
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity LCD_4_BIT is
generic(rst_state:std_logic:='0');		-- for USDP it is Active LOW
    Port ( rst : in std_logic; 		-- reset
           clk_12Mhz : in std_logic;		-- high freq. clock
           lcd_rs : out std_logic;		-- LCD RS control
           lcd_en : out std_logic;		-- LCD Enable
           lcd_data : out std_logic_vector(7 downto 4);
		   C1L1,C2L1,C3L1,C4L1,C5L1,C6L1,C7L1,C8L1,C9L1: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);--charctor no of first line--c1l1 is first char. first line
		   C10L1,C11L1,C12L1,C13L1,C14L1,C15L1,C16L1: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);--charctor no of first line
		   C1L2,C2L2,C3L2,C4L2,C5L2,C6L2,C7L2,C8L2,C9L2: IN	STD_LOGIC_VECTOR(7 DOWNTO 0);--charctor no of second line
		   C10L2,C11L2,C12L2,C13L2,C14L2,C15L2,C16L2: IN	STD_LOGIC_VECTOR(7 DOWNTO 0)--charctor no of second line

		   );	-- LCD Data port
end LCD_4_BIT;

architecture Behavioral of LCD_4_BIT is
signal div : std_logic_vector(20 downto 0); --- delay timer 1
signal clk_t1,lcd_rs_s,lcd_en_s ,line2,line2_clk1: std_logic;
-- LCD controller FSM states
type state is (reset,reset1,func,func1,mode,mode1,cur,cur1,addr_1st,addr_1st_1,addr_2nd,addr_2nd_1,clear,clear1,d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,
			d12,d13,d14,d15,d0_1,d1_1,d2_1,d3_1,d4_1,d5_1,d6_1,d7_1,d8_1,d9_1,d10_1,d11_1,d12_1,d13_1,d14_1,d15_1,hold,extra,extra_1);
signal ps,nx	: state;
signal dataout_s  : std_logic_vector(3 downto 0); --- internal data command multiplexer
begin

lcd_en <= lcd_en_s; 
lcd_rs <= lcd_rs_s;

----- clk divider ---------------------------------
process(rst,clk_12Mhz)
begin
if(rst = rst_state)then
	div <= (others=>'0');
elsif( clk_12Mhz'event and clk_12Mhz ='1')then
	div <= div + 1;
end if;
end process;
----------------------------------------------------
clk_t1 <= div(15);

----- Presetn state Register -----------------------
process(rst,clk_t1)
begin
if(rst = rst_state)then
	ps 	<= reset;
	line2	<= '0';	---to display "Smart Logic Tech"
elsif( clk_t1'event and clk_t1 ='1')then
	ps	<= nx;
	if ps = extra then
		line2	<= '1';	-- to display "lcd demo in vhdl"
   end if;
end if;
end process;
----- state and output  decoding process 
process(rst,ps,line2)
begin
case(ps) is

when reset =>
			nx	<= reset1;
	    	lcd_rs_s	<= '0';
			dataout_s	<= "0011";		-- 3h
when reset1 =>
			nx	<= func;
	    	lcd_rs_s	<= '0';
			dataout_s	<= "0011";		-- 3h
when func	=>
			nx	<= func1;
			lcd_rs_s	<= '0';
			dataout_s	<= "0011";		-- 3h
			
when func1	=>
			nx	<= mode;
			lcd_rs_s	<= '0';
			dataout_s	<= "0010";		-- 2h
when mode	=>
			nx	<= mode1;
			lcd_rs_s	<= '0';
			dataout_s	<= "0010";		-- 2h
when mode1	=>
			nx	<= cur;
			lcd_rs_s	<= '0';
			dataout_s	<= "1000";		-- 8h

when cur	=>
			nx	<= cur1;	   
			lcd_rs_s	<= '0';
			dataout_s	<= "0000";		-- 0Ch  curser at starting point of line1
when cur1	=>
			nx	<= addr_1st;	   
			lcd_rs_s	<= '0';
			dataout_s	<= "1100";		-- 0Ch  curser at starting point of line1

when addr_1st	=>		                   -- line-1 display adress
			nx	<= addr_1st_1;
			lcd_rs_s	<= '0';
			dataout_s	<= "1011";		-- 80h  
when addr_1st_1	=>		                   -- line-1 display adress
			nx	<= clear;
			lcd_rs_s	<= '0';
			dataout_s	<= "0000";		-- 80h  
when clear=>
			nx	<= clear1;
			lcd_rs_s	<= '0';
			dataout_s	<= "0000";		-- 01h

when clear1=>
			nx	<= d0;
			lcd_rs_s	<= '0';
			dataout_s	<= "0001";		-- 01h
when d0	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C1L1(7 downto 4);
			else
			dataout_s	<= C1L2(7 downto 4);
			end if;
			nx	<= d0_1;

when d0_1	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C1L1(3 downto 0);
			else
			dataout_s	<= C1L2(3 downto 0);
			end if;
			nx	<= d1;

when d1	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C2L1(7 downto 4);
			else
			dataout_s	<= C2L2(7 downto 4);
			end if;
			nx	<= d1_1;
when d1_1	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C2L1(3 downto 0);
			else
			dataout_s	<= C2L2(3 downto 0);
			end if;
			nx	<= d2;
			
when d2	=>
			
			lcd_rs_s	<= '1';	 
			if line2='0' then
			dataout_s	<= C3L1(7 downto 4);
			else
			dataout_s	<= C3L2(7 downto 4);
			end if;	
			nx	<= d2_1;
when d2_1	=>
			
			lcd_rs_s	<= '1';	 
			if line2='0' then
			dataout_s	<= C3L1(3 downto 0);
			else
			dataout_s	<= C3L2(3 downto 0);
			end if;	
			nx	<= d3;
when d3	=>	
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C4L1(7 downto 4);
			else
			dataout_s	<= C4L2(7 downto 4);
			end if;	
			nx	<= d3_1;
when d3_1	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C4L1(3 downto 0);
			else
			dataout_s	<= C4L2(3 downto 0);
			end if;	
			nx	<= d4;
when d4	=>
		
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C5L1(7 downto 4);
			else
			dataout_s	<= C5L2(7 downto 4);
			end if;	
			nx	<= d4_1;
when d4_1	=>
		
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C5L1(3 downto 0);
			else
			dataout_s	<= C5L2(3 downto 0);
			end if;	
			nx	<= d5;

when d5	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C6L1(7 downto 4);
			else
			dataout_s	<= C6L2(7 downto 4);
			end if;	
			
			nx	<= d5_1;
when d5_1	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C6L1(3 downto 0);
			else
			dataout_s	<= C6L2(3 downto 0);
			end if;	
			
			nx	<= d6;
	--		C6L1 =>X"41" ,--A
when d6	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C7L1(7 downto 4);
			else
			dataout_s	<= C7L2(7 downto 4);
			end if;
			nx	<= d6_1;
when d6_1	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C7L1(3 downto 0);
			else
			dataout_s	<= C7L2(3 downto 0);
			end if;
			nx	<= d7;
	
--		C7L1 =>X"53" ,--S
when d7	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C8L1(7 downto 4);
			else
			dataout_s	<= C8L2(7 downto 4);
			end if;
			nx	<= d7_1;
when d7_1	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C8L1(3 downto 0);
			else
			dataout_s	<= C8L2(3 downto 0);
			end if;
			nx	<= d8;
when d8	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C9L1(7 downto 4);
			else
			dataout_s	<= C9L2(7 downto 4);
			end if;
			nx	<= d8_1;
when d8_1	=>
			lcd_rs_s	<= '1';
			if line2='0' then
			dataout_s	<= C9L1(3 downto 0);
			else
			dataout_s	<= C9L2(3 downto 0);
			end if;
			nx	<= d9;
when d9	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then 
			dataout_s	<= C10L1(7 downto 4);
			else
			dataout_s	<= C10L2(7 downto 4);
			end if;
			nx	<= d9_1;
when d9_1	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then 
			dataout_s	<= C10L1(3 downto 0);
			else
			dataout_s	<= C10L2(3 downto 0);
			end if;
			nx	<= d10;
when d10	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then 
				dataout_s	<= C11L1(7 downto 4);
		  	else
				dataout_s	<= C11L2(7 downto 4);
		  	end if;
			nx	<= d10_1;	
when d10_1	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then 
				dataout_s	<= C11L1(3 downto 0);
		  	else
				dataout_s	<= C11L2(3 downto 0);
		  	end if;
			nx	<= d11;	
when d11	=>
			
			lcd_rs_s	<= '1';
						if line2='0' then 
				dataout_s	<= C12L1(7 downto 4);
		  	else
				dataout_s	<= C12L2(7 downto 4);
		  	end if;
				nx<=d11_1;
when d11_1	=>
			
			lcd_rs_s	<= '1';
									if line2='0' then 
				dataout_s	<= C12L1(3 downto 0);
		  	else
				dataout_s	<= C12L2(3 downto 0);
		  	end if;		
			nx<=d12;
when d12	=>	
			lcd_rs_s	<= '1';
			if line2='0' then 
			dataout_s	<= C13L1(7 downto 4); 
			else
			dataout_s	<= C13L2(7 downto 4);
			end if;
			nx	<= d12_1;
when d12_1	=>

			
			lcd_rs_s	<= '1';
			if line2='0' then 
			dataout_s	<= C13L1(3 downto 0);
			else
			dataout_s	<= C13L2(3 downto 0);
			end if;
			nx	<= d13;

when d13	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then 
			dataout_s	<= C14L1(7 downto 4);
			else
			dataout_s	<= C14L2(7 downto 4);
			end if;
			nx	<= d13_1;
when d13_1	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then 
			dataout_s	<= C14L1(3 downto 0);
			else
			dataout_s	<= C14L2(3 downto 0);
			end if;
			nx	<= d14;
when d14	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then 
			dataout_s	<= C15L1(7 downto 4);
			else
			dataout_s	<= C15L2(7 downto 4);
			end if;
			nx	<= d14_1;
when d14_1	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then 
			dataout_s	<= C15L1(3 downto 0);
			else
			dataout_s	<= C15L2(3 downto 0);
			end if;
			nx	<= d15;
when d15	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then 
			dataout_s	<= C16L1(7 downto 4);
			else
			dataout_s	<= C16L2(7 downto 4);
			end if;
			nx	<= d15_1;
when d15_1	=>
			
			lcd_rs_s	<= '1';
			if line2='0' then 
			dataout_s	<= C16L1(3 downto 0);
			else
			dataout_s	<= C16L2(3 downto 0);
			end if;
			nx	<= addr_2nd;
		
when addr_2nd	=>		  --- line-2 display adress
			lcd_rs_s	<= '0';
		  	if line2='1' then
			nx			<= addr_2nd;
			else
			nx			<= addr_2nd_1;
			dataout_s	<= "1100";		-- C0h  -- curser at  starting point of line2
			
			end if;
			
when addr_2nd_1	=>		  --- line-2 display adress
			lcd_rs_s	<= '0';
		  	if line2='1' then
			nx			<= addr_2nd;
			else
			nx			<= extra;
			dataout_s	<= "0000";		-- C0h  -- curser at  starting point of line2
			
			end if;

when  extra	=>
			nx	<= extra_1;	   
			lcd_rs_s	<= '0';
			dataout_s	<= "1100";		-- C0h

when  extra_1	=>
			nx	<= d0;	   
			lcd_rs_s	<= '0';
			dataout_s	<= "0000";		-- C0h

when others=>
			nx	<= reset;
			lcd_rs_s	<= '0';
			dataout_s	<= "0001";		-- CLEAR
end case;
end process;

-------------------------------------------------------
lcd_en_s <= clk_t1;
lcd_data <= dataout_s;

end Behavioral;