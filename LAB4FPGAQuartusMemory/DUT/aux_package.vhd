library IEEE;
use ieee.std_logic_1164.all;


package aux_package is
-------------------------------------------------------- TOP
	component top is
		generic(n:INTEGER;
         k: INTEGER);
    port(clk,ena,rst: in std_logic;
         x_i,y_i : in std_logic_vector(n-1 downto 0);
         alufn_i : in std_logic_vector(4 downto 0);
         pwm_o, ov_flag_o, z_flag_o, c_flag_o, n_flag_o : out std_logic;
         aluRes_o : out std_logic_vector(n-1 downto 0)
         );
	end component;
-------------------------------------------------------- ALU envelope
	component aluEnv is
		GENERIC (
			n : INTEGER := 8;
			k : INTEGER := 3   -- k=log2(n)
		);
		PORT (
			X_i, Y_i : IN STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			ALUFN_i : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			ALUout_o : OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0);
			Nflag_o, Cflag_o, Zflag_o, Vflag_o : OUT STD_LOGIC
		);
	end component;
---------------------------------------------------------  FA
	component FA is
		PORT (	xi, yi, cin: IN std_logic;
			s, cout: OUT std_logic
		);
	end component;
---------------------------------------------------------  LOGIC
	component Logic is
		GENERIC (   n : INTEGER);
	PORT (      x, y : IN std_logic_vector (n-1 downto 0);
                alufn20: IN std_logic_vector (2 downto 0);
	            result: OUT std_logic_vector (n-1 downto 0)
	     );
	end component;
---------------------------------------------------------  SHIFTER
	component shifter is
		GENERIC (       n : INTEGER;
		        k : INTEGER
		);
	PORT (          x, y: IN std_logic_vector (n-1 downto 0);
                        dir: IN std_logic;
	                result: OUT std_logic_vector (n-1 downto 0); 
	                cout: OUT std_logic
            );
	end component;
---------------------------------------------------------  ADDER/SUBTRACTOR
	component AdderSub is
		GENERIC (   n : INTEGER);
	PORT (      x, y: IN std_logic_vector(n-1 downto 0);
                sub_ena: IN std_logic;
                result: OUT std_logic_vector(n-1 downto 0);
	            c_out: OUT std_logic
        );
	end component;
---------------------------------------------------------  COUNTER
	component counter is 
		generic ( n: INTEGER);
    port (
	clk,enable ,rst : in std_logic;	
	q          : out std_logic_vector (n-1 downto 0)
    ); 
	end component;
---------------------------------------------------------  COUNTER Envelope
	component CounterEnvelope is port (
		Clk,En : in std_logic;	
		Qout          : out std_logic_vector (5 downto 0)); 
	end component;
---------------------------------------------------------  PWM
	component pwm IS
		generic (n : INTEGER );
		port (  clk, ena ,rst : in std_logic;
				x,y : in std_logic_vector(n-1 downto 0);
				workMode : in std_logic;
				pwmOut : out std_logic  
		);
	END component;
---------------------------------------------------------  PWM envelope
	component pwmEnv IS
		GENERIC(n : INTEGER);
		PORT (  clk, ena, rst : in std_logic;
				alufn_i : in std_logic_vector(4 downto 0);
				x_i, y_i : in std_logic_vector(n-1 downto 0);
				PWMoutput: out std_logic
		);
	END component;
--------------------------------------------------------- PLL
	component pll is
		port (
			refclk   : in  std_logic := '0'; --  refclk.clk
			rst      : in  std_logic := '0'; --   reset.reset
			outclk_0 : out std_logic;        -- outclk0.clk
			locked   : out std_logic         --  locked.export
		);
	end component;

end aux_package;