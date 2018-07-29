	adc u0 (
		.slave_chipselect_n (<connected-to-slave_chipselect_n>), //          slave.chipselect_n
		.slave_read_n       (<connected-to-slave_read_n>),       //               .read_n
		.slave_readdata     (<connected-to-slave_readdata>),     //               .readdata
		.slave_addr         (<connected-to-slave_addr>),         //               .address
		.slave_wrtie_n      (<connected-to-slave_wrtie_n>),      //               .write_n
		.slave_wriredata    (<connected-to-slave_wriredata>),    //               .writedata
		.ADC_CONVST         (<connected-to-ADC_CONVST>),         //    conduit_end.CONVST
		.ADC_SCK            (<connected-to-ADC_SCK>),            //               .SCK
		.ADC_SDI            (<connected-to-ADC_SDI>),            //               .SDI
		.ADC_SDO            (<connected-to-ADC_SDO>),            //               .SDO
		.slave_reset_n      (<connected-to-slave_reset_n>),      //     reset_sink.reset_n
		.slave_clk          (<connected-to-slave_clk>),          //     clock_sink.clk
		.adc_clk            (<connected-to-adc_clk>)             // clock_sink_adc.clk
	);

