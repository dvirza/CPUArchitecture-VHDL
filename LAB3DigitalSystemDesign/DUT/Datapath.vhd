library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;

entity Datapath is
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

		op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor: out std_logic; --UUSEDDDDDD --NEW

	  	cFlag,nFlag,zFlag: out std_logic;

		MEMdataOut : out std_logic_vector(Dwidth-1 downto 0)

);
end Datapath;

ARCHITECTURE behav OF Datapath IS

signal dataBUS : std_logic_vector(Dwidth-1 downto 0) := (others => '0');
signal internalALUout, internalALUin : std_logic_vector(Dwidth-1 downto 0) := (others => '0') ;
signal internalMEMdataIN, internalMEMdataOUT: std_logic_vector (Dwidth-1 downto 0) := (others => '0');
signal imm1SignExt, imm2SignExt : std_logic_vector(Dwidth-1 downto 0);
signal internalRFdataIN,internalRFdataOUT : std_logic_vector(Dwidth-1 downto 0) := (others => '0');
signal intC,intZ,intN : std_logic := '0' ;

begin
	cFlag <= intC;
	zFlag <= intZ;
	nFlag <= intN;
--/*			ALU connection			*/
 ALU_inst : aluTop 
			generic map (n => 16,
						Dwidth => Dwidth,
						opwidth => ARwidth)
			port map(
				reg_srcA => internalALUin,
				wire_srcB => internalALUin,
				clk => clk,
				wire_cFlag => intC,
				wire_nFlag => intN,
				wire_zFlag => intZ,
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
							Awidth => AMwidth)
			   port map (
					clk => clk,
					Mem_in => Mem_in,
					Mem_wr => Mem_wr,
					tbActive => tbActive,
					tbMem_wr => tbWren,
					tbDataIn => tbDataIn,
					tbAddrR => tbAddrInR,
					tbAddrW => tbAddrInW,
					dataIn => internalMEMdataIN,
					dataOut => internalMEMdataOUT
			   );

 dataMEMBidirPin_inst : BidirPin 
			   generic map( width => Dwidth)
			   port map (
				  Dout => internalMEMdataOUT,
				  en => Mem_out,
				  Din => internalMEMdataIN,
				  IOpin => dataBUS
			  );
--/*			***************			*/

--/*			progMEM connection			*/
porgToRF_inst : progToRF
					generic map( Dwidth => Dwidth,
							Awidth=> AMwidth,
							opwidth=> ARwidth)
					port map (	
						clk => clk,
						rst => rst,
						tbWren => tbWrenProg,
						pcin => PCin,
						tbActive => tbActive,
						IRin => IRin,
						RFin => RFin,
						pcsel => PCsel,
						RFaddr => RFaddr,
						tbAddrIn => tbAddrInWProg,
						tbDataIn => tbDataInProg,
						RFinFromBus => internalRFdataIN,
						RFoutToBus => internalRFdataOUT,
						Imm1 => imm1SignExt,
						Imm2 => imm2SignExt,
						op_st => op_st,
                        op_ld => op_ld,
                        op_mov => op_mov,
                        op_done => op_done,
                        op_add => op_add,
                        op_sub => op_sub,
                        op_jmp => op_jmp,
                        op_jc => op_jc,
                        op_jnc => op_jnc,
                        op_and => op_and,
                        op_or => op_or,
                        op_xor => op_xor --NEW
					);

porgToRF_Bidir_inst : BidirPin
						generic map( width => Dwidth)
					port map (
						Dout => internalRFdataOUT,
						en => RFout,
						Din => internalRFdataIN,
						IOpin => dataBUS
					);
--/*			***************			*/

IMM1_sign_inst : BidirPin
					generic map( width => Dwidth)
					port map (
						Dout => imm1SignExt,
						en => Imm1_in,
						Din => open,
						IOpin => dataBUS
					);

IMM2_sign_inst : BidirPin
					generic map( width => Dwidth)
					port map (
						Dout => imm2SignExt,
						en => Imm2_in,
						Din => open,
						IOpin => dataBUS
					);

 MEMdataOut <= internalMEMdataOUT; -- connect the output signal into internal signal
end behav;