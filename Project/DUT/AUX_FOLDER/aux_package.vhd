library IEEE;
use ieee.std_logic_1164.all;


package aux_package is
-------------------------------------------------------- TOP Envalope
	-- component top is
	-- 	generic(n:INTEGER := 8;
    --      k: INTEGER := 3);
    -- port(clk,ena,rst: in std_logic;
    --      x_ena,y_ena,alufn_ena : in std_logic;
    --      sw07_i : in std_logic_vector(n-1 downto 0);
    --      y_tohex_o1,y_tohex_o2, x_tohex_o1,x_tohex_o2 : out std_logic_vector(6 downto 0);
    --      aluout_tohex_o1,aluout_tohex_o2 : out std_logic_vector(6 downto 0);
    --      alufn_tohex_o : out std_logic_vector(4 downto 0);
    --      pwm_o , ov_flag_o, z_flag_o, c_flag_o, n_flag_o: out std_logic
    --      --aluRes_o : out std_logic_vector(n-1 downto 0)
    --      );
	-- end component;
-------------------------------------------------------- Divider
component DIV is
	GENERIC (  n : INTEGER:= 32;
               m : INTEGER := 6 ); --m := log2(N)
	PORT (  divCLK_i , divRST_i, divENA_i : IN std_logic;
            dividend_i, divisor_i : IN std_logic_vector (n-1 downto 0);
	        divIFG_o: OUT std_logic;
            residue_o , quotient_o : OUT std_logic_vector (n-1 downto 0)
         );
end component;
-------------------------------------------------------- Adder
component Adder is
	GENERIC (length : INTEGER := 32);
 PORT ( a, b: IN STD_LOGIC_VECTOR (length-1 DOWNTO 0);
          cin: IN STD_LOGIC;
            s: OUT STD_LOGIC_VECTOR (length-1 DOWNTO 0);
         cout: OUT STD_LOGIC);
end component;
-------------------------------------------------------- Check
component check is
	GENERIC (  n : INTEGER;
               m : INTEGER ); --m := log2(N)
	PORT (  clk : IN std_logic;
            a, b : IN std_logic_vector (n-1 downto 0);
	        valid: IN std_logic;
            result : OUT std_logic_vector (n-1 downto 0)
         );
end component;
-------------------------------------------------------- Clock divider
component clock_div is
   port(
     i_clk         : in  std_logic;
     i_rst         : in  std_logic;
     o_clk_div2    : out std_logic;
     o_clk_div4    : out std_logic;
     o_clk_div8    : out std_logic
     );
   end component;
-------------------------------------------------------- MIPS fetch
COMPONENT Ifetch
   PORT(	 Instruction 		: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    PC_plus_4_out 	: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
    Add_result 		: IN 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
    Branch 			: IN 	STD_LOGIC;
    Zero 			: IN 	STD_LOGIC;
    PC_out 			: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
    clock, reset 	: IN 	STD_LOGIC);
END COMPONENT; 
-------------------------------------------------------- MIPS decode
COMPONENT Idecode
 PORT(	read_data_1 		: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
       read_data_2 		: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
       Instruction 		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
       read_data 			: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
       ALU_result 			: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
       RegWrite, MemtoReg 	: IN 	STD_LOGIC;
       RegDst 				: IN 	STD_LOGIC;
       Sign_extend 		: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
       clock, reset		: IN 	STD_LOGIC );
END COMPONENT;
-------------------------------------------------------- MIPS control
COMPONENT control
PORT( 	Opcode 				: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
        RegDst 				: OUT 	STD_LOGIC;
        ALUSrc 				: OUT 	STD_LOGIC;
        MemtoReg 			: OUT 	STD_LOGIC;
        RegWrite 			: OUT 	STD_LOGIC;
        MemRead 			: OUT 	STD_LOGIC;
        MemWrite 			: OUT 	STD_LOGIC;
        Branch 				: OUT 	STD_LOGIC;
        ALUop 				: OUT 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
        clock, reset		: IN 	STD_LOGIC );
END COMPONENT;
-------------------------------------------------------- MIPS execute
COMPONENT  Execute
   PORT(	Read_data_1 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   Read_data_2 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   Sign_extend 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   Function_opcode : IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
   ALUOp 			: IN 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
   ALUSrc 			: IN 	STD_LOGIC;
   Zero 			: OUT	STD_LOGIC;
   ALU_Result 		: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   Add_Result 		: OUT	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
   PC_plus_4 		: IN 	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
   clock, reset	: IN 	STD_LOGIC );
END COMPONENT;
-------------------------------------------------------- MIPS data memory
COMPONENT dmemory
PORT(	read_data 			: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
       address 			: IN 	STD_LOGIC_VECTOR( 7 DOWNTO 0 );
       write_data 			: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
       MemRead, Memwrite 	: IN 	STD_LOGIC;
       Clock,reset			: IN 	STD_LOGIC );
END COMPONENT;
--------------------------------------------------------
end aux_package;