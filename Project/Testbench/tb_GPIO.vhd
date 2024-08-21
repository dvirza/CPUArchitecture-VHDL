LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;

entity tb_GPIOwrap is
end tb_GPIOwrap;

architecture tb_GPIOwrap of tb_GPIOwrap is

    signal MemWrite, MemRead: STD_LOGIC := '0';
    signal Address: STD_LOGIC_VECTOR(5 downto 0) := "000000";
    signal Data: STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000";
    signal SW: STD_LOGIC_VECTOR (7 DOWNTO 0) := "11111111";
    signal HEX0, HEX1, HEX2, HEX3, HEX4, HEX5: STD_LOGIC_VECTOR (6 DOWNTO 0); 
    signal LEDs: STD_LOGIC_VECTOR (7 DOWNTO 0);

begin

    GPIOwrap_inst : GPIO port map(  i_memWrite => MemWrite,
                                    i_memRead => MemRead,
                                    i_addr => Address,
                                    io_data => Data,
                                    i_swport => SW,
                                    o_hex0 => HEX0,
                                    o_hex1 => HEX1,
                                    o_hex2 => HEX2,
                                    o_hex3 => HEX3,
                                    o_hex4 => HEX4,
                                    o_hex5 => HEX5,
                                    o_leds => LEDs );
    
    top_stim : process
    begin
        for i in 0 to 63 loop
            MemWrite <= '1';
            wait for 50 ns;
            MemWrite <= '0';
            wait for 50 ns;
            Data <= Data + 1;
            Address <= Address + 1;
            wait for 50 ns;
        end loop;
        --Data <= "00000000";
        Address <= "000000";
        Data <= (others => 'Z');
        wait for 50 ns;
        for i in 0 to 63 loop
            MemRead <= '1';
            wait for 50 ns;
            MemRead <= '0';
            wait for 50 ns;
            Address <= Address + 1;
            wait for 50 ns;
        end loop;
    end process;

end tb_GPIOwrap;