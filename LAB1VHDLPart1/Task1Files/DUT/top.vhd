LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
USE work.aux_package.all;
-------------------------------------
ENTITY top IS
  GENERIC (n : INTEGER := 8;
		   k : integer := 3;   -- k=log2(n)
		   m : integer := 4	); -- m=2^(k-1)
  PORT 
  (  
	Y_i,X_i: IN STD_LOGIC_VECTOR (n-1 DOWNTO 0);
		  ALUFN_i : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
		  ALUout_o: OUT STD_LOGIC_VECTOR(n-1 downto 0);
		  Nflag_o,Cflag_o,Zflag_o,Vflag_o: OUT STD_LOGIC
  ); -- Zflag,Cflag,Nflag,Vflag
END top;
------------- complete the top Architecture code --------------
ARCHITECTURE struct OF top IS 
constant zeros_vector : std_logic_vector(n-1 downto 0) := (others => '0');
BEGIN
	Opcode : if ALUFN_i(4 downto 3) = '01' generate --- Arithmetics part:
		Arithmetics : if alufn_i(1 downto 0) = '10' generate
			AdderSub port map (X_i, zeros_vector, '1', ALUout_o, Cflag_o);
			elsif alufn_i(1) = '0' generate
				AdderSub port map (X_i, Y_i, alufn_i(0), ALUout_o, Cflag_o);
				end generate;
		OVflagCheck: if (X_i(n-1) = Y_i(n-1)) generate
		Vflag_o <= ALUout_o(n-1) xor X_i(n-1);
		else
			Vflag_o = '0';
		end generate;


	elsif ALIFN_i(4 downto 3) = '10' generate --- Shift part:
		Shift port map (X_i, Y_i, ALUFN_i(0),ALUFN_o,Cflag_o);


	elsif ALUFN_i(4 downto 3) = '11' generate --Boolean:
		Logic port map (X_i, Y_i, ALUFN_i(2 downto 0), ALUout_o);
		Cflag_o <= '0';
				---FLAGS
	end generate;

------------- Zero and Negative Flags -------------
	if ALUout_o = zeros_vector generate
		Zflag_o <= '1';
	else
		Zflag_o <= '0';
		if ALUout_o(n-1) = '1' generate
		Nflag_o <= '1';
		else
		Nflag_o <= '0';
	end generate;
	end generate;	
	
END struct;
