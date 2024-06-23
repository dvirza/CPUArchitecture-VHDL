library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;
------------------------------
entity tb_Datapath is
    generic( Dwidth: integer:=16;
		 AMwidth: integer:=6;
		 ARwidth: integer:=4
		);
end tb_Datapath;
------------------------------
architecture behav of tb_Datapath is

    -- Inputs
    signal clk : std_logic := '0';
    signal rst : std_logic := '0';
    signal Mem_wr : std_logic := '0';
    signal Mem_out : std_logic := '0';
    signal Mem_in : std_logic := '0';
    signal Cout : std_logic := '0';
    signal Cin : std_logic := '0';
    signal Ain : std_logic := '0';
    signal RFin : std_logic := '0';
    signal RFout : std_logic := '0';
    signal IRin : std_logic := '0';
    signal PCin : std_logic := '0';
    signal Imm1_in : std_logic := '0';
    signal Imm2_in : std_logic := '0';
    signal OPC : std_logic_vector(ARwidth-1 downto 0) := (others => '0');
    signal RFaddr : std_logic_vector(1 downto 0) := (others => '0');
    signal PCsel : std_logic_vector(1 downto 0) := (others => '0');
    signal tbWren : std_logic := '0';
    signal tbActive : std_logic := '0';
    signal tbDataIn : std_logic_vector(Dwidth-1 downto 0) := (others => '0');
    signal tbAddrInW : std_logic_vector(AMwidth-1 downto 0) := (others => '0');
    signal tbAddrInR : std_logic_vector(AMwidth-1 downto 0) := (others => '0');
    signal tbWrenProg : std_logic := '0';
    signal tbAddrInWProg : std_logic_vector(AMwidth-1 downto 0) := (others => '0');
    signal tbDataInProg : std_logic_vector(Dwidth-1 downto 0) := (others => '0');

    -- Outputs
    signal op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor : std_logic;
    signal cFlag, nFlag, zFlag : std_logic;
    signal MEMdataOut : std_logic_vector(Dwidth-1 downto 0);

    -- Clock period definitions
    constant clk_period : time := 50 ns;

    --checking
    signal opc_start : std_logic_vector(ARwidth-1 downto 0) := (others => '0');
    signal addrProg_start : std_logic_vector(ARwidth-1 downto 0) := (others => '0');

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Datapath
    generic map (
        ARwidth => ARwidth,
        Dwidth => Dwidth,
        AMwidth => AMwidth
    )
    port map (
        clk => clk,
        rst => rst,
        Mem_wr => Mem_wr,
        Mem_out => Mem_out,
        Mem_in => Mem_in,
        Cout => Cout,
        Cin => Cin,
        Ain => Ain,
        RFin => RFin,
        RFout => RFout,
        IRin => IRin,
        PCin => PCin,
        Imm1_in => Imm1_in,
        Imm2_in => Imm2_in,
        OPC => OPC,
        RFaddr => RFaddr,
        PCsel => PCsel,
        tbWren => tbWren,
        tbActive => tbActive,
        tbDataIn => tbDataIn,
        tbAddrInW => tbAddrInW,
        tbAddrInR => tbAddrInR,
        tbWrenProg => tbWrenProg,
        tbAddrInWProg => tbAddrInWProg,
        tbDataInProg => tbDataInProg,
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
        op_xor => op_xor,
        cFlag => cFlag,
        nFlag => nFlag,
        zFlag => zFlag,
        MEMdataOut => MEMdataOut
    );

    -- Clock process definitions
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Hold reset state for 10 ns.
        wait for 10 ns;  
        rst <= '1';
        wait for 50 ns;
        rst <= '0';

    gen_pc : process
    begin
        PCsel <= "10";
        PCin <= '1';
        wait for 50 ns;
        PCin <= '0';
    end process;
        
    load_opc : process
        tbDataInProg <= opc_start;
        tbActive <= '1';
        tbAddrInWProg <= addrProg_start;
        tbWrenProg <= '1';
        wait for 45 ns;
        tbDataInProg <= opc_start + 1;
        tbAddrInWProg <= addrProg_start + 1;
        tbWrenProg <= '1';
        tbActive <= '1';
    end process;
        -- Insert stimulus here
        Mem_wr <= '0';
        Mem_out <= '0';
        Mem_in <= '0';
        Cout <= '0';
        Cin <= '0';
        Ain <= '0';
        RFin <= '0';
        RFout <= '0';
        IRin <= '0';
        PCin <= '0';
        Imm1_in <= '0';
        Imm2_in <= '0';
        OPC <= "0001";
        RFaddr <= "10";
        PCsel <= "10";
        tbWren <= '0';
        tbActive <= '1';
        tbDataIn <= x"FFFF";
        tbAddrInW <= "001000";
        tbAddrInR <= "001100";
        tbWrenProg <= '0';
        tbAddrInWProg <= "010000";
        tbDataInProg <= x"AAAA";
        
        wait for clk_period;
        
        -- finish simulation
        wait;
    end process;

end behav;