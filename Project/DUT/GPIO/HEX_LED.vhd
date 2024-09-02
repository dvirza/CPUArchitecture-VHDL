LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
USE work.aux_package.all;

ENTITY hexled IS
	PORT (  i_control, i_A0, i_clk,i_rst : in std_logic;
            i_memRead, i_memWrite : in std_logic;
            io_data : inout std_logic_vector(31 downto 0);
            o_outToHEX : out std_logic_vector (7 downto 0) );
END hexled;

ARCHITECTURE dataflow OF hexled IS

    signal enable_latch, enable_bus : std_logic;
    signal int_data : std_logic_vector(31 downto 0);
    signal out_to_bus : std_logic_vector(31 downto 0);

BEGIN

    BidirPin_inst : BidirPin generic map (width => 32) port map (Dout => out_to_bus, en => enable_bus,Din => int_data,IOpin => io_data);

        -- enable logic for bus and latch
    enable_latch <= i_control and i_A0 and i_memWrite;
    enable_bus <= i_control and i_memRead and i_A0;


    o_outToHEX <= out_to_bus(7 downto 0);

        -- Latch
    process(i_clk)
    begin
        if i_rst = '1' then
            out_to_bus <= (others => '0');
        elsif rising_edge(i_clk) then 
            if enable_latch = '1' then
                out_to_bus <= int_data;
            end if;
        end if;
    end process;

END dataflow;