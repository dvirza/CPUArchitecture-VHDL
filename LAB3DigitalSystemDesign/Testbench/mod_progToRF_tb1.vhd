library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity tb_progToRF is
end tb_progToRF;

architecture behavior of tb_progToRF is

    -- Component Declaration for the Unit Under Test (UUT)
    component progToRF
    generic( Dwidth: integer := 16;
             Awidth: integer := 6;
             opwidth: integer := 4);
    port(
        clk, rst, tbWren, pcin, tbActive, IRin, RFin: in std_logic;
        pcsel : in std_logic_vector(1 downto 0);
        RFaddr: in std_logic_vector(1 downto 0);
        tbAddrIn : in std_logic_vector(Awidth-1 downto 0);
        tbDataIn : in std_logic_vector (Dwidth-1 downto 0);

        RFinFromBus : in std_logic_vector(Dwidth-1 downto 0);

        RFoutToBus : out std_logic_vector(Dwidth-1 downto 0);
        op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor: out std_logic
    );
    end component;

    -- Testbench signals
    signal clk_tb, rst_tb, tbWren_tb, pcin_tb, tbActive_tb, IRin_tb, RFin_tb: std_logic := '0';
    signal pcsel_tb : std_logic_vector(1 downto 0) := "00";
    signal RFaddr_tb : std_logic_vector(1 downto 0) := "00";
    signal tbAddrIn_tb : std_logic_vector(5 downto 0) := (others => '0');
    signal tbDataIn_tb : std_logic_vector(15 downto 0) := (others => '0');
    signal RFinFromBus_tb : std_logic_vector(15 downto 0) := (others => '0');

    signal RFoutToBus_tb : std_logic_vector(15 downto 0);
    signal op_st_tb, op_ld_tb, op_mov_tb, op_done_tb, op_add_tb, op_sub_tb, op_jmp_tb, op_jc_tb, op_jnc_tb, op_and_tb, op_or_tb, op_xor_tb: std_logic;

    -- Clock generation
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: progToRF
        generic map (
            Dwidth => 16,
            Awidth => 6,
            opwidth => 4
        )
        port map (
            clk => clk_tb,
            rst => rst_tb,
            tbWren => tbWren_tb,
            pcin => pcin_tb,
            tbActive => tbActive_tb,
            IRin => IRin_tb,
            RFin => RFin_tb,
            pcsel => pcsel_tb,
            RFaddr => RFaddr_tb,
            tbAddrIn => tbAddrIn_tb,
            tbDataIn => tbDataIn_tb,
            RFinFromBus => RFinFromBus_tb,
            RFoutToBus => RFoutToBus_tb,
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
            op_xor => op_xor_tb
        );

    -- Clock process
    clk_process : process
    begin
        clk_tb <= '0';
        wait for clk_period / 2;
        clk_tb <= '1';
        wait for clk_period / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset
        rst_tb <= '1';
        wait for clk_period * 2;
        rst_tb <= '0';

        -- Test writing to program memory
        tbWren_tb <= '1';
        tbAddrIn_tb <= "000001";
        tbDataIn_tb <= "0000000000001010"; -- Example data
        wait for clk_period * 2;
        tbWren_tb <= '0';

        -- Test instruction register load
        IRin_tb <= '1';
        wait for clk_period;
        IRin_tb <= '0';

        -- Test register file input
        RFin_tb <= '1';
        RFinFromBus_tb <= "0000000000011111"; -- Example bus data
        wait for clk_period * 2;
        RFin_tb <= '0';

        wait;
    end process;

end behavior;
