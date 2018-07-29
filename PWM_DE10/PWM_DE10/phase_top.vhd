--This module is just reducing the speed at which the phase_shft changes.
--It uses existing code rather than writing new code to implement a test

library ieee;
use ieee.std_logic_1164.all;

entity phase_top is

	generic (clk_ticks           : integer ); --allows integer to be passed from top level
	port (
		clk          : in  std_logic;
		ticker_out   : out integer

	);
	
end entity;

architecture behavioral of phase_top is

	signal dummy : std_logic_vector (3 downto 0);
	signal ticker, ticker1 : std_logic;

begin

tick_down : entity work.pwm(rtl)
	generic map (
		n          => clk_ticks/2
	)
	port map (
		  clk       => clk,
		  pwm_out_1 => ticker,
		  
		  phase_2   => 0,
		  pwm_out_2 => dummy(2)
	);

tick_down_2 : entity work.pwm(rtl)
	generic map (
		n          => clk_ticks/2
	)
	port map (
		  clk       => ticker,
		  pwm_out_1 => ticker1,
		  
		  phase_2   => 0,
		  pwm_out_2 => dummy(3)
	);


--this is takes the slowed down 
phase_control : entity work.pwm_phase_control (rtl)
		generic map (
			max_val     => clk_ticks/2
			)
		port map (
			clock       => ticker1,
			button_up   => dummy(0),
			button_down => dummy(1),
			pwm_phase   => ticker_out
		);
	




end architecture;
