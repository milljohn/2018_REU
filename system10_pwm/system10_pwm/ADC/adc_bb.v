
module adc (
	slave_chipselect_n,
	slave_read_n,
	slave_readdata,
	slave_addr,
	slave_wrtie_n,
	slave_wriredata,
	ADC_CONVST,
	ADC_SCK,
	ADC_SDI,
	ADC_SDO,
	slave_reset_n,
	slave_clk,
	adc_clk);	

	input		slave_chipselect_n;
	input		slave_read_n;
	output	[15:0]	slave_readdata;
	input		slave_addr;
	input		slave_wrtie_n;
	input	[15:0]	slave_wriredata;
	output		ADC_CONVST;
	output		ADC_SCK;
	output		ADC_SDI;
	input		ADC_SDO;
	input		slave_reset_n;
	input		slave_clk;
	input		adc_clk;
endmodule
