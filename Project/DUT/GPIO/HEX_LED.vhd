LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
USE work.aux_package.all;

ENTITY hexled IS
	GENERIC (  n : INTEGER );
	PORT (  i_control, i_A0 : in std_logic;
            i_memRead, i_memWrite : in std_logic;
            io_data : inout std_logic(7 downto 0);
            o_outToHEX : buffer std_logic_vector (7 downto 0) );
END hexled;

ARCHITECTURE dataflow OF hexled IS

    signal enable_latch, enable_bus : std_logic;
    signal int_data : std_logic_vector(7 downto 0);

BEGIN

    BidirPin_inst : BidirPin generic map (width => 8) port map (Dout => o_outToHEX, en => enable_bus,Din => int_data,IOpin => io_data);

    --enable logic for bus and latch
    enable_latch <= i_control and i_A0 and i_memWrite;
    enable_bus <= i_control and i_memRead and i_A0;

    -- Latch
    process(enable)
        if enable_latch = '1' then
            o_outToHEX <= int_data;
        end if;
    end process;

END dataflow;