LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

ENTITY tb_addsub IS
	GENERIC (n : INTEGER := 8);
end tb_addsub;

ARCHITECTURE rtl OF tb_addsub IS

-- - Signal Declaration 
	SIGNAL a, b, result : STD_LOGIC_VECTOR(n-1 downto 0);
	SIGNAL sc, carry_o : STD_LOGIC;
-- - Component Testbench
	COMPONENT AdderSub
	GENERIC (n : INTEGER);
	PORT (x, y: IN std_logic_vector(n-1 downto 0);
            sub_cont: IN std_logic;
            res: OUT std_logic_vector(n-1 downto 0);
			c_out: OUT std_logic);
	END COMPONENT;

BEGIN
-- Initiating port map
	tester: AdderSub
		GENERIC MAP (n => n)
	        PORT MAP (
		x => a, 
		y => b, 
		sub_cont => sc, 
		res => result,
		c_out => carry_o 
	);

	-- Test process
	testbench : PROCESS
	BEGIN
	-- Start of stimulus section - Adder / Subtractor Test
		-- result = 30 + 50
		a <= "11001101"; -- a = 50
		b <= "00000000"; -- b = 0
		sc <= '1' ; -- sub
		WAIT FOR 50 ns; -- Get answer
		-- result = 30 + 50
		a <= "11010111"; -- a = 50
		b <= "00000000"; -- b = 30
		sc <= '1' ; -- Adder
		WAIT FOR 50 ns; -- Get answer

		-- result = (-11) + (-93)
		a <= "10100011"; -- a = -93
		b <= "11110101"; -- b = -11
		sc <= '0' ; -- Adder
		WAIT FOR 50 ns; -- Get answer
		-- result = 131 - 24
		a <= "00011000"; -- a = 24
		b <= "01100101"; -- b = 131
		sc <= '1'; -- result = Y-X
		WAIT FOR 50 ns;

		-- result = 254 + 2 (carryout check)
		a <= "11111110"; -- a = 254
		b <= "00000010"; -- b = 2
		sc <= '0'; -- result = Y+X
		WAIT FOR 50 ns;

		-- result = 254 + (-2) (carryout check)
		a <= "11111110"; -- a = 254
		b <= "11111110"; -- b = -2
		sc <= '0'; -- result = Y+X
		WAIT FOR 50 ns;

		WAIT;
	END PROCESS testbench;
END rtl;