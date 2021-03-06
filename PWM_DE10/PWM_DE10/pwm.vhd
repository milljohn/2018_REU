-- This code was adapted from:
-- https://www.pantechsolutions.net/fpga-projects/generating-pwm-signals-with-variable-duty-cycle-using-fpga
-- This generates two pwm signals from a clock and offsets the second signal by phase_2
-- This is an earlier version of the code that does not have the inverse wave.
-- Used for testing.


library ieee;
use ieee.std_logic_1164.all;

entity pwm is
	--250 = 5MHz/200kHz
	--1000 = 50MHz/50kHz
--	generic (n: integer := 1000); --hard coded value
	generic (n: integer); --allows integer to be passed from top level

	port (
		  clk     	     : in std_logic;
		  
		  pwm_out_1 	  : buffer std_logic;
		  
		  phase_2   	  : in integer range 0 to n;
		  pwm_out_2 	  : buffer std_logic

	);

end entity;

architecture rtl of pwm is

begin

	process (clk)
		variable count_1 : integer range 0 to n := 0;
		variable count_2 : integer range 0 to n := phase_2;

		--variable to change duty cycle of the pulse
		variable duty_cycle : integer range 0 to n;
		

begin
	
	if (rising_edge(clk)) then
		
		--50% duty cycle
		duty_cycle := n/2;
		
		--increasing the count for each clock cycle
		count_1 := count_1+1;
		count_2 := count_2+1;

		--setting output to logic 1 when count reach duty cycle value
		--output stays at logic 1 @ duty_cycle <= count <=50000

		if (count_1 = duty_cycle) then
			pwm_out_1 <= '1';
		end if;
		
		if (count_2 >= duty_cycle) then
			pwm_out_2 <= '1';
		end if;

		--setting output to logic 0 when count reach 50000
		--output stays at logic 0 @ 50000,0 <= count <= duty_cycle

		if (count_1 = n) then
			pwm_out_1 <= '0';
			count_1:= 0;
		end if;

		if (count_2 = n) then
			pwm_out_2 <= '0';
			count_2:= 0;
		end if;
		
	end if;

end process;

end rtl;

