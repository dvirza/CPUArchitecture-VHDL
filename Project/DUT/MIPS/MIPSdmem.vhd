LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_SIGNED.ALL;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;

ENTITY dmemory IS
	generic(model_sim		: boolean; 
			addr_size		: integer );
	PORT(	read_data 			: OUT 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
        	address 			: IN 	STD_LOGIC_VECTOR( 10 DOWNTO 0 );
        	write_data 			: IN 	STD_LOGIC_VECTOR( 31 DOWNTO 0 );
	   		Memwrite 			: IN 	STD_LOGIC;
            clock,reset			: IN 	STD_LOGIC );
END dmemory;

ARCHITECTURE behavior OF dmemory IS

	SIGNAL write_clock : STD_LOGIC;

	signal addr_gen	:	STD_LOGIC_VECTOR(addr_size-1 downto 0);

BEGIN

modelSim_T : if (model_sim = true ) generate
	addr_gen <= address(10 downto 2);
end generate;
modelSim_F : if (model_sim = false) generate
	addr_gen <= address;
end generate;

	data_memory : altsyncram
	GENERIC MAP  (
		operation_mode => "SINGLE_PORT",
		width_a => 32,
		widthad_a => addr_size,
		numwords_a => 2**addr_size,
		lpm_hint  => "ENABLE_RUNTIME_MOD = YES,INSTANCE_NAME = DTCM",
		lpm_type => "altsyncram",
		outdata_reg_a => "UNREGISTERED",
		init_file => "C:\Users\elado\Desktop\vhdl_lab\CPUArchitecture-VHDL\Project\test_files\INTR_TEST4\DTCM.hex",
		intended_device_family => "Cyclone"
	)
	PORT MAP (
		wren_a => memwrite,
		clock0 => write_clock,
		address_a => addr_gen,
		data_a => write_data,
		q_a => read_data	);
-- Load memory address register with write clock
		write_clock <= NOT clock;
END behavior;

