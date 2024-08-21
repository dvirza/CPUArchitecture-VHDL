LIBRARY ieee;
use IEEE.STD_LOGIC_1164.ALL;
USE work.aux_package.all;

ENTITY GPIO IS
	PORT    (   i_memRead, i_memWrite   : in    std_logic;
                i_addr      : in    std_logic_vector (5 downto 0);--<A11,A5,A4,A3,A2,A0>
                i_swport    : in    std_logic_vector(7 downto 0);
                o_hex0,o_hex1,o_hex2,o_hex3,o_hex4,o_hex5 : out std_logic_vector(6 downto 0);
                o_leds      : out   std_logic_vector(7 downto 0);
                io_data     : inout   std_logic_vector(7 downto 0) );
END GPIO;

ARCHITECTURE dataflow OF GPIO IS

    signal int_not_A0 : std_logic;
    signal int_addr, int_cs : std_logic_vector(4 downto 0);
    signal int_sw, int_io_data_in, int_io_data_out : std_logic_vector(7 downto 0);
    signal int_8hex0, int_8hex1, int_8hex2, int_8hex3, int_8hex4, int_8hex5,int_8hex6, int_LEDS : std_logic_vector (7 downto 0);
    --signal int_8hex6 : std_logic_vector (7 downto 0);

BEGIN

int_not_A0 <= not(i_addr(0)); --static <A0> not

HEX0_inst : hexled port map(i_control => int_cs(1),i_A0 => i_addr(0) ,i_memRead => i_memRead,i_memWrite => i_memWrite, io_data => io_data,o_outToHEX => int_8hex0 );
HEX1_inst : hexled port map(i_control => int_cs(1),i_A0 => int_not_A0 ,i_memRead => i_memRead,i_memWrite => i_memWrite, io_data => io_data,o_outToHEX => int_8hex1 );

HEX2_inst : hexled port map(i_control => int_cs(2),i_A0 => i_addr(0) ,i_memRead => i_memRead,i_memWrite => i_memWrite, io_data => io_data,o_outToHEX => int_8hex2 );
HEX3_inst : hexled port map(i_control => int_cs(2),i_A0 => int_not_A0 ,i_memRead => i_memRead,i_memWrite => i_memWrite, io_data => io_data,o_outToHEX => int_8hex3 );

HEX4_inst : hexled port map(i_control => int_cs(3),i_A0 => i_addr(0) ,i_memRead => i_memRead,i_memWrite => i_memWrite, io_data => io_data,o_outToHEX => int_8hex4 );
HEX5_inst : hexled port map(i_control => int_cs(3),i_A0 => int_not_A0 ,i_memRead => i_memRead,i_memWrite => i_memWrite, io_data => io_data,o_outToHEX => int_8hex5 );

LEDS_inst : hexled port map(i_control => int_cs(0),i_A0 => '1' ,i_memRead => i_memRead,i_memWrite => i_memWrite, io_data => io_data, o_outToHEX => int_LEDS);

GPIO_addr_decode_inst : addr_decoder port map (i_addrBits => int_addr, o_controlBits => int_cs);

SW_inst : sw_port port map (i_control=> int_cs(4),i_memRead => i_memRead,i_swport => int_sw,o_data => io_data);

hexdecode0_inst : hexdecode GENERIC map (4) port map (sw_i => int_8hex0(3 downto 0), hex_o1 => o_hex0);
hexdecode1_inst : hexdecode GENERIC map (4) port map (sw_i => int_8hex1(3 downto 0), hex_o1 => o_hex1);
hexdecode2_inst : hexdecode GENERIC map (4) port map (sw_i => int_8hex2(3 downto 0), hex_o1 => o_hex2);
hexdecode3_inst : hexdecode GENERIC map (4) port map (sw_i => int_8hex3(3 downto 0), hex_o1 => o_hex3);
hexdecode4_inst : hexdecode GENERIC map (4) port map (sw_i => int_8hex4(3 downto 0), hex_o1 => o_hex4);
hexdecode5_inst : hexdecode GENERIC map (4) port map (sw_i => int_8hex5(3 downto 0), hex_o1 => o_hex5);
--hexdecode6_inst : hexdecode GENERIC map (4) port map (sw_i => int_8hex6(3 downto 0), hex_o1 => o_hex6);


    int_sw <= i_swport; --input the switchs
    int_addr <= i_addr(5 downto 1); --takes 5 MSB from addr <A11,A5,A4,A3,A2>


END dataflow;