
module hps_emac (
	phy_txclk_o,
	clk_tx_i,
	clk_rx_i,
	rst_tx_n_o,
	rst_rx_n_o,
	mac_tx_clk_i,
	mac_rx_clk,
	mac_rxdv,
	mac_rxer,
	mac_rxd,
	mac_col,
	mac_crs,
	mac_tx_clk_o,
	mac_rst_tx_n,
	mac_rst_rx_n,
	mac_txd,
	mac_txen,
	mac_txer,
	mac_speed,
	mdi_in,
	mdo_out,
	mdo_out_en,
	clk,
	rst_n,
	read,
	write,
	writedata,
	readdata,
	addr,
	phy_txd_o,
	phy_txen_o,
	phy_txer_o,
	mdo_o,
	mdo_o_e,
	ptp_pps_o,
	phy_rxdv_i,
	phy_rxer_i,
	phy_rxd_i,
	phy_col_i,
	phy_crs_i,
	mdi_i,
	ptp_aux_ts_trig_i,
	ptp_aux_ts_trig_in,
	ptp_pps_out);	

	input		phy_txclk_o;
	output		clk_tx_i;
	output		clk_rx_i;
	input		rst_tx_n_o;
	input		rst_rx_n_o;
	input		mac_tx_clk_i;
	input		mac_rx_clk;
	input		mac_rxdv;
	input		mac_rxer;
	input	[7:0]	mac_rxd;
	input		mac_col;
	input		mac_crs;
	output		mac_tx_clk_o;
	output		mac_rst_tx_n;
	output		mac_rst_rx_n;
	output	[7:0]	mac_txd;
	output		mac_txen;
	output		mac_txer;
	output	[1:0]	mac_speed;
	input		mdi_in;
	output		mdo_out;
	output		mdo_out_en;
	input		clk;
	input		rst_n;
	input		read;
	input		write;
	input	[31:0]	writedata;
	output	[31:0]	readdata;
	input		addr;
	input	[7:0]	phy_txd_o;
	input		phy_txen_o;
	input		phy_txer_o;
	input		mdo_o;
	input		mdo_o_e;
	input		ptp_pps_o;
	output		phy_rxdv_i;
	output		phy_rxer_i;
	output	[7:0]	phy_rxd_i;
	output		phy_col_i;
	output		phy_crs_i;
	output		mdi_i;
	output		ptp_aux_ts_trig_i;
	input		ptp_aux_ts_trig_in;
	output		ptp_pps_out;
endmodule
