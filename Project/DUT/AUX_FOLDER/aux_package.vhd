library IEEE;
use ieee.std_logic_1164.all;


package aux_package is
-------------------------------------------------------- BidirPin
   component BidirPin is
      generic( width: integer);
      port(   Dout: 	in 		std_logic_vector(width-1 downto 0);
            en:		in 		std_logic;
            Din:	out		std_logic_vector(width-1 downto 0);
            IOpin: 	inout 	std_logic_vector(width-1 downto 0)
      );
   end component;
-------------------------------------------------------- HEX decode
   component hexdecode IS
      GENERIC (  n : INTEGER);
      PORT (  sw_i : IN std_logic_vector (n-1 downto 0);
              hex_o1: OUT std_logic_vector (6 downto 0) );
   END component;
-------------------------------------------------------- Switch ports
   component sw_port IS
	PORT    (   i_control : in std_logic;
                i_memRead : in std_logic;
                i_swport : in std_logic_vector(7 downto 0);
                o_data : out std_logic_vector(7 downto 0) );
   END component;
-------------------------------------------------------- HEX and LEDs
   component hexled IS
	PORT (  i_control, i_A0 : in std_logic;
            i_memRead, i_memWrite : in std_logic;
            io_data : inout std_logic_vector(7 downto 0);
            o_outToHEX : buffer std_logic_vector (7 downto 0) );
   END component;
-------------------------------------------------------- Address decoder
   component addr_decoder IS
      PORT    (   i_addrBits : in std_logic_vector(4 downto 0);
                o_controlBits : out std_logic_vector(4 downto 0) );
   END component;
-------------------------------------------------------- Divider
component DIV is
	GENERIC (  n : INTEGER; m : INTEGER );
	PORT (  i_divCLK , i_divRST, i_divENA   : IN std_logic;
            i_valid_divisor, i_valid_dividend : IN std_logic;
            i_dividend, i_divisor           : IN std_logic_vector (n-1 downto 0);
	         o_divIFG                        : OUT std_logic;
            o_residue , o_quotient          : OUT std_logic_vector (n-1 downto 0) );
end component;
-------------------------------------------------------- Divider env
component div_env IS
	PORT    (   i_divCLK, i_divRST, i_memRead, i_memWrite, i_divENA : in std_logic;
                i_addr : in std_logic_vector(11 downto 0);
                o_divIFG : out std_logic;
                io_data : inout std_logic_vector(31 downto 0) );
END component;
-------------------------------------------------------- Adder
component Adder is
	GENERIC (length : INTEGER := 32);
 PORT ( a, b: IN STD_LOGIC_VECTOR (length-1 DOWNTO 0);
          cin: IN STD_LOGIC;
            s: OUT STD_LOGIC_VECTOR (length-1 DOWNTO 0);
         cout: OUT STD_LOGIC);
end component;
-------------------------------------------------------- Basic Timer
component BTimer IS
	generic (  n : INTEGER;
               k : INTEGER --size of control register (8 in this case)
            );
   port (  i_MCLK, i_rst, i_valid : IN std_logic;
            i_BTCTL : IN std_logic_vector (k-1 downto 0);
            i_BTCCR0, i_BTCCR1, i_BTCNT : IN std_logic_vector(n-1 downto 0);
            o_BTPWM : OUT std_logic;
	        o_BTIFG: OUT std_logic );
END component;
-------------------------------------------------------- Basic Envalope
component BTimer_env IS
   PORT    (   i_memRead, i_memWrite, i_MCLK, i_rst   : in    std_logic;
   i_addr              : in    std_logic_vector (11 downto 0);
   io_data             : inout std_logic_vector(31 downto 0);
   o_pwm, o_BTIFG      : out   std_logic );
END component;
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
-------------------------------------------------------- PWM
component pwm IS
   generic(n : INTEGER );
    port (  clk, ena ,rst : in std_logic;
            x,y,i_count : in std_logic_vector(n-1 downto 0);
            workMode : in std_logic;
            pwmOut : buffer std_logic  );
END component;
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
-------------------------------------------------------- interrupt register 1 bit
COMPONENT interrupt_reg IS
    PORT    (   i_isrc, i_eint, i_clear     : in    std_logic;
                o_ifg                       : out   std_logic;
                o_irq                    : buffer   std_logic );
END COMPONENT;
--------------------------------------------------------
end aux_package;