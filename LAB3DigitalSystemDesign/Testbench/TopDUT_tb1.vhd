library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use STD.textio.all;
use ieee.std_logic_textio.all;
use work.aux_package.all;
 
entity tb_topDUT is
	generic( Dwidth: integer:=16;
	AregWidth: integer:=4;
	AmemWidth: integer:=6;
	dept : integer := 64);
end tb_topDUT;
 
 
architecture behav of tb_topDUT is


    SIGNAL clk, rst, enb: STD_LOGIC := '0';
    SIGNAL done: STD_LOGIC := '0';
    SIGNAL TBactive : STD_LOGIC := '0';
    SIGNAL WrenProg , WrenData : STD_LOGIC := '0';
    SIGNAL WAddrProg_1 : std_logic_vector (AmemWidth-1 downto 0) := (others => '0');
	SIGNAL WAddrData , RAddrData : STD_LOGIC_Vector(AmemWidth-1 DOWNTO 0) := (others => '0');
    SIGNAL MemDataIn , MemProgIn : STD_LOGIC_Vector(Dwidth-1 DOWNTO 0) := (others => '0');
    SIGNAL MemDataOut : STD_LOGIC_Vector(Dwidth-1 DOWNTO 0) := (others => '0');

    
    file ProgMemToLoad , DataMemToLoad , DataMemRead : text;

    SIGNAL writeProgMem_phase_start , writeDataMem_phase_start ,readDataMem_phase_start : boolean := false;
    SIGNAL writeProgMem_phase_finish , writeDataMem_phase_finish ,readDataMem_phase_finish : boolean := false;

begin

    
	top_unit : top generic map (Dwidth,AregWidth,AmemWidth,dept)
               port map(clk => clk, 
						rst => rst,
						ena => enb,
                        done => done,
                        TBactive => TBactive,
                        wEnaProg => WrenProg,
						wEnaMem => WrenData,
                        wAddrProg => WAddrProg_1 ,
						wAddrMem => WAddrData ,
						rAddrMem => RAddrData ,
                        dataMemIn => MemDataIn ,
						dataProg => MemProgIn ,
                        dataMemOut => MemDataOut);


	control_tb : process 
	begin
        wait until falling_edge(clk);
		rst <= '1';
		wait until falling_edge(clk);
		rst <= '0';

		wait until falling_edge(clk);
		TBactive <= '1';
		writeDataMem_phase_start <= true;
		wait until (writeDataMem_phase_finish'event and writeDataMem_phase_finish=true);
		TBactive <= '0';

		wait until falling_edge(clk);
		writeProgMem_phase_start <= true;
		wait until (writeProgMem_phase_finish'event and writeProgMem_phase_finish=true);

		wait until falling_edge(clk);
		rst <= '1';
		enb <= '1';
        wait until falling_edge(clk);
		rst <= '0';

		-- wait for done
		wait until (done'event and done='1');
		enb <= '0';
		wait until falling_edge(clk);

		-- read from data mem
		wait until rising_edge(clk);
		TBactive <= '1';
		readDataMem_phase_start <= true;
		wait until (readDataMem_phase_finish'event and readDataMem_phase_finish=true); 
	
		wait;
	end process;

        gen_clk : process	
        begin
		  clk <= '0';
		  wait for 50 ns;
		  clk <= not clk;
		  wait for 50 ns;
        end process;

	write_instructions : process
		variable line_entry : std_logic_vector(Dwidth-1 downto 0);
		variable good : boolean;
		variable L : line;
	begin
		file_open(ProgMemToLoad, "C:\Users\elado\Desktop\vhdl_lab\CPUArchitecture-VHDL\LAB3DigitalSystemDesign\Testbench\txt\ITCMinit.txt", read_mode);
		wait until (writeProgMem_phase_start'event and writeProgMem_phase_start=true);
		wait until falling_edge(clk);

		while not endfile (ProgMemToLoad) loop
			readline(ProgMemToLoad, L);
			hread(L,line_entry,good);
			next when not good; 
			MemProgIn <= line_entry;
			WrenProg <= '1';
			wait until rising_edge(clk);
			wait until falling_edge(clk);
			WAddrProg_1 <= WAddrProg_1 + 1;
		end loop;
		WrenProg <= '0';
		writeProgMem_phase_finish <= true;
		file_close(ProgMemToLoad);
		wait;
	end process;


	write_data : process
		variable data_addr : std_logic_vector(AmemWidth-1 downto 0) := (others => '0');
		variable line_entry : std_logic_vector(Dwidth-1 downto 0);
		variable good : boolean;
		variable L : line;
	begin
		file_open(DataMemToLoad, "C:\Users\elado\Desktop\vhdl_lab\CPUArchitecture-VHDL\LAB3DigitalSystemDesign\Testbench\txt\DTCMinit.txt", read_mode);
		wait until (writeDataMem_phase_start'event and writeDataMem_phase_start=true); 
		wait until falling_edge(clk);

		while not endfile (DataMemToLoad) loop
			readline(DataMemToLoad, L);
			hread(L,line_entry,good);
			next when not good; 
			WAddrData <= data_addr;
			MemDataIn <= line_entry;
			WrenData <= '1';
			wait until rising_edge(clk);
			wait until falling_edge(clk);
			data_addr := data_addr + 1;
		end loop;
		WrenData <= '0';
		writeDataMem_phase_finish <= true;
		file_close(DataMemToLoad);
		wait;
	end process;


	read_data_from_memory : process
		variable data : std_logic_vector(Dwidth-1 downto 0) := (others => '0');
		variable address_data : std_logic_vector(AmemWidth-1 downto 0) := (others => '0');
		variable L : line;
	begin
		file_open(DataMemRead, "C:\Users\elado\Desktop\vhdl_lab\CPUArchitecture-VHDL\LAB3DigitalSystemDesign\Testbench\txt\DTCMcontent.txt", write_mode);
		wait until (readDataMem_phase_start'event and readDataMem_phase_start=true); 
		wait until falling_edge(clk);
		while address_data < 63 loop
			RAddrData <= address_data;
			wait until rising_edge(clk);
			wait until falling_edge(clk);
			address_data := address_data + 1;
			data := MemDataOut;
			hwrite(L, data, right, Dwidth/4);
			writeline(DataMemRead, L);
		end loop;
		readDataMem_phase_finish <= true;
		file_close(DataMemRead);
		wait;
	end process;
end behav;
