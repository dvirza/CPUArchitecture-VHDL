LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;

entity tb_mips is
end tb_mips;


architecture tb of tb_mips is
    -- ModuleWare signal declarations(v1.9) for instance 'U_0' of 'clk'
    SIGNAL mw_U_0clk : std_logic;
    SIGNAL mw_U_0disable_clk : boolean := FALSE;

    -- ModuleWare signal declarations(v1.9) for instance 'U_1' of 'pulse'
    SIGNAL mw_U_1pulse : std_logic :='0';

    SIGNAL clock, reset : std_logic := '0';
    SIGNAL Memwrite_out, memread_out    : STD_LOGIC := '0';
    SIGNAL INTR,INTA        : STD_LOGIC := '0';
    SIGNAL addr             : STD_LOGIC_VECTOR( 11 DOWNTO 0 );
    SIGNAL int_bus              : STD_LOGIC_VECTOR(31 downto 0);

begin

    U_0 : MIPSenv generic map (model_sim => true ,addr_size => 9) port map (i_clock => clock,
                            i_reset => reset,
                            i_intr => INTR,
                            o_inta => INTA,
                            o_memwrite => Memwrite_out,
                            o_memread => memread_out,
                            o_addr => addr,
                            io_bus => int_bus);

    u_0clk_proc: PROCESS
    BEGIN
        WHILE NOT mw_U_0disable_clk LOOP
            mw_U_0clk <= '0', '1' AFTER 50 ns;
            WAIT FOR 100 ns;
        END LOOP;
        WAIT;
    END PROCESS u_0clk_proc;
    mw_U_0disable_clk <= TRUE AFTER 3000 ns;
    clock <= mw_U_0clk;
    
    -- ModuleWare code(v1.9) for instance 'U_1' of 'pulse'
    reset <= mw_U_1pulse;
    u_1pulse_proc: PROCESS
    BEGIN
        mw_U_1pulse <= 
            '0',
            '1' AFTER 20 ns,
            '0' AFTER 120 ns;
        WAIT;
        END PROCESS u_1pulse_proc;
end tb;