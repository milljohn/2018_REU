	component adc_pwm is
		port (
			clk_clk       : in  std_logic                    := 'X'; -- clk
			reset_reset_n : in  std_logic                    := 'X'; -- reset_n
			adc_CONVST    : out std_logic;                           -- CONVST
			adc_SCK       : out std_logic;                           -- SCK
			adc_SDI       : out std_logic;                           -- SDI
			adc_SDO       : in  std_logic                    := 'X'; -- SDO
			leds_export   : out std_logic_vector(7 downto 0)         -- export
		);
	end component adc_pwm;

	u0 : component adc_pwm
		port map (
			clk_clk       => CONNECTED_TO_clk_clk,       --   clk.clk
			reset_reset_n => CONNECTED_TO_reset_reset_n, -- reset.reset_n
			adc_CONVST    => CONNECTED_TO_adc_CONVST,    --   adc.CONVST
			adc_SCK       => CONNECTED_TO_adc_SCK,       --      .SCK
			adc_SDI       => CONNECTED_TO_adc_SDI,       --      .SDI
			adc_SDO       => CONNECTED_TO_adc_SDO,       --      .SDO
			leds_export   => CONNECTED_TO_leds_export    --  leds.export
		);

