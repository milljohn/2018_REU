-- Originally written to interface with buttons
-- Controls the phase by counting up or down within the boundaries of 0 and max_val

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std;

entity pwm_phase_control is
	generic (max_val : integer);
	port (
		clock         : in std_logic;
		button_up     : in std_logic;
		button_down   : in std_logic;
		
		pwm_phase     : out integer
	);
	
end entity;

architecture rtl of pwm_phase_control is

	--max_val is used to constrain count
	signal count     : integer range 0 to max_val :=0;

	begin

	process(clock)
		--probably not needed to initialize forward =0
		variable foward : std_logic :='0';
		
		begin
				

				if rising_edge(clock) then
					
					--boolean foward, is true-count up, is false-count down
					if foward = '0' then
						count <= count +1;
					elsif foward = '1' then
						count <= count - 1;
					end if;
					
					--keep the count inside the boundaries
					if count = max_val-1 then
						foward := '1';
					elsif count = 1 then
						foward :='0';
					end if;
					
					
					
				end if;
				
		end process;
		
		--output the results of count
		pwm_phase <= count;
		
end architecture;