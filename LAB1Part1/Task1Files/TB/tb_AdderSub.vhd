LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_packedge.all;


ENTITY tb_AdderSub IS
end tb_AdderSub;

ARCHITECTURE rtb OF tb_AdderSub IS

-- - Signal Declaration 
	SIGNAL a, b, result : STD_LOGIC_VECTOR(n-1 downto 0);
	sc, carry_o : STD_LOGIC;
-- - Component Testbench
	COMPONENT AdderSub
	PORT (x, y: IN std_logic_vector(n-1 downto 0);
            sub_cont: IN std_logic;
            res: OUT std_logic_vector(n-1 downto 0);
			c_out: OUT std_logic);
	END COMPONENT;

BEGIN
-- Initiating port map
	tester: AdderSub PORT MAP (
		x => a, 
		y => b, 
		ub_cont => sc, 
		res => result,
		c_out => carry_o 
	);
	-- Test process
	testbench : PROCESS
	BEGIN
	-- Start of stimulus section - Adder / Subtractor Test
		--Test1: result = 30 + 50
		a <= "00110010"; -- a = 50
		b <= "00011110"; -- b = 30
		sc <= "0" ; -- Adder
		WAIT 10 ns; -- Get answer

		--Test2: result = (-11) + (-93)
		a <= "10100011"; -- a = -93
		b <= "11110101"; -- b = -11
		sc <= "0" ; -- Adder
		WAIT 10 ns; -- Get answer

		--Test3: result = 131 - 24
		a <= "00011000"; -- a = 24
		b <= "01100101"; -- b = 131
		sc <= "1"; -- result = Y-X
		WAIT 10 ns;

		--Test4: result = 254 + 2 (carryout check)
		a <= "11111110"; -- a = 254
		b <= "00000010"; -- b = 2
		sc <= "0"; -- result = Y+X
		WAIT 10 ns;

		--Test5: result = 254 + (-2) (carryout check)
		a <= "11111110"; -- a = 254
		b <= "11111110"; -- b = -2
		sc <= "0"; -- result = Y+X
		WAIT 10 ns;
		WAIT;
	END PROCESS testbench;
END rtb;