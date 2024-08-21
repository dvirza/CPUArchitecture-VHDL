LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;

entity tb_hex is
end tb_hex;

architecture tb_hex of tb_hex is

    signal CS,A0: STD_LOGIC := '0';
    signal MemWrite, MemRead: STD_LOGIC := '0';
    signal Data: STD_LOGIC_VECTOR (7 DOWNTO 0) := "00000000";
    signal HEX0 : STD_LOGIC_VECTOR (7 DOWNTO 0) := (others => '0'); 


begin

    hex_inst : hexled port map(  i_control => CS,
                                i_A0 => A0,
                                i_memRead => MemRead,
                                i_memWrite => MemWrite,
                                io_data => Data,
                                o_outToHEX => HEX0 );

    
    top_stim : process
    begin
        CS <= '1';
        A0 <= '1';
        for i in 0 to 63 loop
            MemWrite <= '1';
            wait for 50 ns;
            MemWrite <= '0';
            wait for 50 ns;
            Data <= Data + 1;
            wait for 50 ns;
        end loop;
        --Data <= "00000000";
        Data <= (others => 'Z');
        wait for 50 ns;
        for i in 0 to 63 loop
            MemRead <= '1';
            wait for 50 ns;
            MemRead <= '0';
            wait for 50 ns;
            wait for 50 ns;
        end loop;
    end process;

end tb_hex;