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
    constant clk_period : time := 100 ns;

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

    -- rst process
    rst_proc: process
    begin
        rst <= '1';
        wait for clk_period; 
        rst <= '0';
        wait for 9900 ns;
    end process;

    stim_proc : process(clk,rst)
        variable WriteDataState : integer := 0;
        variable progAddr : STD_LOGIC_Vector(AMwidth-1 DOWNTO 0) := (others => '0');
        variable progOPCODE : STD_LOGIC_Vector(3 DOWNTO 0) := (others => '0');
        
    begin
        if (rst = '1') then
            Mem_wr <= '0';
            Mem_out <= '0';
            Mem_in <= '0';
            Cout <= '0';
            Cin <= '0';
            Ain <= '0';
            RFin <= '0';
            RFout <= '0';
            IRin <= '0';
            PCin <= '1';
            Imm1_in <= '0';
            Imm2_in <= '0';
            OPC <= "0000";
            RFaddr <= "00";
            PCsel <= "00";
            tbDataInProg <= (others => '0');
            tbWrenProg <= '0';
            tbAddrInWProg <= (others => '0');
            tbDataIn <= (others => '0');
            tbWren <= '0';
            tbActive <= '0';
            tbAddrInW <= (others => '0');
            tbAddrInR <= (others => '0');
        elsif (clk'event and clk = '1') then
            if (WriteDataState < 15) then --write to program phase
                PCin <= '0';
                tbWrenProg <= '1';
                tbAddrInWProg <= progAddr;
                progAddr := progAddr + 1;
                tbDataInProg(Dwidth-1 DOWNTO Dwidth-4) <= progOPCODE;
                progOPCODE := progOPCODE + 1;
                tbDataInProg(Dwidth-5 DOWNTO 0) <= (others => '0');
                WriteDataState := WriteDataState + 1;
            elsif (WriteDataState < 35) then --see decoded opcodes phase
                    WriteDataState := WriteDataState + 1;
                    tbWrenProg <= '0';
                    IRin <= '1';
                    PCin <= '1';
                    PCsel <= "10";
            else
                PCin <= '0'; IRin <= '0'; PCsel <= "00";
                --assert false report "Abort and STOP = you after 30" severity failure;
            end if;
        end if;
    end process;
    

end behav;