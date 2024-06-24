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

    signal op_st_tb, op_ld_tb, op_mov_tb, op_done_tb, op_add_tb, op_sub_tb, op_jmp_tb, op_jc_tb, op_jnc_tb, op_and_tb, op_or_tb, op_xor_tb: std_logic := '0'; --NEW
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
    Control_inst : Control
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
            op_xor => op_xor_tb, --NEW
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
    rst_ena_proc: process
    begin
        -- Reset and enable
        rst_tb <= '1';
        ena_tb <= '0';
        wait for clk_period*2;
        rst_tb <= '0';
        ena_tb <= '1';
        wait for 9900 ns;
    end process;

    Stimulus_proc: process(clk_tb,rst_tb,ena_tb)
        variable state : integer := 0;
    begin
        if (rst_tb = '1') then -- state_rst
            nFlag_tb <= '0';
            zFlag_tb <= '0';
            cFlag_tb <= '0';
            op_st_tb <= '0';
            op_ld_tb <= '0';
            op_mov_tb <= '0';
            op_done_tb <= '0';
            op_add_tb <= '0';
            op_sub_tb <= '0';
            op_jmp_tb <= '0';
            op_jc_tb <= '0';
            op_and_tb <= '0';
            op_or_tb <= '0';
            op_xor_tb <= '0';
            op_jnc_tb <= '0';  
            state := 0; 
        elsif (clk_tb'event and clk_tb = '1') then
            case state is
                when 0 => -- state_fetch
                    state := 1; 
                    op_add_tb <= '1'; -- goto add - is 3 cycles 
                when 1 to 3 => -- add_op
                    state := state + 1; 
                when 4 => -- state_fetch
                    state := 5; 
                    op_add_tb <= '0';
                    op_sub_tb <= '1'; -- goto sub - is 3 cycles
                when 5 to 7 => -- sub_op
                    state := state + 1; 
                when 8 => -- state_fetch
                    state := 9; 
                    op_sub_tb <= '0';
                    op_and_tb <= '1'; -- goto and - is 3 cycles
                when 9 to 11 => -- and_op
                    state := state + 1; 
                when 12 => -- state_fetch
                    state := 13; 
                    op_and_tb <= '0';
                    op_or_tb <= '1'; -- goto or - is 3 cycles
                when 13 to 15 => -- or_op
                    state := state + 1;
                when 16 => -- state_fetch
                    state := 17; 
                    op_or_tb <= '0';
                    op_xor_tb <= '1'; -- goto xor - is 3 cycles
                when 17 to 19 => -- xor_op
                    state := state + 1;
                when 20 => -- state_fetch
                    state := 21; 
                    op_xor_tb <= '0';
                    op_jmp_tb <= '1'; -- goto jmp - is 1 cycle
                when 21 =>
                    state := state + 1;
                when 22 => -- state_fetch
                    state := 23; 
                    op_jmp_tb <= '0';
                    op_jc_tb <= '1'; -- goto jc - is 1 cycle
                when 23 =>
                    state := state + 1;
                when 24 => -- state_fetch
                    state := 25; 
                    op_jc_tb <= '0';
                    op_jnc_tb <= '1'; -- goto jnc - is 1 cycle
                when 25 =>
                    state := state + 1;
                when 26 => -- state_fetch
                    state := 27; 
                    op_jnc_tb <= '0';
                    op_jc_tb <= '1'; -- goto jc - is 1 cycle
                    cFlag_tb <= '1';
                when 27 =>
                    state := state + 1;
                    cFlag_tb <= '0'; 
                when 28 => -- state_fetch
                    state := 29; 
                    op_jc_tb <= '0';
                    op_jnc_tb <= '1'; -- goto jnc - is 1 cycle
                when 29 =>
                    state := state + 1; 
                when 30 => -- state_fetch
                    state := 31; 
                    op_jnc_tb <= '0';
                    op_mov_tb <= '1'; -- goto mov - is 1 cycle
                    cFlag_tb <= '1';
                when 31 =>
                    state := state + 1;
                    cFlag_tb <= '0'; 
                when 32 => -- state_fetch
                    state := 33; 
                    op_mov_tb <= '0';
                    op_ld_tb <= '1'; -- goto ld - is 4 cycles
                when 33 to 36 => -- ld_op
                    state := state + 1;
                when 37 => -- state_fetch
                    state := 38; 
                    op_ld_tb <= '0';
                    op_st_tb <= '1'; -- goto st - is 4 cycles
                when 38 to 41 => -- st_op
                    state := state + 1;
                when 42 => -- state_fetch
                    state := 43; 
                    op_st_tb <= '0';
                    op_done_tb <= '1'; -- goto done - is 1 cycle
                when 43 => -- state_fetch
                    state := 0; 
                    op_done_tb <= '0';
                when others =>
                    state := 0;
            end case;
        end if;
    end process;

end behavior;