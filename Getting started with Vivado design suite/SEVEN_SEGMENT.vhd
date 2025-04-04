LIBRARY IEEE;
	USE IEEE.STD_LOGIC_1164.ALL;
	USE IEEE.STD_LOGIC_ARITH.ALL;
	USE IEEE.STD_LOGIC_SIGNED.ALL;
	
	ENTITY SEVEN_SEGMENT IS 
	
	PORT	(	
				CLK_100MHZ:IN STD_LOGIC;--CLOCK INPUT       
				RESET:IN STD_LOGIC;--RESET INPUT
				
				SIG_PD:OUT STD_LOGIC;		
				sig_a : out  STD_LOGIC;
				sig_b : out  STD_LOGIC;
				sig_c : out  STD_LOGIC;
				sig_d : out  STD_LOGIC;
				sig_e : out  STD_LOGIC;
				sig_f : out  STD_LOGIC;
				sig_g : out  STD_LOGIC;
			
				sel_disp1 : out  STD_LOGIC;
				sel_disp2 : out  STD_LOGIC;
				sel_disp3 : out  STD_LOGIC;
				sel_disp4 : out  STD_LOGIC;

				
				data_disp_1: IN STD_LOGIC_VECTOR (3 downto 0);
				data_disp_2: IN STD_LOGIC_VECTOR (3 downto 0);
				data_disp_3: IN STD_LOGIC_VECTOR (3 downto 0);
				data_disp_4: IN STD_LOGIC_VECTOR (3 downto 0)

			
	);
	
	END SEVEN_SEGMENT; 
	
	
	ARCHITECTURE BEHAVE OF SEVEN_SEGMENT IS 
	
	signal BCD: STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal COUNT: STD_LOGIC_VECTOR(24 DOWNTO 0);
	signal COUNT_BCD: STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal sig_select: STD_LOGIC_VECTOR(1 DOWNTO 0);
	signal DISP: STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL CLK_7_SIG:STD_LOGIC;
	signal refresh_counter: STD_LOGIC_VECTOR (19 downto 0);
	BEGIN
	
	
	
	
	-- generate refresh period of 10.5ms
process(CLK_100MHZ,reset)
begin 
    if(reset='1') then
        refresh_counter <= (others => '0');
    elsif(rising_edge(CLK_100MHZ)) then
        refresh_counter <= refresh_counter + 1;
    end if;
end process;

sig_select<= refresh_counter(19 downto 18);

	
	process (sig_select) 
	begin
	case (sig_select) is 
		when "00" =>
			sel_disp1 <='0';
			sel_disp2 <='1';
			sel_disp3 <='1';
			sel_disp4 <='1';	
			COUNT_BCD<=data_disp_1;
			
		when "01" =>
			sel_disp1 <='1';
			sel_disp2 <='0';
			sel_disp3 <='1';
			sel_disp4 <='1';	
			COUNT_BCD<=data_disp_2;
	
		when "10" =>
			sel_disp1 <='1';
			sel_disp2 <='1';
			sel_disp3 <='0';
			sel_disp4 <='1';	
			COUNT_BCD<=data_disp_3;
	
	
		when "11" =>
			sel_disp1 <='1';
			sel_disp2 <='1';
			sel_disp3 <='1';
			sel_disp4 <='0';	
			COUNT_BCD<=data_disp_4;
			
		when others =>
		null;
	end case;
			
	end process;
	SIG_PD<='1';
	
	
	--   LED:   out   STD_LOGIC_VECTOR (6 downto 0);
	-- 
	-- segment encoinputg
	--      0
	--     ---  
	--  5 |   | 1
	--     ---   <- 6
	--  4 |   | 2
	--     ---
	--      3
	
			sig_a <= (DISP(0));
			sig_b <= (DISP(1));
			sig_c <= (DISP(2));
			sig_d <= (DISP(3));
			sig_e <= (DISP(4));
			sig_f <= (DISP(5));
			sig_g <= (DISP(6));
				
				
		with COUNT_BCD SELECT
		DISP<=  "1111001" when "0001",   --1
				"0100100" when "0010",   --2
				"0110000" when "0011",   --3
				"0011001" when "0100",   --4
				"0010010" when "0101",   --5
				"0000010" when "0110",   --6
				"1111000" when "0111",   --7
				"0000000" when "1000",   --8
				"0010000" when "1001",   --9
				"0001000" when "1010",   --A
				"0000011" when "1011",   --b
				"1000110" when "1100",   --C
				"0100001" when "1101",   --d
				"0000110" when "1110",   --E
				"0001110" when "1111",   --F
				"1000000" when others;   --0
		
	END BEHAVE;
	