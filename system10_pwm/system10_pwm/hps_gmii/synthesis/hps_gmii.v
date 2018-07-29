// hps_gmii.v

// Generated using ACDS version 17.0 595

`timescale 1 ps / 1 ps
module hps_gmii (
		input  wire       hps_gmii_phy_tx_clk_o,    //       hps_gmii.phy_tx_clk_o
		input  wire       hps_gmii_rst_tx_n,        //               .rst_tx_n
		input  wire       hps_gmii_rst_rx_n,        //               .rst_rx_n
		input  wire [7:0] hps_gmii_phy_txd_o,       //               .phy_txd_o
		input  wire       hps_gmii_phy_txen_o,      //               .phy_txen_o
		input  wire       hps_gmii_phy_txer_o,      //               .phy_txer_o
		input  wire [1:0] hps_gmii_phy_mac_speed_o, //               .phy_mac_speed_o
		output wire       hps_gmii_phy_tx_clk_i,    //               .phy_tx_clk_i
		output wire       hps_gmii_phy_rx_clk_i,    //               .phy_rx_clk_i
		output wire       hps_gmii_phy_rxdv_i,      //               .phy_rxdv_i
		output wire       hps_gmii_phy_rxer_i,      //               .phy_rxer_i
		output wire [7:0] hps_gmii_phy_rxd_i,       //               .phy_rxd_i
		output wire       hps_gmii_phy_col_i,       //               .phy_col_i
		output wire       hps_gmii_phy_crs_i,       //               .phy_crs_i
		input  wire       peri_clock_clk,           //     peri_clock.clk
		input  wire       peri_reset_reset_n,       //     peri_reset.reset_n
		input  wire       phy_rgmii_rgmii_rx_clk,   //      phy_rgmii.rgmii_rx_clk
		input  wire [3:0] phy_rgmii_rgmii_rxd,      //               .rgmii_rxd
		input  wire       phy_rgmii_rgmii_rx_ctl,   //               .rgmii_rx_ctl
		output wire       phy_rgmii_rgmii_tx_clk,   //               .rgmii_tx_clk
		output wire [3:0] phy_rgmii_rgmii_txd,      //               .rgmii_txd
		output wire       phy_rgmii_rgmii_tx_ctl,   //               .rgmii_tx_ctl
		input  wire       pll_25m_clock_clk,        //  pll_25m_clock.clk
		input  wire       pll_2_5m_clock_clk        // pll_2_5m_clock.clk
	);

	hps_gmii_gmii_to_rgmii_adapter_0 #(
		.TX_PIPELINE_DEPTH (2),
		.RX_PIPELINE_DEPTH (2)
	) gmii_to_rgmii_adapter_0 (
		.peri_clock_clk           (peri_clock_clk),           //     peri_clock.clk
		.peri_reset_reset_n       (peri_reset_reset_n),       //     peri_reset.reset_n
		.hps_gmii_phy_tx_clk_o    (hps_gmii_phy_tx_clk_o),    //       hps_gmii.phy_tx_clk_o
		.hps_gmii_rst_tx_n        (hps_gmii_rst_tx_n),        //               .rst_tx_n
		.hps_gmii_rst_rx_n        (hps_gmii_rst_rx_n),        //               .rst_rx_n
		.hps_gmii_phy_txd_o       (hps_gmii_phy_txd_o),       //               .phy_txd_o
		.hps_gmii_phy_txen_o      (hps_gmii_phy_txen_o),      //               .phy_txen_o
		.hps_gmii_phy_txer_o      (hps_gmii_phy_txer_o),      //               .phy_txer_o
		.hps_gmii_phy_mac_speed_o (hps_gmii_phy_mac_speed_o), //               .phy_mac_speed_o
		.hps_gmii_phy_tx_clk_i    (hps_gmii_phy_tx_clk_i),    //               .phy_tx_clk_i
		.hps_gmii_phy_rx_clk_i    (hps_gmii_phy_rx_clk_i),    //               .phy_rx_clk_i
		.hps_gmii_phy_rxdv_i      (hps_gmii_phy_rxdv_i),      //               .phy_rxdv_i
		.hps_gmii_phy_rxer_i      (hps_gmii_phy_rxer_i),      //               .phy_rxer_i
		.hps_gmii_phy_rxd_i       (hps_gmii_phy_rxd_i),       //               .phy_rxd_i
		.hps_gmii_phy_col_i       (hps_gmii_phy_col_i),       //               .phy_col_i
		.hps_gmii_phy_crs_i       (hps_gmii_phy_crs_i),       //               .phy_crs_i
		.phy_rgmii_rgmii_rx_clk   (phy_rgmii_rgmii_rx_clk),   //      phy_rgmii.rgmii_rx_clk
		.phy_rgmii_rgmii_rxd      (phy_rgmii_rgmii_rxd),      //               .rgmii_rxd
		.phy_rgmii_rgmii_rx_ctl   (phy_rgmii_rgmii_rx_ctl),   //               .rgmii_rx_ctl
		.phy_rgmii_rgmii_tx_clk   (phy_rgmii_rgmii_tx_clk),   //               .rgmii_tx_clk
		.phy_rgmii_rgmii_txd      (phy_rgmii_rgmii_txd),      //               .rgmii_txd
		.phy_rgmii_rgmii_tx_ctl   (phy_rgmii_rgmii_tx_ctl),   //               .rgmii_tx_ctl
		.pll_25m_clock_clk        (pll_25m_clock_clk),        //  pll_25m_clock.clk
		.pll_2_5m_clock_clk       (pll_2_5m_clock_clk)        // pll_2_5m_clock.clk
	);

endmodule
