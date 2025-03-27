	
	LIBRARY IEEE;
	USE IEEE.STD_LOGIC_1164.ALL;
	USE IEEE.STD_LOGIC_ARITH.ALL;
	USE IEEE.STD_LOGIC_UNSIGNED.ALL;
	LIBRARY xil_defaultlib;
	
	ENTITY TOP IS
	PORT(
			osc_clk_in : IN  STD_LOGIC;
	        KEY_0 :IN STD_LOGIC;
	        
		   lcd_rs : out std_logic;		-- LCD RS control
           lcd_en : out std_logic;		-- LCD Enable
           lcd_data : out std_logic_vector(7 downto 4));
	END TOP;
	
	ARCHITECTURE BEHAVIORAL OF TOP IS	
	 CONSTANT A :std_logic_vector(7 downto 0):=X"41";
  CONSTANT B :std_logic_vector(7 downto 0):=X"42";
CONSTANT C :std_logic_vector(7 downto 0):=X"43";
CONSTANT D :std_logic_vector(7 downto 0):=X"44";
CONSTANT E :std_logic_vector(7 downto 0):=X"45";
CONSTANT F :std_logic_vector(7 downto 0):=X"46";
CONSTANT G :std_logic_vector(7 downto 0):=X"47";
CONSTANT H :std_logic_vector(7 downto 0):=X"48";
CONSTANT I :std_logic_vector(7 downto 0):=X"49";
CONSTANT J :std_logic_vector(7 downto 0):=X"4A";
CONSTANT K :std_logic_vector(7 downto 0):=X"4B";
CONSTANT L :std_logic_vector(7 downto 0):=X"4C";
CONSTANT M :std_logic_vector(7 downto 0):=X"4D";
CONSTANT N :std_logic_vector(7 downto 0):=X"4E";
CONSTANT O :std_logic_vector(7 downto 0):=X"4F";
CONSTANT P :std_logic_vector(7 downto 0):=X"50";
CONSTANT Q :std_logic_vector(7 downto 0):=X"51";
CONSTANT R :std_logic_vector(7 downto 0):=X"52";
CONSTANT S :std_logic_vector(7 downto 0):=X"53";
CONSTANT T :std_logic_vector(7 downto 0):=X"54";
CONSTANT U :std_logic_vector(7 downto 0):=X"55";
CONSTANT V :std_logic_vector(7 downto 0):=X"56";
CONSTANT W :std_logic_vector(7 downto 0):=X"57";
CONSTANT X :std_logic_vector(7 downto 0):=X"58";
CONSTANT Y :std_logic_vector(7 downto 0):=X"59";
CONSTANT Z :std_logic_vector(7 downto 0):=X"5A";
CONSTANT NL :std_logic_vector(7 downto 0):=X"0A";
CONSTANT CR :std_logic_vector(7 downto 0):=X"2D";
CONSTANT an :std_logic_vector(7 downto 0):=X"26";
CONSTANT ST :std_logic_vector(7 downto 0):=X"2A";
CONSTANT SP :std_logic_vector(7 downto 0):=X"20";
CONSTANT DT :std_logic_vector(7 downto 0):=X"2E";
  

signal	C1L1,C2L1,C3L1,C4L1,C5L1,C6L1,C7L1,C8L1,C9L1: STD_LOGIC_VECTOR(7 DOWNTO 0);
signal	C10L1,C11L1,C12L1,C13L1,C14L1,C15L1,C16L1: 	STD_LOGIC_VECTOR(7 DOWNTO 0);
signal	C1L2,C2L2,C3L2,C4L2,C5L2,C6L2,C7L2,C8L2,C9L2: 	STD_LOGIC_VECTOR(7 DOWNTO 0);
signal	C10L2,C11L2,C12L2,C13L2,C14L2,C15L2,C16L2: 	STD_LOGIC_VECTOR(7 DOWNTO 0);
  
	SIGNAL CLK_400KHZ,PWM_OUT,CLK_555,RESET,test_sw:STD_LOGIC;
	SIGNAL COUNT: STD_LOGIC_VECTOR(26 DOWNTO 0); 
	SIGNAL TMP_SIG:STD_LOGIC_VECTOR (14 DOWNTO 0);
	SIGNAL COUNT_RGB: STD_LOGIC_VECTOR(7 DOWNTO 0); 
	SIGNAL LED_buff :   STD_LOGIC_VECTOR (15 DOWNTO 0);
	
	SIGNAL CLK_100MHZ :   STD_LOGIC;
	SIGNAL CLK_12MHZ :   STD_LOGIC;
	SIGNAL CLK_25MHZ :   STD_LOGIC;
	
	COMPONENT design_1_clk_wiz_0_0 IS
 PORT(

          clk_out1 : OUT STD_LOGIC;
          clk_out2 : OUT STD_LOGIC;
          clk_out3 : OUT STD_LOGIC;
           clk_in1 : IN STD_LOGIC);
            END component design_1_clk_wiz_0_0;
 
	BEGIN
	
	
	
			INST_clk_wiz: design_1_clk_wiz_0_0 
		PORT MAP (
    clk_out1 =>CLK_100MHZ,
    clk_out3 =>CLK_12MHZ,
    clk_out2 =>CLK_25MHZ,
    clk_in1 =>osc_clk_in
  );









Inst_LCD_4BIT: ENTITY xil_defaultlib.LCD_4_BIT PORT MAP(
    	
    	rst=>KEY_0,
    	clk_12Mhz=>CLK_12MHZ,
    	lcd_rs=>lcd_rs,
    	lcd_en=>lcd_en,
    	lcd_data=>lcd_data,
		 C1L1 =>C1L1,
		 C2L1 =>C2L1,
		 C3L1 =>C3L1,
		 C4L1 =>C4L1,
		 C5L1 =>C5L1,
		 C6L1 =>C6L1,
		 C7L1 =>C7L1,
		 C8L1 =>C8L1,
		 C9L1 =>C9L1,
		C10L1 =>C10L1,
		C11L1 =>C11L1,
		C12L1 =>C12L1,
		C13L1 =>C13L1,
		C14L1 =>C14L1,
		C15L1 =>C15L1,
		C16L1 =>C16L1,
		C1L2  =>C1L2, 
		C2L2  =>C2L2, 
		C3L2  =>C3L2, 
		C4L2  =>C4L2, 
		C5L2  =>C5L2, 
		C6L2  =>C6L2, 
		C7L2  =>C7L2, 
		C8L2  =>C8L2, 
		C9L2  =>C9L2, 
		C10L2 =>C10L2,
		C11L2 =>C11L2,
		C12L2 =>C12L2,
		C13L2 =>C13L2,
		C14L2 =>C14L2,
		C15L2 =>C15L2,
		C16L2 =>C16L2
    	);
    	
    	
 C1L1<=F ;
 C2L1<=P ;
 C3L1<=G ;
 C4L1<=A ;
 C5L1<=T ;
 C6L1<=E ;
 C7L1<=C ;
 C8L1<=H ;
 C9L1<=S ;
C10L1<=O ;
C11L1<=L ;
C12L1<=U ;
C13L1<=T ;
C14L1<=I ;
C15L1<=O;
C16L1<=N ;

--PINE-ARTIX7 FPGA
C1L2<=P;
C2L2<=I;
C3L2<=N;
C4L2<=E;
C5L2<=CR;
C6L2<=S;
C7L2<=P;
C8L2<=A;
C9L2<=R;
C10L2<=T;
C11L2<=A;
C12L2<=N;
C13L2<=X"37";
C14L2<=SP;
C15L2<=SP;
C16L2<=SP;

	END BEHAVIORAL;
	
