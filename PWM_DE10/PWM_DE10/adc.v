

module adc_demo (FPGA_CLK1_50, KEY, LED, ADC_SCK,
						ADC_CONVST, ADC_SDO, ADC_SDI);
	input FPGA_CLK1_50;
	input [0:0] KEY;
	output [7:0] LED;
	input ADC_SDO;
	output ADC_SCK, ADC_CONVST, ADC_SDI;
	nios_system NIOS (
		.clk_clk (FPGA_CLK1_50),
		.reset_reset_n (KEY[0]),
		.leds_export (LED),
		.adc_sclk (ADC_SCK),
		.adc_cs_n (ADC_CONVST),
		.adc_dout (ADC_SDO),
		.adc_din (ADC_SDI)
	);
endmodule
