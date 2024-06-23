library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Control is
generic( Dwidth: integer:=16;
		 Awidth: integer:=4);
		 
port( 
	  clk,rst,ena: in std_logic;
	  done : out std_logic;
	
	  op_st, op_ld, op_mov, op_done, op_add, op_sub, op_jmp, op_jc, op_jnc, op_and, op_or, op_xor: in std_logic; --UUSEDDDDDD
	  cFlag,nFlag,zFlag: in std_logic;

	  Mem_wr,Mem_out,Mem_in :out std_logic;
	  Cin,Cout :out std_logic;
	  Ain:out std_logic;
	  RFin,RFout :out std_logic;
	  RFaddr:out std_logic_vector(1 downto 0);
	  IRin: out std_logic;
	  PCin:out std_logic;
	  PCsel:out std_logic_vector(1 downto 0);
	  Imm1_in,Imm2_in: out std_logic;
	  OPC :out std_logic_vector(Awidth-1 downto 0)

	);
	
end Control;

ARCHITECTURE state_machine OF Control IS
	TYPE state IS (fetch, st_done, rType0, rType1, rType2, jType0, iType0, iType1, iTypeMov0, ld0, ld1, st0, st1);
	SIGNAL pr_state, nx_state: state;
BEGIN
---------- Lower section: ------------------------
  PROCESS (rst, clk)
  BEGIN
	IF (rst='1') THEN
		pr_state <= fetch;
	ELSIF (clk'EVENT AND clk='1') THEN
		IF (ena = '1') THEN
			pr_state <= nx_state;
		END IF;
	END IF;
  END PROCESS;
---------- Upper section: ------------------------
  PROCESS (pr_state)
  BEGIN
	CASE pr_state IS
		WHEN fetch =>
		-- Initial
			IRin <= '1';
			Mem_wr <= '0';
			Mem_out <= '0';
			Mem_in <= '0';
			Cin <= '0';
			Cout <= '0';
			Ain <='0';
			RFin <= '0';
			RFout <= '0';
			RFaddr <= "00";
			PCin <= '0';
			PCsel <= "00";
			Imm1_in <= '0';
			Imm2_in <= '0';
			OPC <= "0000";
			if (op_add = '1' or op_sub = '1' or op_and = '1' or op_or = '1' or op_xor = '1') THEN--UNUSED!!!!!!!
				nx_state <= rType0;
			elsif (op_jmp = '1' or op_jc = '1' or op_jnc = '1') THEN
				nx_state <= jType0;
			elsif (op_ld = '1' or op_st = '1') THEN
				nx_state <= iType0;
			elsif (op_mov = '1') THEN
				nx_state <= iTypeMov0;
			else
				nx_state <= fetch;
			end if;
		WHEN st_done =>
			done <= '1';
			nx_state <= fetch;
		WHEN jType0 =>
			if (cFlag = '1' and op_jc ='1') then
				IRin <= '0'; PCin <= '1'; PCsel <= "01";
			elsif(cFlag = '0' and op_jnc = '1') then
				IRin <= '0'; PCin <= '1'; PCsel <= "01";
			elsif (op_jmp = '1') then
				IRin <= '0'; PCin <= '1'; PCsel <= "01";
			end if;
			nx_state <= fetch;
		WHEN rType0 =>
			IRin <= '0'; Ain <= '1'; RFout <= '1'; 
			PCsel <= "10"; -- +1
			RFaddr <= "00"; --takes rc
			nx_state <= rType1;
		WHEN rType1 =>
			Cin <= '1'; Ain <= '0'; RFout <= '1'; Cout <= '0';
			RFaddr <= "01"; --takes rb
			OPC <= "0000" when op_add else
				   "0001" when op_sub else
				   "0010" when op_and else
				   "0011" when op_or else
				   "0100" when op_xor; --UNUSEDDDD
			nx_state <= rType2;
		WHEN rType2 =>
			Cin <= '0'; Ain <= '0'; RFout <= '0'; RFin <= '1'; Cout <= '1';
			PCin <= '1';
			RFaddr <= "10"; --takes ra
			nx_state <= st_done;
		WHEN iTypeMov0 =>
			RFin <= '1'; Imm1_in <= '1'; RFaddr <= "10"; PCsel <= "10"; PCin <= '1'; IRin <= '0';
			nx_state <= st_done;
		WHEN iType0 =>
			IRin <= '0'; Ain <= '1'; RFout <= '1'; RFin <= '0'; PCin <= '1';
			PCsel <= "10"; -- +1
			RFaddr <= "10"; --takes ra
			nx_state <= iType1;
		WHEN iType1 =>
			Cin <= '1'; Ain <= '0'; RFout <= '0'; Imm2_in <= '1';
			PCin <= '0';
			PCsel <= "10"; -- +1
			OPC <= "0000";
			if (op_ld ='1') then
				nx_state <= ld0;
			end if;
			if (op_st = '1') then
				nx_state <= st0;
			else
				assert false report " Error: didnt get load or store during FSM work" severity Error;
				nx_state <= fetch; --For robustness
			end if;
		WHEN ld0 =>
			Cout <= '1'; Imm2_in <= '0'; Cin <= '0'; Mem_out <= '0';
			nx_state <= ld1;
		WHEN ld1 =>
			Cout <= '0'; RFin <= '1'; RFout <= '0'; Mem_out <= '1';
			nx_state <= st_done;
		WHEN st0 =>
			Cout <= '1'; Imm2_in <= '0'; Mem_in <= '1'; Cin <= '0';
			nx_state <= st1;
		WHEN st1 =>
			Cout <= '0'; RFout <= '1'; RFin <= '0'; Mem_in <= '0'; Mem_wr <= '1';
			nx_state <= st_done;
	END CASE;
  END PROCESS;
END state_machine;