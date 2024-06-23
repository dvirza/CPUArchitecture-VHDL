library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.aux_package.all;
--------------------------------------------------------------
entity mod_RF is
generic( Dwidth: integer:=16;
		 Awidth: integer:=4);
port(	clk,rst,IRin, RFin: in std_logic;	
		dataInIR:	in std_logic_vector(Dwidth-1 downto 0);
        dataInBUS:	in std_logic_vector(Dwidth-1 downto 0);
		RFaddr: in std_logic_vector(1 downto 0);
        opcOut : out std_logic_vector(Awidth-1 downto 0);
		outData: 	out std_logic_vector(Dwidth-1 downto 0)
);
end mod_RF;
--------------------------------------------------------------
architecture behav of mod_RF is

    signal internalAddr : std_logic_vector(Awidth-1 downto 0);
    signal internalData : std_logic_vector(Dwidth-1 downto 0);
begin
    
rf_inst : RF 
            generic map( Dwidth=> Dwidth,
                        opwidth=> Awidth)
            port map(	clk => clk,
                    rst => rst,
                    WregEn => RFin,	
                    WregData => dataInBUS,
                    WregAddr => internalAddr ,
                    RregAddr => internalAddr ,
                    RregData => internalData
                );

    

process(clk,rst,IRin)
begin
	if (clk'event and clk='1') then
	    if (IRin ='1') then
            opcOut <= dataInIR(Dwidth-1 downto Dwidth-4);
        end if;
	end if;
end process;

process(RFaddr, dataInIR)
begin
    case RFaddr is
        when "00" =>
            internalAddr <= dataInIR(3 downto 0); -- takes rc
        when "01" =>
            internalAddr <= dataInIR(7 downto 4); -- takes rb
        when "10" =>
            internalAddr <= dataInIR(11 downto 8); -- takes ra
        when others =>
            internalAddr <= (others => '0');
    end case;
end process;

    outData <= internalData; --output the data

end behav;
