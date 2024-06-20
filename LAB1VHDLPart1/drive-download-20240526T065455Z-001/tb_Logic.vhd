LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

ENTITY tb_LOGIC IS
	GENERIC (n : INTEGER := 8);
END tb_LOGIC;

ARCHITECTURE rtb OF tb_LOGIC IS    

    -- - Signal Declaration 
    signal a : std_logic_vector(n-1 downto 0);
    signal b : std_logic_vector(n-1 downto 0);
    signal s : std_logic_vector(n-1 downto 0);
    signal opcode : std_logic_vector(2 downto 0);
   
BEGIN
-- Initiating port map
uut: LOGIC
	GENERIC MAP (n => n)
	PORT MAP (
        x => a,
        y => b,
        ALUFN20 => opcode,
        res => s
        );


    --Test process
    testbenc : process
    begin
	wait for 10 ns;        
        --Test1: (not y) with ALUFN20 = "000"
        a <= "01101100";
        b <= "01001010";
        opcode <= "000";
        wait for 50 ns;
        
        --Test2: (y or x) with ALUFN20 = "001"
        a <= "00110000";
        b <= "00101001";
        opcode <= "001"; 
        wait for 50 ns;
        
        --Test3: (y and x) with ALUFN20 = "010"
        a <= "00011000";
        b <= "00010100";
        opcode <= "010";
        wait for 50 ns;
        
        --Test4: (y xor x) with ALUFN20 = "011"
        a <= "10110001";
        b <= "10101010";
        opcode <= "011"; 
        wait for 50 ns;
        
        --Test5: (y nor x) with ALUFN20 = "100"
        a <= "11010110";
        b <= "00101000";
        opcode <= "100"; 
        wait for 50 ns;
        
        --Test6: (y nand x) with ALUFN20 = "101"
        a <= "11000010";
        b <= "00101011";
        opcode <= "101"; 
        wait for 50 ns;
        
        --Test7: (y xnor x) with ALUFN20 = "110"
        a <= "10001100";
        b <= "01011010";
        opcode <= "110"; 
        wait for 50 ns;
        
        --Test8: (y xnor x) with ALUFN20 = "111"
        a <= "11001011";
        b <= "10100110";
        opcode <= "111"; 
        wait for 50 ns;

        wait;
    end process;
END rtb;
