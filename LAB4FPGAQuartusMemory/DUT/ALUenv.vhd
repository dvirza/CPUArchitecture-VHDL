LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE work.aux_package.all;

ENTITY aluEnv IS
    GENERIC (	n : INTEGER := 8;
        		k : INTEGER := 3);
    PORT (	X_i, Y_i : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        	ALUFN_i : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
        	ALUout_o : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
        	Nflag_o, Cflag_o, Zflag_o, Vflag_o 	: OUT STD_LOGIC );
END aluEnv;


ARCHITECTURE struct OF aluEnv IS

    CONSTANT zeros_vector : STD_LOGIC_VECTOR(n-1 downto 0) := (others => '0'); --Vector of zeros
    SIGNAL xAdd,xShift,xBool,yAdd,yShift,yBool: STD_LOGIC_VECTOR(n-1 DOWNTO 0) := (others => '0'); --Input Internal Regs
    SIGNAL resAdd,resShift,resBool: STD_LOGIC_VECTOR(n-1 DOWNTO 0) := (others => '0'); --internal res regs
    SIGNAL OutAdd,OutShift,OutBool: STD_LOGIC_VECTOR(n-1 DOWNTO 0) := (others => '0'); --Output Internal Regs
    SIGNAL CarryAdd, CarryShift: STD_LOGIC := '0'; --Carry Internal Regs
    SIGNAL internalOV, negAdd, negShift, internalCarry: STD_LOGIC := '0';
    SIGNAL ALUoutBUFF: STD_LOGIC_VECTOR(n-1 DOWNTO 0) := (others => '0'); --Output Buffer Reg

BEGIN
---------------- Connect the components to the internal signals ----------------------
	AddSub_inst : AdderSub GENERIC MAP (n=>n) PORT MAP (x => xAdd, y => yAdd, sub_ena => negAdd, result => resAdd, c_out => CarryAdd);

	Shift_inst: Shifter GENERIC MAP (n => n, k => k) PORT MAP ( x => xShift, y => yShift, dir => negShift, result => resShift ,cout => CarryShift);

	Boolean_inst: Logic GENERIC MAP (n => n) PORT MAP (x => xBool, y => yBool, ALUFN20 => ALUFN_i(2 downto 0), result => resBool);
---------------------------------------------------------------------------------------
	--Internal signals for instances
	xAdd <= X_i;
	yAdd <= zeros_vector WHEN ALUFN_i(1 DOWNTO 0) = "10" ELSE Y_i;
	negAdd <= ALUFN_i(1) XOR ALUFN_i(0) WHEN ALUFN_i(4 DOWNTO 2) = "010" ELSE '0' ;

	xShift <= X_i;
	yShift <= Y_i;
	negShift <= ALUFN_i(0);

	xBool <= X_i;
	yBool <= Y_i;

	--Define the overflow and Carry conditions
	internalOV <= 	'1' WHEN (ALUFN_i(1 DOWNTO 0) = "00") and (((xAdd(n-1) = '0' and yAdd(n-1) = '0') and ALUoutBUFF(n-1) = '1') or ((xAdd(n-1) = '1' and yAdd(n-1) = '1') and ALUoutBUFF(n-1) = '0'))
					ELSE '1' WHEN (ALUFN_i(1 DOWNTO 0) = "01") and (((xAdd(n-1) = '0' and yAdd(n-1) = '1') and ALUoutBUFF(n-1) = '0') or ((xAdd(n-1) = '1' and yAdd(n-1) = '0') and ALUoutBUFF(n-1) = '1'))	 ELSE '0';

	internalCarry <= '1'WHEN ALUFN_i(4 DOWNTO 2) = "010" and CarryAdd = '1' and not(ALUFN_i(1 DOWNTO 0) = "11") 
					ELSE '1' WHEN CarryShift = '1' and ALUFN_i(4 DOWNTO 1) = "1000" ELSE '0';

	--Set the flags signals out
	Zflag_o <= '1' WHEN ALUoutBUFF = zeros_vector ELSE '0';
	Nflag_o <= ALUoutBUFF(n-1);
	Cflag_o <= internalCarry;
	Vflag_o <=  internalOV WHEN ALUFN_i(4 DOWNTO 3) = "01" ELSE '0';

	--Set the conditions for results
	OutAdd <= resAdd WHEN (ALUFN_i(1) = '0' OR ALUFN_i (1 DOWNTO 0) = "10") ELSE zeros_vector;
	OutShift <= resShift WHEN (ALUFN_i(1 DOWNTO 0) = "00" OR ALUFN_i (1 DOWNTO 0) = "01") ELSE zeros_vector;
	OutBool <= resBool WHEN not(ALUFN_i(2 DOWNTO 0) = "110") ELSE zeros_vector;

	--Set the results into the output buffer using the right opcode(ALUfn)
	WITH ALUFN_i(4 DOWNTO 3) SELECT
			ALUoutBUFF <= 	OutAdd WHEN "01",
			     			OutShift WHEN "10",
			      			OutBool WHEN "11",
			      			(others => '0') WHEN OTHERS;

	--Connect the internal output signal to the output port
	ALUout_o <= ALUoutBUFF; 

END struct;

