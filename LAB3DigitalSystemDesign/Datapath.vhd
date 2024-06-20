library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Datapath is
generic( Dwidth: integer:=16;
		 AMwidth: integer:=6;
		 ARwidth: integer:=4
		);
port(	clk: in std_logic;

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

		MEMdataOut : out std_logic_vector(Dwidth-1 downto 0);

);
end Datapath;

ARCHITECTURE behav OF Datapath IS

signal dataBUS : std_logic_vector(Dwidth-1 downto 0);
signal internalALUout, internalALUin : std_logic_vector(Dwidth-1 downto 0);
signal internalMEMdata : std_logic_vector (Dwidth-1 downto 0);
signal imm1SignExt, imm2SignExt : std_logic_vector(Dwidth downto 0);

begin
--/*			ALU connection			*/
 ALU_inst : aluTop 
			generic map (n => 8,
						Dwidth => Dwidth,
						opwidth => ARwidth)
			port map(
				reg_srcA => internalALUin,
				wire_srcB => internalALUin,
				clk => clk,
				rst => rst,
				wire_cFlag => cFlag,
				wire_nFlag => nFlag,
				wire_zFlag => zFlag,
				regAin => Ain,
				regCin => Cin,
				opc_wire => OPC,
				reg_cOut => internalALUout
			);

 ALUBidirPin_inst : BidirPin 
 					generic map( width => Dwidth)
					port map (
						Dout => internalALUout,
						en => Cout,
						Din => internalALUin,
						IOpin => dataBUS
					);
--/*			***************			*/

--/*			dataMEM connection			*/
 dataMEM_inst : mod_dataMem
			   generic map ( dept => 64,
							Dwidth => Dwidth,
							opwidth => AMwidth)
			   port map (
					clk => clk,
					Mem_in => Mem_in,
					Mem_wr => Mem_wr,
					tbActive => tbActive,
					tbMem_wr => tbWren,
					tbDataIn => tbDataIn,
					tbAddrR => tbAddrInR,
					tbAddrW => tbAddrInW,
					dataInOut => internalMEMdata
			   );

 dataMEMBidirPin_inst : BidirPin 
			   generic map( width => Dwidth)
			   port map (
				  Dout => internalMEMdata,
				  en => Mem_out,
				  Din => internalMEMdata,
				  IOpin => dataBUS
			  );
--/*			***************			*/

--/*			progMEM connection			*/
dataMEM_inst : mod_ProgMem
generic map ( dept => 64,
			 Dwidth => Dwidth,
			 opwidth => AMwidth)
			port map (
				clk => clk,
				tbWren => tbWrenProg,
				pcin => PCin,
				tbActive => tbActive,
				pcsel => PCsel,
				irinreg => ,
				tbAddrIn => tbAddrInWProg,
				tbDataIn => tbDataInProg,
				dataInOut => dataOut
			);

dataMEMBidirPin_inst : BidirPin 
					generic map( width => Dwidth)
					port map (
						Dout => ,
						en => ,
						Din => ,
						IOpin => 
					);
--/*			***************			*/

IMM1_sign_inst : BidirPin
					generic map( width => Dwidth)
					port map (
						Dout => ,
						en => Imm1_in,
						Din => open,
						IOpin => dataBUS
					);
/*
port(	clk, tbWren, pcin, tbActive:        in std_logic;
        pcsel : in std_logic_vector(1 downto 0);
        irinreg : in std_logic_vector(7 downto 0);
        tbAddrIn : in std_logic_vector(Awidth-1 downto 0);
        tbDataIn : in std_logic_vector (Dwidth-1 downto 0);
        dataOut: 	out std_logic_vector(Dwidth-1 downto 0)
);


MOD_RF
generic( Dwidth: integer:=16;
		 Awidth: integer:=4);
port(	clk,rst,IRin, RFin: in std_logic;	
		dataInIR:	in std_logic_vector(Dwidth-1 downto 0);
        dataInBUS:	in std_logic_vector(Dwidth-1 downto 0);
		RFaddr: in std_logic_vector(1 downto 0);
        opcOut : out std_logic_vector(Awidth-1 downto 0);
		outData: 	out std_logic_vector(Dwidth-1 downto 0)
);
*/

 MEMdataOut <= internalMEMdata; -- connect the output signal into internal signal
end behav;