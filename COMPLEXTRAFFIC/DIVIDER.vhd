library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity DIVIDER is
   port ( CLKin: in std_logic;
          reset: in std_logic;
          CLKout: out std_logic);
end DIVIDER;

architecture behavioral of DIVIDER is

  signal count: integer:=0;          --initialize count to 0
  signal temp : std_logic := '1';   --initialize clockout to 1 for toggle
begin
process(count, CLKin, reset) --sensitivity list
begin
   if(reset = '1') then    --check for reset

        	count <= 0;     --if so clear count         
             temp <= '1';      --and set temp to high

    elsif rising_edge(CLKin) then    -- check for rising edge of CLKin

           count <=count +1 ;   --update count

     if (count = 50000000) then  -- has count reached half way?

           temp <= not temp;    -- if so, toggle (invert) temp (CLKout)

           count <= 0 ;    --and clear count

     end if;
    end if;
   CLKout <= temp ;  --connect temp to CLKout

end process;
end behavioral;