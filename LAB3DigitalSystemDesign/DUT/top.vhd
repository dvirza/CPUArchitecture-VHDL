library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;

entity top is
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
end top;


architecture behav of top is

	signal 	op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor:  std_logic;  --NEW
	signal cFlag,nFlag,zFlag: std_logic;
	signal Mem_wr,Mem_in,Mem_out ,Cin, Cout, Ain, RFin, RFout,IRin, PCin, Imm1_in, Imm2_in : std_logic;
	signal RFaddr, PCsel : std_logic_vector(1 downto 0);
	signal OPC : std_logic_vector(AregWidth-1 downto 0);
begin
Control_inst : Control
				generic map(
					Dwidth=>Dwidth,
					Awidth=>AregWidth)
				port map (
					clk => clk,
					rst => rst,
					ena => ena,
					done => done,
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
					op_xor => op_xor, --NEW
					cFlag => cFlag,
					nFlag => nFlag,
					zFlag => zFlag,
					Mem_wr => Mem_wr,
					Mem_out => Mem_out,
					Mem_in => Mem_in,
					Cin => Cin,
					Cout => Cout,
					Ain => Ain,
					RFin => RFin,
					RFout => RFout,
					RFaddr => RFaddr,
					IRin => IRin,
					PCin => PCin,
					PCsel => PCsel,
					Imm1_in => Imm1_in,
					Imm2_in => Imm2_in,
					OPC => OPC				  
				);

Datapath_inst : Datapath
					generic map (
						Dwidth => Dwidth,
						AMwidth => AmemWidth,
						ARwidth => AregWidth)
					port map (
						clk => clk,
						rst => rst,
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
						op_xor => op_xor, --NEW
						cFlag => cFlag,
						nFlag => nFlag,
						zFlag => zFlag,
						Mem_wr => Mem_wr,
						Mem_out => Mem_out,
						Mem_in => Mem_in,
						Cin => Cin,
						Cout => Cout,
						Ain => Ain,
						RFin => RFin,
						RFout => RFout,
						RFaddr => RFaddr,
						IRin => IRin,
						PCin => PCin,
						PCsel => PCsel,
						Imm1_in => Imm1_in,
						Imm2_in => Imm2_in,
						OPC => OPC,
						tbActive => TBactive,
						tbWren => wEnaMem,
						tbDataIn => dataMemIn,
						tbAddrInW => wAddrMem,
						tbAddrInR => rAddrMem,
						tbWrenProg => wEnaProg,
						tbAddrInWProg => wAddrProg,
						tbDataInProg => dataProg,
						MEMdataOut => dataMemOut
					);

end behav;