library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
entity traffic is
   port ( 	SW			:	IN std_logic_vector(4 downto 0);
				clock_50	: 	IN std_logic;
				LEDG 		:	OUT std_logic_vector(7 downto 0);
				HEX0 		: 	OUT STD_LOGIC_VECTOR(6 downto 0); 
				HEX1 		: 	OUT STD_LOGIC_VECTOR(6 downto 0); 
				LEDR 		:	OUT std_logic_vector(7 downto 0));
			
end traffic;
ARCHITECTURE behavioral of traffic is
signal rope1: std_logic;
begin
A1:
entity work.DIVIDER(behavioral)
port map(CLKin => CLOCK_50, reset => SW(0), CLKout => rope1);
A2:
entity work.FSM(Behavioural)
port map(clk=> rope1,  GREEN => LEDG, RED => LEDR, YELLOW2 => HEX1, YELLOW1 => HEX0, reset => Sw(0), sensor => SW(4 downto 1));


end behavioral;