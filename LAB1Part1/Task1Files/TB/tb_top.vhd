LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_top is
END tb_top;

ARCHITECTURE rtb of tb_top is
    -- - Signal Declaration
    signal a_i, b_i : std_logic_vector (n-1 downto 0) := (others => '0');
    signal ALU_i : std_logic_vector (3 downto 0) := (others => '0');
    signal ALU_o : std_logic_vector (3 downto 0) := (others => '0');
    signal Nf, Cf, Zf, Vf : std_logic := '0';
    -- - Component Declaration
    COMPONENT SHIFTER
    PORT (
        a_i, b_i: IN std_logic_vector(n-1 downto 0) := (others => '0');;
        alu_i: IN std_logic_vector(3 downto 0) := (others => '0');
        alu_o: OUT std_logic_vector(3 downto 0) := (others => '0');
        Nf, Cf, Zf, Vf: OUT std_logic );
    END COMPONENT;

    BEGIN
        -- Initiation port map
        LOGIC PORT MAP(
            x_i => a_i,
            y_i => b_i,
            alufn_in => alu_i,
            aluout_o => alu_o,
            Nflag_o => Nf,
            Cflag_o => Cf,
            Zflag_o => Zf,
            Vflag_o => Vf
        );

        -- Test process
        testbenc : process
        BEGIN
    
        --Test1: Adder/Subtractor test1
        a_i <= "00110010";
        b_i <= "00011110";
        alu_i <= "01000";
        wait for 50 ns;

        --Test2: Adder/Subtractor test3
		a_i <= "00011000"; -- a = 24
		b_i <= "01100101"; -- b = 131
		alu_i <= "01001"; -- result = Y-X
        wait for 50 ns;

        --Test3: Shifter test1 SHL 3
        a_i <= "00000011";
        b_i <= "00001110";
        alu_i <= '10000'; --expected result: '011100000'
        wait for 50 ns;

        --Test4: Shifter test2 SHR 3
        a_i <= "00000010";
        b_i <= "10000101";
        alu_i <= '10001'; --expected result: '00010001'
        wait for 50 ns;

        --Test5: (not y) with ALUFN20 = "000"
        a_i <= "01101100";
        b_i <= "01001010";
        alu_i <= "11000";
        wait for 50 ns;
        
        --Test6: (y or x) with ALUFN20 = "001"
        a_i <= "00110000";
        b_i <= "0010100";
        alu_i <= "11001"; 
        wait for 50 ns;
        
        --Test7: (y and x) with ALUFN20 = "010"
        a_i <= "00011000";
        b_i <= "00010100";
        alu_i <= "11010";
        wait for 50 ns;
        
        --Test8: (y xor x) with ALUFN20 = "011"
        a_i <= "10110001";
        b_i <= "10101010";
        alu_i <= "11011"; 
        wait for 50 ns;
        
        --Test9: (y nor x) with ALUFN20 = "100"
        a_i <= "11010110";
        b_i <= "00101000";
        alu_i <= "11100"; 
        wait for 50 ns;
        
        --Test10: (y nand x) with ALUFN20 = "101"
        a_i <= "11000010";
        b_i <= "00101011";
        alu_i <= "11101"; 
        wait for 50 ns;
        
        --Test11: (y xnor x) with ALUFN20 = "110"
        a_i <= "10001100";
        b_i <= "01011010";
        opcode <= "11110"; 
        wait for 50 ns;
        
        --Test12: (y xnor x) with ALUFN20 = "111"
        a_i <= "11001011";
        b_i <= "10100110";
        alu_i <= "11111"; 
        wait for 50 ns;
        
        wait;
    end process;
END rtb;
    

        