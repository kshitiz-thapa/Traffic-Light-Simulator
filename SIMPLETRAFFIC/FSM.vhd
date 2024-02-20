library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM is
	Port(
			Sensor	: IN std_logic_vector(2 downto 1);
			reset		: IN std_logic;
			clk    	: IN std_logic;
			OUTPUT    : OUT std_logic_vector(7 downto 0)
			);
end FSM;
	
architecture Behavioural of FSM is
		type states IS (ST0, ST1, ST2, ST3, ST4, ST5, ST6, ST7);
		Signal next_state: states;
		
begin
	process( clk, sensor)
	BEGIN
	if clk'event AND clk = '1' THEN


		
		if (sensor = "0000" or sensor = "0011") THEN
	
		 case next_state IS
			when sT0 => next_state <= ST1;
			when sT1 => next_state <= ST2;
			when sT2 => next_state <= ST3;
			when sT3 => next_state <= ST4;
			when sT4 => next_state <= ST5;
			when sT5 => next_state <= ST6;
			when sT6 => next_state <= ST7;
			when sT7 => next_state <= ST0;

		  end case;

		elsif (reset ='1') then
		next_state <= ST0;


		elsif sensor = "00001" THEN 			-- CAR ON MAIN STREET


				if next_state = ST0 THEN		-- IF LIGHT IS ALREADY GREEN
				next_state <= ST0;			-- STAY GREEN

				elsif next_state = ST1 THEN		-- IF LIGHT IS ALREADY GREEN
					next_state <= ST0;			-- STAY GREEN

				elsif next_state = ST2 THEN		-- IF LIGHT IS ALREADY GREEN
					next_state <= ST0;			-- STAY GREEN
	
				elsif next_state = ST3 THEN		-- IF LIGHT IS ALREADY GREEN
					next_state <= ST0;			-- STAY GREEN
					
			elsif next_state = ST4 then	-- IF LIGHT IS RED ON MAIN STREET
					next_state <= ST7;			-- CAUTION BEFORE GREEN
					
			elsif next_state = ST5 then	-- IF LIGHT IS RED ON MAIN STREET
					next_state <= ST7;			-- CAUTION BEFORE GREEN		
				
				elsif next_state = ST6 then	-- IF LIGHT IS RED ON MAIN STREET
					next_state <= ST7;			-- CAUTION BEFORE GREEN
					
				elsif next_state = ST7 then	-- IF LIGHT IS AT CAUTION
					next_state <= ST0;			-- MAKE IT GREEN		
		
		end if;
				

		elsif sensor = "00010" THEN				-- CAR ON SECOND STREET
		
	
				if next_state = ST0 THEN		-- IF LIGHT IS RED ON SECOND STREET
					next_state <= ST4;			-- CAUTION BEFORE GREEN LIGHT

				elsif next_state = ST1 then	-- IF LIGHT IS RED ON SECOND STREET
					next_state <= ST4;			-- CAUTION BEFORE GREEN LIGHT
					
				elsif next_state = ST2 then	-- IF LIGHT IS RED ON SECOND STREET
					next_state <= ST4;			-- CAUTION BEFORE GREEN LIGHT					

				elsif next_state = ST3 then	-- IF LIGHT IS CAUTION ON SECOND STREET
					next_state <= ST4;			-- CAUTION BEFORE GREEN LIGHT				
				
				elsif next_state = ST4 then	-- IF LIGHT IS ALREADY GREEN ON SECOND STREET
					next_state <= ST4;			-- GREEN ON SECOND STREET	
					
			   elsif next_state = ST5 then	-- IF LIGHT IS ALREADY GREEN ON SECOND STREET
					next_state <= ST4;			-- CAUTION BEFORE GREEN		
				
				elsif next_state = ST6 then	-- IF LIGHT IS ALREADY GREEN ON SECOND STREET
					next_state <= ST7;			-- CAUTION BEFORE GREEN
					
				elsif next_state = ST7 then	-- IF LIGHT IS AT CAUTION
					next_state <= ST4;			-- MAKE IT GREEN	
				
				end if;

	end if;
		
end if;
	
   end process;

with next_state select OUTPUT <= 
		"10000001" when ST0,				-- RED ON MAIN STREET
		"10000001" when ST1,				-- RED ON MAIN STREET
		"10000001" when ST2,				-- RED ON MAIN STREET
		"10000010" when ST3,				-- RED ON MAIN STREET
		"00100100" when ST4,				-- RED ON SECOND STREET
		"00100100" when ST5,				-- RED ON SECOND STREET
		"00100100" when ST6,				-- RED ON SECOND STREET
		"01000100" when ST7;				-- RED ON SECOND STREET

end Behavioural;