LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
USE work.aux_package.all;


ENTITY BTimer IS
	generic (   n : INTEGER; k : INTEGER );
    port (      i_MCLK, i_rst, i_valid      : IN std_logic;
                i_BTCTL                     : IN std_logic_vector (k-1 downto 0);
                i_BTCCR0, i_BTCCR1, i_BTCNT : IN std_logic_vector(n-1 downto 0);
                o_BTCNT                     : OUT std_logic_vector(n-1 downto 0);
                o_BTPWM                     : OUT std_logic;
                o_BTIFG                     : OUT std_logic );
END BTimer;


ARCHITECTURE dataflow OF BTimer IS

    signal BTControl_internal                                   : std_logic_vector(k-1 downto 0) := (others => '0');
    signal interruptFlag_internal,CLKtoTIMER_sync               : std_logic;
    signal BTOUTMD_internal, BTOUTEN_internal, BTHOLD_internal  : std_logic := '0';
    signal BTSSEL_internal                                      : std_logic_vector(1 downto 0) := (others => '0');
    signal BTIP_internal                                        : std_logic_vector(2 downto 0) := (others => '0');
    signal int_MCLK_2,int_MCLK_4,int_MCLK_8,CLKtoTIMER          : std_logic := '0';
    signal MCLK_2,MCLK_4,MCLK_8                                 : std_logic := '0';
    signal BTCNT_internal ,BTCNT_count_internal                 : std_logic_vector(n-1 downto 0) := (others => '0');
    signal pwmOUT_internal                                      : std_logic;
    signal Q0,Q3,Q7,Q11,Q15,Q19,Q23,Q25                         : std_logic;
    signal clk_divider,int_counter                              : unsigned(2 downto 0);

    
begin

    pwm_inst : PWM generic map (32) port map (  clk => i_MCLK,ena => BTOUTEN_internal,rst => i_rst,i_count => BTCNT_count_internal,
                                                x => i_BTCCR1,y => i_BTCCR0,workMode => BTOUTMD_internal,pwmOut => pwmOUT_internal  );

            -- clock divider section
    -- p_clk_divider: process(i_rst,i_MCLK)
    --     begin
    --         if(i_rst='1') then
    --             clk_divider   <= (others=>'0');
    --         elsif(rising_edge(i_MCLK)) then
    --             clk_divider   <= clk_divider + 1;
    --         end if;
    --     end process p_clk_divider;
    --         -- clock divider signals
    -- int_MCLK_2    <= clk_divider(0);
    -- int_MCLK_4    <= clk_divider(1);
    -- int_MCLK_8    <= clk_divider(2);


            -- takes the control register for internal use
    BTControl_internal <= i_BTCTL; 

    -- process(i_rst,i_MCLK)
    -- begin
    --     if(i_rst='1') then
    --         MCLK_2   <= '0';
    --     elsif (i_MCLK'event and i_MCLK = '1') then
    --         if int_MCLK_2 = '1' then
    --             MCLK_2 <= '1';
    --         end if; 
    --     elsif (i_MCLK'event and i_MCLK = '0') then
    --         MCLK_2 <= '0';
    --     end if;
    -- end process;

    -- process(i_rst,MCLK_2)
    -- begin
    --     if(i_rst='1') then
    --         MCLK_4   <= '0';
    --     elsif (MCLK_2'event and MCLK_2 = '1') then
    --         if int_MCLK_4 = '1' then
    --             MCLK_4 <= '1';
    --         end if; 
    --     elsif (MCLK_2'event and MCLK_2 = '0') then
    --         MCLK_4 <= '0';
    --     end if;
    -- end process;

    -- process(i_rst,MCLK_4)
    -- begin
    --     if(i_rst='1') then
    --         MCLK_8   <= '0';
    --     elsif (MCLK_4'event and MCLK_4 = '1') then
    --         if int_MCLK_8 = '1' then
    --             MCLK_8 <= '1';
    --         end if; 
    --     elsif (MCLK_4'event and MCLK_4 = '0') then
    --         MCLK_8 <= '0';
    --     end if;
    -- end process;


    process(i_MCLK,i_rst)
        begin
            if i_rst = '1' then
                int_counter <= (others => '0');
            elsif rising_edge(i_MCLK) then
                int_counter <= int_counter + 1;
            end if;
    end process;

            -- connect wires from control register to control bits (SPEC)
    BTOUTMD_internal <= BTControl_internal(7);
    BTOUTEN_internal <= BTControl_internal(6);
    BTHOLD_internal <= BTControl_internal(5);
    BTSSEL_internal <= BTControl_internal(4 downto 3);
    BTIP_internal <= BTControl_internal(2 downto 0);

            --BTCNT implementation
    -- process(i_MCLK,i_rst)
    --     begin
    --     if i_rst = '1' then
    --         BTCNT_count_internal <= (others => '0');
    --     elsif rising_edge(i_MCLK) then
    --         if (i_valid = '1') then
    --             BTCNT_count_internal <= i_BTCNT;
    --         elsif CLKtoTIMER_sync = '1' and BTHOLD_internal = '0' then     
    --             if (BTCNT_count_internal < i_BTCCR0) then
    --                 BTCNT_count_internal <= std_logic_vector(unsigned(BTCNT_count_internal) + 1);
    --             else
    --                 BTCNT_count_internal <= (others => '0');
    --             end if;
    --         end if;
    --     end if;
    -- end process;
    -- CLKtoTIMER <=   i_MCLK when BTSSEL_internal = "00" else
    --     MCLK_2 when BTSSEL_internal = "01" else
    --     MCLK_4 when BTSSEL_internal = "10" else
    --     MCLK_8 when BTSSEL_internal = "11";
    process(i_MCLK,i_rst)
        begin
        if i_rst = '1' then
            BTCNT_count_internal <= (others => '0');
        elsif rising_edge(i_MCLK) then
            if (i_valid = '1') then
                BTCNT_count_internal <= i_BTCNT;
            elsif BTHOLD_internal = '0' then
                if BTSSEL_internal = "00" then     
                    if (BTCNT_count_internal < i_BTCCR0) then
                        BTCNT_count_internal <= std_logic_vector(unsigned(BTCNT_count_internal) + 1);
                    else
                        BTCNT_count_internal <= (others => '0');
                    end if;
                elsif BTSSEL_internal = "01" and (int_counter = "000" or int_counter = "010" or int_counter = "100" or int_counter = "110") then
                    if (BTCNT_count_internal < i_BTCCR0) then
                        BTCNT_count_internal <= std_logic_vector(unsigned(BTCNT_count_internal) + 1);
                    else
                        BTCNT_count_internal <= (others => '0');
                    end if;
                elsif BTSSEL_internal = "10" and (int_counter = "000" or int_counter = "100") then
                    if (BTCNT_count_internal < i_BTCCR0) then
                        BTCNT_count_internal <= std_logic_vector(unsigned(BTCNT_count_internal) + 1);
                    else
                        BTCNT_count_internal <= (others => '0');
                    end if;
                elsif BTSSEL_internal = "11" and (int_counter = "000") then
                    if (BTCNT_count_internal < i_BTCCR0) then
                        BTCNT_count_internal <= std_logic_vector(unsigned(BTCNT_count_internal) + 1);
                    else
                        BTCNT_count_internal <= (others => '0');
                    end if;
                end if;
            end if;
        end if;
    end process;

            -- assign the mux for BTIP and IFG
    Q0 <= BTCNT_count_internal(0); Q3 <= BTCNT_count_internal(3); Q7 <= BTCNT_count_internal(7);
    Q11 <= BTCNT_count_internal(11); Q15 <= BTCNT_count_internal(15); Q19 <= BTCNT_count_internal(19);
    Q23 <= BTCNT_count_internal(23); Q25 <= BTCNT_count_internal(25);

            -- IFG MUX
    with BTIP_internal select
            interruptFlag_internal <=   Q0 when "000",
                                        Q3 when "001",
                                        Q7 when "010",
                                        Q11 when "011",
                                        Q15 when "100",
                                        Q19 when "101",
                                        Q23 when "110",
                                        Q25 when "111",
                                        '0' when others;

            -- connect the outputs
    o_BTPWM <= pwmOUT_internal when BTOUTEN_internal = '1' else '0';
    o_BTIFG <= interruptFlag_internal;
    o_BTCNT <= BTCNT_count_internal;

end dataflow;