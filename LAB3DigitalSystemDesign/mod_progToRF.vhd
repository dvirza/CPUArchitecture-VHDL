library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;
--------------------------------------------------------------
entity progToRF is
generic( Dwidth: integer:=16;
		 Awidth: integer:=6;
		 opwidth:   integer:=4);
port(	clk, rst, tbWren, pcin, tbActive, IRin, RFin:        in std_logic;
        pcsel : in std_logic_vector(1 downto 0);
        RFaddr: in std_logic_vector(1 downto 0);
        tbAddrIn : in std_logic_vector(Awidth-1 downto 0);
        tbDataIn : in std_logic_vector (Dwidth-1 downto 0);

        RFinFromBus : in std_logic_vector(Dwidth-1 downto 0);

        RFoutToBus : out std_logic_vector(Dwidth-1 downto 0);
        op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor: out std_logic --NEW
);
end progToRF;

architecture behav of progToRF is

    signal internalDataIR : std_logic_vector(Dwidth-1 downto 0);
    signal internalDataIR8bit : std_logic_vector(7 downto 0);
    signal internalOPC : std_logic_vector(opwidth-1 downto 0);

begin
    progMEM_inst : mod_ProgMem
        generic map ( dept => 64,
                 Dwidth => Dwidth,
                 Awidth => Awidth)
        port map (
                    clk => clk,
                    rst => rst,
                    tbWren => tbWren,
                    pcin => pcin,
                    tbActive => tbActive,
                    pcsel => pcsel,
                    irinreg => internalDataIR8bit,
                    tbAddrIn => tbAddrIn,
                    tbDataIn => tbDataIn,
                    dataOut => internalDataIR
                );

    modRF_inst : mod_RF
            generic map (Dwidth => Dwidth,
                        Awidth => opwidth)
            port map (
                        clk => clk,
                        rst => rst,
                        IRin => IRin,
                        RFin => RFin,
                        dataInIR => internalDataIR,
                        dataInBUS => RFinFromBus,
                        RFaddr => RFaddr,
                        opcOut => internalOPC,
                        outData => RFoutToBus
            );

    opcDecode_inst : opcDecode
                    generic map (opwidth => opwidth)
                    port map (
                        clk => clk,
                        rst => rst,
                        opDataIn => internalOPC,
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


    internalDataIR8bit <= internalDataIR(7 downto 0); --Taking IR<7...0>
end behav;