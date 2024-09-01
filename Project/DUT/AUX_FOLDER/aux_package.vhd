library IEEE;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;


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
      GENERIC (  n : INTEGER );
      PORT (  sw_i : IN std_logic_vector (n-1 downto 0);
              hex_o1: OUT std_logic_vector (6 downto 0) );
   END component;
-------------------------------------------------------- Switch ports
   component sw_port IS
      PORT    (   i_control : in std_logic;
                i_memRead : in std_logic;
                i_swport : in std_logic_vector(7 downto 0);
                o_data : inout std_logic_vector(31 downto 0) );
   END component;
-------------------------------------------------------- HEX and LEDs
   component hexled IS
      PORT (  i_control, i_A0 : in std_logic;
            i_memRead, i_memWrite : in std_logic;
            io_data : inout std_logic_vector(31 downto 0);
            o_outToHEX : out std_logic_vector (7 downto 0) );
   END component;
-------------------------------------------------------- Address decoder
   component addr_decoder IS
      PORT    (   i_addrBits : in std_logic_vector(4 downto 0);
                o_controlBits : out std_logic_vector(4 downto 0) );
   END component;
-------------------------------------------------------- GPIO
component GPIO IS
	PORT    (   i_memRead, i_memWrite   : in    std_logic;
                i_addr      : in    std_logic_vector (5 downto 0);--<A11,A5,A4,A3,A2,A0>
                i_swport    : in    std_logic_vector(7 downto 0);
                o_hex0,o_hex1,o_hex2,o_hex3,o_hex4,o_hex5 : out std_logic_vector(6 downto 0);
                o_leds      : out   std_logic_vector(7 downto 0);
                io_data     : inout   std_logic_vector(31 downto 0) );
END component;
-------------------------------------------------------- Divider
component DIV is
	generic(n : INTEGER; m : INTEGER );
	port (   i_divCLK, i_divRST, i_divENA        : IN std_logic;
            i_valid_divisor, i_valid_dividend   : IN std_logic;
            i_dividend, i_divisor               : IN std_logic_vector (n-1 downto 0);
	         o_divIFG                            : OUT std_logic;
            o_dividend, o_divisor               : OUT unsigned (n-1 downto 0);
            o_residue, o_quotient               : OUT unsigned (n-1 downto 0) );
end component;
-------------------------------------------------------- Divider env
component div_env IS
	PORT    (   i_divCLK, i_divRST, i_memRead, i_memWrite : in std_logic;
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
-------------------------------------------------------- Shifter
component shifter IS
	GENERIC (n : INTEGER;
		 k : INTEGER
		 );
       PORT ( y: IN std_logic_vector (n-1 downto 0);
       x : IN std_logic_vector(k-1 downto 0);
         dir: IN std_logic;
    res: OUT std_logic_vector (n-1 downto 0); 
    cout: OUT std_logic);
END component;
-------------------------------------------------------- Basic Timer
component BTimer IS
	generic (  n : INTEGER;
               k : INTEGER --size of control register (8 in this case)
            );
	port (  i_MCLK, i_rst, i_valid : IN std_logic;
            i_BTCTL : IN std_logic_vector (k-1 downto 0);
            i_BTCCR0, i_BTCCR1, i_BTCNT : IN std_logic_vector(n-1 downto 0);
            o_BTCNT : OUT std_logic_vector(n-1 downto 0);
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
   generic(model_sim		: boolean; 
   addr_size		: integer );
   PORT(	clock, reset 	: IN 	STD_LOGIC;
   Add_result 		: IN 	STD_LOGIC_VECTOR( 9 DOWNTO 0 );
   Sign_extend		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   o_Instruction 	: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   Jump 			: IN 	STD_LOGIC_VECTOR( 1 DOWNTO 0 );
   Beq, Bne 		: IN 	STD_LOGIC;
   Zero 			: IN 	STD_LOGIC;
   nx_pc_out		: OUT	STD_LOGIC_VECTOR(11 DOWNTO 0);
   i_inst_from_intr_valid : IN std_logic;
   i_inst_from_intr : IN std_logic_vector(31 downto 0);
   read_data_1		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   PC_plus_4_out	: OUT	STD_LOGIC_VECTOR( 11 DOWNTO 0 ) );
END COMPONENT; 
-------------------------------------------------------- MIPS decode
COMPONENT Idecode
PORT(	
   clock,reset	: IN 	STD_LOGIC;
   Instruction : IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   read_data 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   ALU_result	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   i_save_to_pc: IN 	STD_LOGIC;
   RegWrite	: IN 	STD_LOGIC;
   Zero_extend : IN	STD_LOGIC;
   JUMP		: IN	STD_LOGIC_VECTOR(1 DOWNTO 0);
    gie_on,gie_off	: IN 	STD_LOGIC;
    MemtoReg 	: IN 	STD_LOGIC_VECTOR(1 DOWNTO 0);
   RegDst 		: IN 	STD_LOGIC;
    intr_save_pc: IN	STD_LOGIC_VECTOR(11 DOWNTO 0);-- were 11 change to 9
    PC_plus_4	: IN	STD_LOGIC_VECTOR(11 DOWNTO 0);
   Function_opcode : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);			
    Sign_extend : OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
    GIE			: OUT	STD_LOGIC;
   read_data_1	: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
   read_data_2	: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 ) );
END COMPONENT;
-------------------------------------------------------- MIPS control
COMPONENT control
      port (  Opcode 			: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 ); --6 MSB
      Function_opcode : IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 ); --6 LSB
      RegDst 			: OUT 	STD_LOGIC;
      Zero_extend     : OUT   STD_LOGIC; 
      ALUSrc 			: OUT 	STD_LOGIC;
      MemtoReg 		: OUT 	STD_LOGIC_VECTOR(1 DOWNTO 0);
      RegWrite 		: OUT 	STD_LOGIC;
      MemRead 		: OUT 	STD_LOGIC;
      MemWrite 		: OUT 	STD_LOGIC;
      Beq, Bne 		: OUT 	STD_LOGIC;
      JUMP			: OUT	STD_LOGIC_VECTOR(1 DOWNTO 0);
      ALUctrl 		: OUT 	STD_LOGIC_VECTOR( 5 DOWNTO 0 ));
END COMPONENT;
-------------------------------------------------------- MIPS execute
COMPONENT  Execute
      PORT(	Read_data_1 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
      Read_data_2 	: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
      Sign_extend		: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
      Function_opcode1: IN 	STD_LOGIC;
      ALUctrl 		: IN 	STD_LOGIC_VECTOR( 5 DOWNTO 0 );
      ALUSrc 			: IN 	STD_LOGIC;
      PC_plus_4 		: IN 	STD_LOGIC_VECTOR( 11 DOWNTO 0 );
      Zero 			: OUT	STD_LOGIC;
      ALU_Result 		: OUT	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
      Add_Result 		: OUT	STD_LOGIC_VECTOR( 9 DOWNTO 0 ) );
END COMPONENT;
-------------------------------------------------------- MIPS data memory
COMPONENT dmemory
      generic(model_sim		: boolean; 
      addr_size		: integer );
      PORT(	read_data 			: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
      address 			: IN 	STD_LOGIC_VECTOR( 10 DOWNTO 0 );
      write_data 			: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
      Memwrite 			: IN 	STD_LOGIC;
      clock,reset			: IN 	STD_LOGIC );
END COMPONENT;
-------------------------------------------------------- interrupt register 1 bit
COMPONENT interrupt_reg IS
   PORT    (   i_clk, i_rst, i_isrc, i_eint, i_clear     : in    std_logic;
            o_ifg                       : out   std_logic;
            o_irq                    : buffer   std_logic );
END COMPONENT;
-------------------------------------------------------- interrupt register 8 bit
COMPONENT interrupt_reg_several IS
PORT    (   i_clk, i_rst, i_gie         : in  std_logic;
i_isrc, i_clear, i_eint     : in  std_logic_vector(7 downto 0);
o_intr                      : out std_logic;
o_ifg                       : buffer std_logic_vector(7 downto 0);
o_irq                       : out std_logic_vector(7 downto 0) );
END COMPONENT;
-------------------------------------------------------- interrupt core
COMPONENT interrupt_core IS
    PORT    (   i_isrc, i_clear             : in    std_logic_vector(7 downto 0);
                i_data                      : in    std_logic_vector(7 downto 0);
                i_gie                       : in    std_logic;
                i_valid_ie                  : in    std_logic;
                o_intr                      : out   std_logic;
                i_clk, i_rst                : in    std_logic;
                o_ifg, o_irq                : out   std_logic_vector(7 downto 0);
                o_data_ie,o_type            : out   std_logic_vector(7 downto 0) );
END COMPONENT;
-------------------------------------------------------- interrupt env
COMPONENT interrupt_env IS
      PORT    (   i_clk, i_rst                : in    std_logic;
      i_intr_ack                  : in    std_logic;
      i_addr                      : in    std_logic_vector(11 downto 0);
      i_memread,i_memwrite,i_gie  : in    std_logic;
      i_TXBUF,i_RXBUF             : in    std_logic;
      i_irq                       : in   std_logic_vector(7 downto 0);
      o_intr                      : out   std_logic;
      io_data                     : inout   std_logic_vector(31 downto 0) );
END COMPONENT;
-------------------------------------------------------- mips intr
COMPONENT mips_intr IS
   PORT    (   i_clk, i_rst                : in    std_logic;
   i_intr                      : in    std_logic;
   i_instruction               : in    std_logic_vector(31 downto 0);
   i_PC_plus_4                 : in    std_logic_vector(11 downto 0);
   o_save_to_pc                : out   std_logic;
   o_inst_from_intr_valid      : out   std_logic;
   o_pc_save                   : out   std_logic_vector(11 downto 0);
   o_inst_from_intr            : out   std_logic_vector(31 downto 0);
   o_inta,o_gie_off,o_gie_on   : out   std_logic );
END COMPONENT;
-------------------------------------------------------- mips env
COMPONENT MIPSenv IS
GENERIC ( model_sim : boolean;  addr_size : integer);
    PORT( i_reset, i_clock				: IN 	STD_LOGIC; 
        -- Output important signals to pins for easy display in Simulator
        i_intr                          : IN    STD_LOGIC;
        o_inta,o_gie                    : OUT   STD_LOGIC;
        o_memwrite,o_memread            : OUT   STD_LOGIC;
        o_addr							: OUT   STD_LOGIC_VECTOR( 11 DOWNTO 0 );
        io_bus                          : INOUT STD_LOGIC_VECTOR( 31 DOWNTO 0 ) );

END COMPONENT;
-------------------------------------------------------- MCU
COMPONENT mcu_top IS
      GENERIC( model_sim : boolean := true; addr_size : integer := 9);
      PORT(   i_reset, i_clock				            : IN 	STD_LOGIC;
            i_rxuart,i_txuart                           : IN    STD_LOGIC;
            i_pb1,i_pb2,i_pb3                           : IN    STD_LOGIC;
            i_sw                                        : IN    STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_hex0,o_hex1,o_hex2,o_hex3,o_hex4,o_hex5   : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);
            o_leds                                      : OUT   STD_LOGIC_VECTOR(7 DOWNTO 0);
            o_pwm                                       : OUT   STD_LOGIC );
END COMPONENT;

end aux_package;