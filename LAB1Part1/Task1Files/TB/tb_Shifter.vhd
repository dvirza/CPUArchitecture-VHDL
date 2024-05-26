LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_Shifter is
END tb_Shifter;

ARCHITECTURE rtb of tb_Shifter is
    -- - Signal Declaration
    signal a : std_logic_vector(3 downto 0) := (others => '0');
    signal b : std_logic_vector(3 downto 0) := (others => '0');
    signal opcode : std_logic := '0';
    signal s : std_logic_vector(3 downto 0);
    signal carryo : std_logic;
    -- - Component Declaration
    COMPONENT SHIFTER
	PORT (
    x, y: IN std_logic_vector;
    dir: IN std_logic;
    res, cout: OUT std_logic
    );
    END COMPONENT;

BEGIN
    -- Initiating port map
    LOGIC PORT MAP(
        x => a,
        y => b,
        dir => opcode,
        res =>s,
        cout => carryo
        );

    --Test process
    testbenc : process
    BEGIN
        --Test1: SHL 3
        a <= "00000011";
        b <= "00001110";
        opcode <= '0'; --expected result: '011100000'
        wait for 50 ns;

        -- Test2: SHR 3
        a <= "00000010";
        b <= "10000101";
        opcode <= '1'; --expected result: '00010001'
        wait for 50 ns;
        
        -- Test3: SHL 8
        x <= "00001000";
        y <= "00000001";
        dir <= '0'; --expected result: '00000000'
        wait for 50 ns;
        wait;
    end process;
END rtb;