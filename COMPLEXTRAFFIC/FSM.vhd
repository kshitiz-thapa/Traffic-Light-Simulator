library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FSM is
	Port(
			Sensor	: IN std_logic_vector(4 downto 1);
			reset		: IN std_logic;
			clk    	: IN std_logic;
			GREEN    : OUT std_logic_vector(7 downto 0);
			YELLOW1 	: OUT STD_LOGIC_VECTOR(6 downto 0);
			YELLOW2 	: OUT STD_LOGIC_VECTOR(6 downto 0); 
			RED		: OUT std_logic_vector(7 downto 0)
			);
end FSM;
	
architecture Behavioural of FSM is
		type states IS (ST0, ST1, ST2, ST3, ST4, ST5, ST6, ST7, ST8, ST9, ST10, ST11, ST12, ST13, ST14);
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
			
			when sT8 => next_state <= ST9;	--NIGHT TIME CAUTION
			when sT9 => next_state <= ST8;	--NIGHT TIME CAUTION

			when sT10 => next_state <= ST11; --FIRETRUCK OVER RIDE
			when sT11 => next_state <= ST12; --FIRETRUCK OVER RIDE
			when sT12 => next_state <= ST13; --FIRETRUCK OVER RIDE
			when sT13 => next_state <= ST14; --FIRETRUCK OVER RIDE
			when sT14 => next_state <= ST7;

		  end case;

		elsif (reset ='1') then
		next_state <= ST0;

		
		--FIRETRUCK OVERRIDE 
		elsif sensor = "00100" THEN 
				next_state <= ST10;				-- STAY RED UNTIL APPROPRIATE SENSOR IS ACTIVATED

		--NIGHT TIME CAUTION
--		elsif sensor = "10000" THEN 			-- BLINK NIGHT TIME LIGHTS WHEN ITS SWITCH 5
--				next_state <= ST8;

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
			
--		else
--				next_state <= ST8;

	end if;
		
end if;
	
   end process;

with next_state select RED <= 
		"10000000" when ST0,				-- RED ON MAIN STREET
		"10000000" when ST1,				-- RED ON MAIN STREET
		"10000000" when ST2,				-- RED ON MAIN STREET
		"10000000" when ST3,				-- RED ON MAIN STREET
		"00000100" when ST4,				-- RED ON SECOND STREET
		"00000100" when ST5,				-- RED ON SECOND STREET
		"00000100" when ST6,				-- RED ON SECOND STREET
		"00000100" when ST7,				-- RED ON SECOND STREET
		
		"10000100" when ST8,				-- FLASH RED LIGHTS ON AT NIGHT
		"00000000" when ST9,				--	FLASH RED LIGHTS OFF AT NIGHT
		
		"10000100" when ST10,			--	STAY RED ON FIRETRUCK OVERRIDE
		"10000100" when ST11,			--	STAY RED ON FIRETRUCK OVERRIDE
		"10000100" when ST12,			--	STAY RED ON FIRETRUCK OVERRIDE
		"10000100" when ST13,			--	STAY RED ON FIRETRUCK OVERRIDE
		"10000100" when ST14;			--	STAY RED ON FIRETRUCK OVERRIDE		
		
with next_state select GREEN <= 		
		"00000001" when ST0,				-- GREEN ON SECOND STREET
		"00000001" when ST1,				-- GREEN ON SECOND STREET
		"00000001" when ST2,				-- GREEN ON SECOND STREET
		"00000000" when ST3,				--	CAUTION ON SECOND STREET
		"00100000" when ST4,				-- GREEN ON MAIN STREET
		"00100000" when ST5,				-- GREEN ON MAIN STREET
		"00100000" when ST6,				-- GREEN ON MAIN STREET
		"00000000" when ST7,				--	CAUTION ON MAIN STREET
		
		"00000000" when ST8,				--	FLASH RED LIGHT ON AT NIGHT
		"00000000" when ST9,				--	FLASH RED LIGHTS OFF AT NIGHT
		
		"00000000" when ST10,			--	GREEN OFF ON FIRETRUCK OVERRIDE
		"00000000" when ST11,			--	GREEN OFF ON FIRETRUCK OVERRIDE
		"00000000" when ST12,			--	GREEN OFF ON FIRETRUCK OVERRIDE
		"00000000" when ST13,			--	GREEN OFF ON FIRETRUCK OVERRIDE
		"00000000" when ST14;			--	GREEN OFF ON FIRETRUCK OVERRIDE	

		
with next_state select YELLOW1 <=
					 
		"1111111" when ST0,				-- yellow caution off
		"1111111" when ST1,				-- yellow caution off
		"1111111" when ST2,				-- yellow caution off
		"1000000" when ST3,				--	CAUTION ON SECOND STREET
		"1111111" when ST4,				-- yellow caution off
		"1111111" when ST5,				-- yellow caution off
		"1111111" when ST6,				-- yellow caution off
		"1111111" when ST7,				-- yellow caution off
		
		"1111111" when ST8,				--	CAUTION off FLASH RED LIGHTS ON AT NIGHT
		"1111111" when ST9,				--	CAUTION off FLASH RED LIGHT OFF AT NIGHT
		
		"1111111" when ST10,				--	CAUTION off STAY RED ON FIRETRUCK OVERRIDE
		"1111111" when ST11,				--	CAUTION off STAY RED ON FIRETRUCK OVERRIDE
		"1111111" when ST12,				--	CAUTION off STAY RED ON FIRETRUCK OVERRIDE
		"1111111" when ST13,				--	CAUTION off STAY RED ON FIRETRUCK OVERRIDE
		"1111111" when ST14;				--	CAUTION off STAY RED ON FIRETRUCK OVERRIDE
		
with next_state select YELLOW2 <=
					 
		"1111111" when ST0,				-- yellow caution off
		"1111111" when ST1,				-- yellow caution off
		"1111111" when ST2,				-- yellow caution off
		"1111111" when ST3,				-- yellow caution off
		"1111111" when ST4,				-- yellow caution off
		"1111111" when ST5,				-- yellow caution off
		"1111111" when ST6,				-- yellow caution off
		"1000000" when ST7,				--	CAUTION ON MAIN STREET
		
		"1111111" when ST8,				-- CAUTION off FLASH RED LIGHTS ON AT NIGHT
		"1111111" when ST9,				-- CAUTION off FLASH RED LIGHT OFF AT NIGHT
		
		"1111111" when ST10,				--	CAUTION off STAY RED ON FIRETRUCK OVERRIDE
		"1111111" when ST11,				--	CAUTION off STAY RED ON FIRETRUCK OVERRIDE
		"1111111" when ST12,				--	CAUTION off STAY RED ON FIRETRUCK OVERRIDE
		"1111111" when ST13,				--	CAUTION off STAY RED ON FIRETRUCK OVERRIDE
		"1111111" when ST14;				--	CAUTION off STAY RED ON FIRETRUCK OVERRIDE
		

end Behavioural;