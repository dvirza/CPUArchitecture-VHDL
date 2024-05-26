library IEEE;
use ieee.std_logic_1164.all;
package aux_package is


--------------------------------------------------------
	component top is
	GENERIC (n : INTEGER := 8;
		   k : integer := 3;   -- k=log2(n)
		   m : integer := 4	); -- m=2^(k-1)
  	PORT 
  	  (  
		  Y_i,X_i: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
		  ALUFN_i : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		  ALUout_o: OUT STD_LOGIC_VECTOR(n-1 downto 0);
		  Nflag_o,Cflag_o,Zflag_o,Vflag_o: OUT STD_LOGIC -- Zflag,Cflag,Nflag,Vflag
   	   );
	end component;
---------------------------------------------------------  FA
	component FA is
		PORT (xi, yi, cin: IN std_logic;
			      s, cout: OUT std_logic);
	end component;
---------------------------------------------------------  LOGIC
	component Logic is
	GENERIC (n : INTEGER);
	PORT (x, y : IN std_logic_vector (n-1 downto 0);
	      ALUFN20: IN std_logic_vector (2 downto 0);
	      res: OUT std_logic_vector (n-1 downto 0)
	      );
	end component;
---------------------------------------------------------  SHIFTER
	component shifter is
		GENERIC (n : INTEGER;
		 	 k : INTEGER
		 	 );
		PORT (x, y: IN std_logic_vector (n-1 downto 0);
              		dir: IN std_logic;
	      		res: OUT std_logic_vector (n-1 downto 0); 
	      		cout: OUT std_logic);
	end component;
---------------------------------------------------------  ADDER/SUBTRACTOR
	component AdderSub is
	GENERIC (n : INTEGER);
	PORT (x, y: IN std_logic_vector(n-1 downto 0);
              sub_cont: IN std_logic;
              res: OUT std_logic_vector(n-1 downto 0);
	      c_out: OUT std_logic);
	end component;

end aux_package;