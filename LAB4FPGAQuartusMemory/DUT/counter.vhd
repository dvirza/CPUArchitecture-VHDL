library ieee;
use ieee.std_logic_1164.all;
use IEEE.std_logic_unsigned.all; 
 
entity counter is port (
	clk,enable : in std_logic;	
	q          : out std_logic_vector (5 downto 0)); 
end counter;

architecture rtl of counter is
    signal q_int : std_logic_vector (5 downto 0):= (others => '0');
begin
    process (clk)
    begin
        if (rising_edge(clk)) then
           if enable = '1' then	   
		        q_int <= q_int + 1;
           end if;
	     end if;
    end process;
    q <= q_int;
end rtl;



