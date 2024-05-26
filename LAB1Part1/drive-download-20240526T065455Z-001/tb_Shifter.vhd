LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE work.aux_package.all;

ENTITY tb_Shifter is
	GENERIC (n : INTEGER := 8;
		 k : INTEGER := 3
		 );
END tb_Shifter;

ARCHITECTURE rtb of tb_Shifter is
    -- - Signal Declaration
    signal a : std_logic_vector(n-1 downto 0) := (others => '0');
    signal b : std_logic_vector(n-1 downto 0) := (others => '0');
    signal opcode : std_logic := '0';
    signal s : std_logic_vector(n-1 downto 0);
    signal carryo : std_logic;


BEGIN
    -- Initiating port map
    ShiftLabel: shifter
	GENERIC MAP (n => n, k => k) 
	PORT MAP(
        x => a,
        y => b,
        dir => opcode,
        res => s,
        cout => carryo
        );

    --Test process
    testbenc : process
	
    BEGIN
	WAIT FOR 10 ps;
        --Test1: SHL 3
        a <= "00000011";
        b <= "00000001";
        opcode <= '0'; 
        wait for 10 ns;

         --Test2: SHR 3
        a <= "00000011";
        b <= "10000101";
        opcode <= '1'; --expected result: '00010001'
        wait for 10 ns;
        
        -- Test3: SHL 7
        a <= "00000111";
        b <= "00000001";
        opcode <= '0'; --expected result: '00000000'
        wait for 10 ns;
        wait;
    end process;
END rtb;