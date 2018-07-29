
module adc_pwm (
	clk_clk,
	reset_reset_n,
	adc_CONVST,
	adc_SCK,
	adc_SDI,
	adc_SDO,
	leds_export);	

	input		clk_clk;
	input		reset_reset_n;
	output		adc_CONVST;
	output		adc_SCK;
	output		adc_SDI;
	input		adc_SDO;
	output	[7:0]	leds_export;
endmodule
