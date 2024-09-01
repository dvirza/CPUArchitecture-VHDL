LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY mips_intr IS
    PORT    (   i_clk, i_rst                : in    std_logic;
                i_intr                      : in    std_logic;
                i_instruction               : in    std_logic_vector(31 downto 0);
                i_PC_plus_4                 : in    std_logic_vector(11 downto 0);
                o_save_to_pc                : out   std_logic;
                o_inst_from_intr_valid      : out   std_logic;
                o_pc_save                   : out   std_logic_vector(11 downto 0);
                o_inst_from_intr            : out   std_logic_vector(31 downto 0);
                o_inta,o_gie_off,o_gie_on   : out   std_logic );
END mips_intr;

ARCHITECTURE dataflow OF mips_intr IS

    type stage is (stage0, stage1, stage2, stage3, stage4);
    signal nx_stage, pr_stage : stage;
    signal int_pc_save : std_logic_vector(11 downto 0);
    signal int_reti : std_logic; 

begin
    -- FSM 
    process (i_clk)
        begin
            if (rising_edge(i_clk)) then
                if (i_rst = '1') then
                    pr_stage <= stage0;
                else
                    pr_stage <= nx_stage;
                end if;
            end if;
        end process;

        process (i_clk)
        begin
            if (rising_edge(i_clk)) then
                if (i_rst = '1') then
                    int_pc_save <= (others => '0');
                elsif (i_intr = '1' and pr_stage = stage0) then
                    int_pc_save <= i_PC_plus_4;
                end if;
            end if;
        end process;

    process(pr_stage, i_intr,int_reti)
        begin
            case pr_stage is
                when stage0 =>
                    if i_intr = '1' then
                        nx_stage <= stage1;
                    else
                        nx_stage <= stage0;
                    end if;
                when stage1 =>
                    nx_stage <= stage2;
                when stage2 =>
                    nx_stage <= stage3;
                when stage3 =>
                    nx_stage <= stage4;
                when stage4 =>
                    if int_reti = '1' then
                        nx_stage <= stage0;
                    else
                        nx_stage <= stage4;
                    end if;
            end case;
            

        end process;


    o_gie_off <= '1' when pr_stage = stage0 and i_intr = '1' else '0';
    o_gie_on <= '1' when pr_stage = stage4 and int_reti = '1' else '0';
    o_inst_from_intr <= X"8C1B083E" when pr_stage = stage1 else		-- lw $k1,TYPE
			            X"8F7B0000" when pr_stage = stage2 else			-- lw $k1,0($k1)
			            X"03600008" when pr_stage = stage3 else X"00000000";	-- jr $k1

    o_inst_from_intr_valid <= '1' when pr_stage = stage1 OR pr_stage = stage2 OR pr_stage = stage3 else '0';
    o_inta <= '1' when pr_stage = stage1 else '0';
    o_pc_save <= int_pc_save; -- pc back output

    o_save_to_pc <= '1' when pr_stage = stage3 else '0';
    int_reti <= '1' when i_instruction = X"03600008" else '0';
end dataflow;