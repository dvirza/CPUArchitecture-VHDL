LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

package aux_package is
-----------------------------------------------------------------
	component top is
		generic( Dwidth: integer:=16;
		 AregWidth: integer:=4;
		 AmemWidth: integer:=6;
		 dept : integer := 64);
		 port(	clk,rst,ena: in std_logic;
		 TBactive : in std_logic;
 
		 wEnaProg, wEnaMem : in std_logic;
		 wAddrProg , wAddrMem, rAddrMem : in std_logic_vector(AmemWidth-1 downto 0);
		 
		 dataProg : in std_logic_vector(Dwidth-1 downto 0);
		 dataMemIn : in std_logic_vector(Dwidth-1 downto 0);
		 dataMemOut : out std_logic_vector(Dwidth-1 downto 0);
		 done : out std_logic
 );
	end component;
-----------------------------------------------------------------
	component Adder IS
		GENERIC (length : INTEGER );
  		PORT ( a, b: IN STD_LOGIC_VECTOR (length-1 DOWNTO 0);
          cin: IN STD_LOGIC;
            s: OUT STD_LOGIC_VECTOR (length-1 DOWNTO 0);
         cout: OUT STD_LOGIC);
	END component;
-----------------------------------------------------------------
	component aluCore is
		GENERIC (
			n: integer:=16;
			Dwidth: integer:=16;
			opwidth: integer:=4
			);
	port(	srcA,srcB: 	 	   in std_logic_vector(Dwidth-1 downto 0);
			opc: 		 	   in std_logic_vector(opwidth-1 downto 0);
			aluOut:	     	   out std_logic_vector(Dwidth-1 downto 0);
			cFlag,nFlag,zFlag: out std_logic
		);

	end component;
-----------------------------------------------------------------
	component aluTop is
		GENERIC (
		n: integer:=8;
		Dwidth: integer:=16;
		opwidth: integer:=4
		);
	port(	reg_srcA,wire_srcB: 	 			in std_logic_vector(Dwidth-1 downto 0);
		opc_wire: in std_logic_vector (opwidth-1 downto 0);
		clk, regAin, regCin: in std_logic;
		reg_cOut: 							out std_logic_vector(Dwidth-1 downto 0);
		wire_cFlag, wire_zFlag, wire_nFlag: out std_logic
	);	
	end component;
-----------------------------------------------------------------
	component BidirPin is
		generic( width: integer:=16 );
		port(   Dout: 	in 		std_logic_vector(width-1 downto 0);
				en:		in 		std_logic;
				Din:	out		std_logic_vector(width-1 downto 0);
				IOpin: 	inout 	std_logic_vector(width-1 downto 0)
		);
	end component;
-----------------------------------------------------------------
	component Control is
		generic( Dwidth: integer:=16;
				Awidth: integer:=4);
				
		port( 
			clk,rst,ena: in std_logic;
			done : out std_logic;
			
			op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor: in std_logic; --UUSEDDDDDD
			cFlag,nFlag,zFlag: in std_logic;
		
			Mem_wr,Mem_out,Mem_in :out std_logic;
			Cin,Cout :out std_logic;
			Ain:out std_logic;
			RFin,RFout :out std_logic;
			RFaddr:out std_logic_vector(1 downto 0);
			IRin: out std_logic;
			PCin:out std_logic;
			PCsel:out std_logic_vector(1 downto 0);
			Imm1_in,Imm2_in: out std_logic;
			OPC :out std_logic_vector(Awidth-1 downto 0)
		
			);
			
		end component;
-----------------------------------------------------------------
	component dataMem is
	generic( Dwidth: integer:=16;
			 Awidth: integer:=6;
			 dept:   integer:=64);
	port(	clk,memEn: in std_logic;	
			WmemData:	in std_logic_vector(Dwidth-1 downto 0);
			WmemAddr,RmemAddr:	
						in std_logic_vector(Awidth-1 downto 0);
			RmemData: 	out std_logic_vector(Dwidth-1 downto 0)
	);
	end component;
-----------------------------------------------------------------
component Datapath is
	generic( Dwidth: integer:=16;
			 AMwidth: integer:=6;
			 ARwidth: integer:=4
			);
	port(	clk,rst: in std_logic;
	
			Mem_wr, Mem_out,Mem_in, Cout,Cin,Ain,RFin,RFout,IRin,PCin,Imm1_in,Imm2_in : IN std_logic;
			OPC : in std_logic_vector(ARwidth-1 downto 0);
			RFaddr, PCsel : in std_logic_vector(1 downto 0);
	
			tbWren, tbActive : in std_logic;
			tbDataIn : in std_logic_vector(Dwidth-1 downto 0);
			tbAddrInW, tbAddrInR : in std_logic_vector(AMwidth-1 downto 0);
	
			tbWrenProg : in std_logic;
			tbAddrInWProg : in std_logic_vector(AMwidth-1 downto 0);
			tbDataInProg : in std_logic_vector(Dwidth-1 downto 0);
	
			op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor: out std_logic; --UUSEDDDDDD
			  cFlag,nFlag,zFlag: out std_logic;
	
			MEMdataOut : out std_logic_vector(Dwidth-1 downto 0)
			);
	end component;
--------------------------------------------------------------
component mod_dataMem is
	generic( Dwidth: integer:=16;
		 Awidth: integer:=6;
		 dept:   integer:=64);
	port(	clk,Mem_in, Mem_wr, tbActive, tbMem_wr: in std_logic;
        tbDataIn : in std_logic_vector(Dwidth-1 downto 0);
        tbAddrR, tbAddrW: in std_logic_vector(Awidth-1 downto 0);
		dataIn : in std_logic_vector(Dwidth-1 downto 0);
        dataOut: out std_logic_vector(Dwidth-1 downto 0)
    );
	end component;
--------------------------------------------------------------
component mod_ProgMem is
	generic( Dwidth: integer:=16;
			 Awidth: integer:=6;
			 dept:   integer:=64);
	port(	clk,rst, tbWren, pcin, tbActive:        in std_logic;
			pcsel : in std_logic_vector(1 downto 0);
			irinreg : in std_logic_vector(7 downto 0);
			tbAddrIn : in std_logic_vector(Awidth-1 downto 0);
			tbDataIn : in std_logic_vector (Dwidth-1 downto 0);
			dataOut: 	out std_logic_vector(Dwidth-1 downto 0)
	);
	end component;
--------------------------------------------------------------
component progToRF is
	generic( Dwidth: integer:=16;
			 Awidth: integer:=6;
			 opwidth:   integer:=4);
	port(	clk, rst, tbWren, pcin, tbActive, IRin, RFin:        in std_logic;
			 pcsel : in std_logic_vector(1 downto 0);
			 RFaddr: in std_logic_vector(1 downto 0);
			 tbAddrIn : in std_logic_vector(Awidth-1 downto 0);
			 tbDataIn : in std_logic_vector (Dwidth-1 downto 0);
	 
			 RFinFromBus : in std_logic_vector(Dwidth-1 downto 0);
	 
			 Imm1 : out std_logic_vector(7 downto 0);
			 Imm2 : out std_logic_vector(3 downto 0);
			 RFoutToBus : out std_logic_vector(Dwidth-1 downto 0);
			 op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor: out std_logic --NEW
	 );
	end component;
--------------------------------------------------------------
component mod_RF is
	generic( Dwidth: integer:=16;
			 Awidth: integer:=4);
	port(	clk,rst,IRin, RFin: in std_logic;	
			dataInIR:	in std_logic_vector(Dwidth-1 downto 0);
			dataInBUS:	in std_logic_vector(Dwidth-1 downto 0);
			RFaddr: in std_logic_vector(1 downto 0);
			opcOut : out std_logic_vector(Awidth-1 downto 0);
			outData: 	out std_logic_vector(Dwidth-1 downto 0)
	);
	end component;
--------------------------------------------------------------
component opcDecode is
		generic( opwidth: integer:=4 );
		port(	clk,rst: 	 in std_logic;	
				opDataIn:	     in std_logic_vector(opwidth-1 downto 0); --connect the IR
				op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor: out std_logic --output every bit
		);
		end component;
--------------------------------------------------------------
component pcWork is
	generic( Dwidth: integer:=16;
			 Awidth: integer:=6;
			 dept:   integer:=64);
	port(	clk,rst,PCin: 		in std_logic;	
			PCsel : 			in std_logic_vector(1 downto 0);
			IRinReg: 			in std_logic_vector(7 downto 0);
			PCdata: 			out std_logic_vector(Awidth-1 downto 0)
	);
	end component;
--------------------------------------------------------------
component ProgMem is
	generic( Dwidth: integer:=16;
			 Awidth: integer:=6;
			 dept:   integer:=64);
	port(	clk,memEn: in std_logic;	
			WmemData:	in std_logic_vector(Dwidth-1 downto 0);
			WmemAddr,RmemAddr:	
						in std_logic_vector(Awidth-1 downto 0);
			RmemData: 	out std_logic_vector(Dwidth-1 downto 0)
	);
	end component;
--------------------------------------------------------------
component RF is
	generic( Dwidth: integer:=16;
			opwidth: integer:=4);
	port(	clk,rst,WregEn: in std_logic;	
			WregData:	in std_logic_vector(Dwidth-1 downto 0);
			WregAddr,RregAddr:	
						in std_logic_vector(opwidth-1 downto 0);
			RregData: 	out std_logic_vector(Dwidth-1 downto 0)
	);
	end component;

end package aux_package;