library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 
USE work.aux_package.all;
 
entity CounterEnvelope is 
	port (	Clk : in std_logic;	
			clk_out : out std_logic ); 
end CounterEnvelope;

architecture rtl of CounterEnvelope is

    signal PLLOut : std_logic ;
	signal q_int_check : std_logic ;
	signal clk_out_int : std_logic := '0';
	signal counter : std_logic_vector(4 downto 0) := (others =>'0');
begin
	  m1: PLL port map(
		refclk => Clk, --50MHz for task4
		 outclk_0 => PLLOut --2MHz for task4
	   );
	   process(PLLOut)
	   begin
		   if rising_edge(PLLOut) then
			   if counter = "11111" then --Overflow reset the count to zero at 2^32 what makes 2^64 delay for Period
				   counter <= (others => '0');
				   clk_out_int <= not clk_out_int;
			   else
				   counter <= counter + 1;
			   end if;
		   end if;
	   end process;
	   
	   clk_out <= clk_out_int;

end rtl;


