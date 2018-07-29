--This is the top level component. It takes the input from the FPGA clock, the clk_ticks scalar
--and outputs 4 PWMs on the GPIOs
--It also changes the phase shift of the second set of PWMs
--

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

LIBRARY altera;
USE altera.altera_primitives_components.all; 



entity pwm_test is
	generic (
													  --250 = 50MHz/200kHz
													  --1000 = 50MHz/50kHz
		clk_ticks           : integer      :=1000 
	);
	port (

			FPGA_CLK1_50 :in std_logic;
			FPGA_CLK2_50 :in std_logic;
			FPGA_CLK3_50 :in std_logic;
		  
		  LED	  : buffer std_logic_vector(7 downto 0);
		  
		  
		  KEY	     : in std_logic_vector(3 downto 0);
		  SW		  : in std_LOGIC_VECTOR(9 downto 0);
		  
		  GPIO_0   : buffer std_logic_vector(35 downto 0);
		  GPIO_1   : buffer std_logic_vector(35 downto 0)
	);
		  

end pwm_test;

architecture rtl of pwm_test is

-- Signals
-- The initial value of phase_shft is always 0. This is an interesting limitation of VHDL.
-- It is desirable to initialize the signal to a value, but this must be done inside a process.
-- ===============================================================================================================
	signal phase_shft   : integer :=250; --The initial value left to demonstrate propper syntax
--================================================================================================================
 
	begin

	
	--Produces two PWM signals
	--phase_shft changes the phase of second output
	--by the an integer ammount 0 to clk_ticks
	pwm_double_1	: entity work.pwm_double(rtl)
		generic map( clock_ticks   => clk_ticks
						)
		port map(
			clk        => FPGA_CLK1_50,
			
			pwm_out_1      => GPIO_1(33),
			pwm_out_1_bar  => GPIO_0(32),
			
			phase_2    => phase_shft,
			pwm_out_2      => GPIO_1(35),
			pwm_out_2_bar  => GPIO_0(34)
		);
		
	pwm_double_2	: entity work.pwm_double(rtl)
		generic map( clock_ticks   => clk_ticks
						)
		port map(
			clk        => FPGA_CLK2_50,
			
			pwm_out_1      => GPIO_1(0),
			pwm_out_1_bar  => GPIO_0(2),
			
			phase_2    => phase_shft,
			pwm_out_2      => GPIO_1(1),
			pwm_out_2_bar  => GPIO_0(4)
		);
	

	--phaser_auto demonstrates a changing phase_shft. 
	phaser_auto : entity work.phase_top(behavioral)
		generic map ( 
			clk_ticks => clk_ticks
		)
		port map (
			clk        => FPGA_CLK1_50,
			ticker_out => phase_shft
		);

end architecture;

