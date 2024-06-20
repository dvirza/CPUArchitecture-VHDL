LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_packedge.all;


ENTITY tb_fa IS
	PORT (a ,b , cin : IN STD_LOGIC;
		  r , cout : OUT STD_LOGIC);
end tb_fa;

architecture rtl of tb_ver1 is
	component FA
	port (a, b, cin: IN STD_LOGIC;
			s, cout: OUT std_logic);
	end component;
	signal a, b, cin, s, cout : std_logic;
	begin
		tester: FA port map (
			a=>a, b=>b, cin=>cin, s=>s, cout=>cout
		);
		testbench : process
		begin
			----- start of stimulus section - FA test
			b <= '0', '1' after 50 ns, '0' after 100 ns, '1' after 150 ns, '0' after 200 ns, '1' after 250 ns, '0' after 300 ns, '1' after 350 ns, '0' after 400 ns;
			a <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns, '0' after 400 ns;
			cin <= '0', '1' after 200 ns;

			wait;
		end process testbench;
	end rtl;