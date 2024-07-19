library IEEE;
use ieee.std_logic_1164.all;


package aux_package is
-------------------------------------------------------- TOP Envalope
	-- component top is
	-- 	generic(n:INTEGER := 8;
    --      k: INTEGER := 3);
    -- port(clk,ena,rst: in std_logic;
    --      x_ena,y_ena,alufn_ena : in std_logic;
    --      sw07_i : in std_logic_vector(n-1 downto 0);
    --      y_tohex_o1,y_tohex_o2, x_tohex_o1,x_tohex_o2 : out std_logic_vector(6 downto 0);
    --      aluout_tohex_o1,aluout_tohex_o2 : out std_logic_vector(6 downto 0);
    --      alufn_tohex_o : out std_logic_vector(4 downto 0);
    --      pwm_o , ov_flag_o, z_flag_o, c_flag_o, n_flag_o: out std_logic
    --      --aluRes_o : out std_logic_vector(n-1 downto 0)
    --      );
	-- end component;
-------------------------------------------------------- TOP
component DIV is
	GENERIC (  n : INTEGER:= 32;
               m : INTEGER := 6 ); --m := log2(N)
	PORT (  divCLK_i , divRST_i, divENA_i : IN std_logic;
            dividend_i, divisor_i : IN std_logic_vector (n-1 downto 0);
	        divIFG_o: OUT std_logic;
            residue_o , quotient_o : OUT std_logic_vector (n-1 downto 0)
         );
end component;
-------------------------------------------------------- TOP
component Adder is
	GENERIC (length : INTEGER := 32);
 PORT ( a, b: IN STD_LOGIC_VECTOR (length-1 DOWNTO 0);
          cin: IN STD_LOGIC;
            s: OUT STD_LOGIC_VECTOR (length-1 DOWNTO 0);
         cout: OUT STD_LOGIC);
end component;

end aux_package;