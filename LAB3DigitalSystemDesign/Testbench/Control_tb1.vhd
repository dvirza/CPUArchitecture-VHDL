library ieee;
use ieee.std_logic_1164.all;
use work.aux_package.all;

entity tb_Control is
    generic( Dwidth: integer:=16;
				Awidth: integer:=4);
end tb_Control;

architecture behavior of tb_Control is

    -- Testbench signals
    signal clk_tb, rst_tb, ena_tb: std_logic := '0';
    signal done_tb: std_logic;

    signal op_st_tb, op_ld_tb, op_mov_tb, op_done_tb, op_add_tb, op_sub_tb, op_jmp_tb, op_jc_tb, op_jnc_tb, op_and_tb, op_or_tb, op_xor_tb: std_logic := '0';
    signal cFlag_tb, nFlag_tb, zFlag_tb: std_logic := '0';

    signal Mem_wr_tb, Mem_out_tb, Mem_in_tb: std_logic;
    signal Cin_tb, Cout_tb: std_logic;
    signal Ain_tb: std_logic;
    signal RFin_tb, RFout_tb: std_logic;
    signal RFaddr_tb: std_logic_vector(1 downto 0);
    signal IRin_tb: std_logic;
    signal PCin_tb: std_logic;
    signal PCsel_tb: std_logic_vector(1 downto 0);
    signal Imm1_in_tb, Imm2_in_tb: std_logic;
    signal OPC_tb: std_logic_vector(Awidth-1 downto 0);

    -- Clock generation
    constant clk_period : time := 100 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Control
        generic map (
            Dwidth => 16,
            Awidth => 4
        )
        port map (
            clk => clk_tb,
            rst => rst_tb,
            ena => ena_tb,
            done => done_tb,

            op_st => op_st_tb,
            op_ld => op_ld_tb,
            op_mov => op_mov_tb,
            op_done => op_done_tb,
            op_add => op_add_tb,
            op_sub => op_sub_tb,
            op_jmp => op_jmp_tb,
            op_jc => op_jc_tb,
            op_jnc => op_jnc_tb,
            op_and => op_and_tb,
            op_or => op_or_tb,
            op_xor => op_xor_tb,
            cFlag => cFlag_tb,
            nFlag => nFlag_tb,
            zFlag => zFlag_tb,

            Mem_wr => Mem_wr_tb,
            Mem_out => Mem_out_tb,
            Mem_in => Mem_in_tb,
            Cin => Cin_tb,
            Cout => Cout_tb,
            Ain => Ain_tb,
            RFin => RFin_tb,
            RFout => RFout_tb,
            RFaddr => RFaddr_tb,
            IRin => IRin_tb,
            PCin => PCin_tb,
            PCsel => PCsel_tb,
            Imm1_in => Imm1_in_tb,
            Imm2_in => Imm2_in_tb,
            OPC => OPC_tb
        );

    -- Clock process
    clk_process :process
    begin
        clk_tb <= '0';
        wait for clk_period/2;
        clk_tb <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset and enable
        rst_tb <= '1';
        ena_tb <= '0';
        wait for clk_period*2;
        rst_tb <= '0';
        ena_tb <= '1';

        -- Test sequence
        -- Test fetch state
        wait for clk_period*2;

        -- Test R-type instruction (e.g., op_add)
        op_add_tb <= '1';
        wait for clk_period*2;
        op_add_tb <= '0';
        wait for clk_period*5;
        -- Test I-type instruction (e.g., op_ld)
        op_ld_tb <= '1';
        wait for clk_period*2;
        op_ld_tb <= '0';
        wait for clk_period*5;
                -- Test jump instruction (e.g., op_jmp)
        op_jmp_tb <= '1';
        wait for clk_period*2;
        op_jmp_tb <= '0';
        wait for clk_period*5;
        -- Add more test cases as needed
        

        -- Finish simulation
        wait;
    end process;

end behavior;