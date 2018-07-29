	adc_pwm u0 (
		.clk_clk       (<connected-to-clk_clk>),       //   clk.clk
		.reset_reset_n (<connected-to-reset_reset_n>), // reset.reset_n
		.adc_CONVST    (<connected-to-adc_CONVST>),    //   adc.CONVST
		.adc_SCK       (<connected-to-adc_SCK>),       //      .SCK
		.adc_SDI       (<connected-to-adc_SDI>),       //      .SDI
		.adc_SDO       (<connected-to-adc_SDO>),       //      .SDO
		.leds_export   (<connected-to-leds_export>)    //  leds.export
	);

