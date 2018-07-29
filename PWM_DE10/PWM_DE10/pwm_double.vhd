--This code is adapted from:
-- https://www.pantechsolutions.net/fpga-projects/generating-pwm-signals-with-variable-duty-cycle-using-fpga
--This generates 2 sets of PWM waves
		-- each set is a wave and its inverse
		-- the second set is phase shifted by phase_2
-- total of 4 pwm waves as output

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity pwm_double is


	generic (clock_ticks   : integer	); --allows integer to be passed from top level

	port (
		  clk     	        : in std_logic;
		  
		  pwm_out_1 	     : buffer std_logic;
		  pwm_out_1_bar 	  : buffer std_logic;
		  
		  phase_2           : in integer;
		  pwm_out_2 	     : buffer std_logic;
		  pwm_out_2_bar 	  : buffer std_logic

	);

end entity;

architecture rtl of pwm_double is


	signal   output_11      : std_logic_vector(10 downto 0);
	signal   pwm_signal_2 : std_logic := '0';
	signal   phase_2_int  : integer range 0 to clock_ticks;

begin

	process (clk)

		variable duty_cycle : integer range 0 to clock_ticks :=clock_ticks/2; --duty_cycle is constrained to clock_ticks is set to 50%
		variable count_1 : integer range 0 to clock_ticks := 0; --counting variable, constrained
		variable count_2 : integer range 0 to clock_ticks;      --counting variable, constrained
		
begin

	if (rising_edge(clk)) then
		
		--set count_2 = count_1 + phase_2
		if phase_2 /= abs (count_1 - count_2) then   -- This statement fixed the problem of not being able to have a variable phase shift.
			count_2 := count_1 + phase_2;             -- Without it, the phase shift had to be hard-coded to initialize to anything other than 0.
		end if;                                      -- 
		
		--increasing the count for each clock cycle
		count_1 := count_1 + 1;
		count_2 := count_2 + 1;


		--setting output to logic 1 when count reach duty cycle value
		--output stays at logic 1 @ duty_cycle <= count <=50000

		if (count_1 = duty_cycle) then
			pwm_out_1     <= '1';
			pwm_out_1_bar <= '0';
		end if;
		
		if (count_2 = duty_cycle) then
			pwm_signal_2  <= '0';
			pwm_out_2_bar <= '1';
		end if;

		--setting output to logic 0 when count reach 50000
		--output stays at logic 0 @ 50000,0 <= count <= duty_cycle

		if (count_1 = clock_ticks) then
			pwm_out_1     <= '0';
			pwm_out_1_bar <= '1';
			count_1       := 0;
		end if;

		if (count_2 = clock_ticks) then
			pwm_signal_2  <= '1';
			pwm_out_2_bar <= '0';
			count_2:= 0;
		end if;
		
	end if;

end process;
	pwm_out_2 <= pwm_signal_2;

end rtl;

