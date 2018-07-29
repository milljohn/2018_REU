--IP Functional Simulation Model
--VERSION_BEGIN 15.0 cbx_mgl 2015:06:03:18:12:19:SJ cbx_simgen 2015:06:03:18:07:20:SJ  VERSION_END


-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

--synthesis_resources = mux21 8 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  adc_mm_interconnect_0_router IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (88 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (3 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (88 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END adc_mm_interconnect_0_router;

 ARCHITECTURE RTL OF adc_mm_interconnect_0_router IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_adc_mm_interconnect_0_router_src_channel_18m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_adc_mm_interconnect_0_router_src_channel_19m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_adc_mm_interconnect_0_router_src_channel_25m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_adc_mm_interconnect_0_router_src_channel_26m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_adc_mm_interconnect_0_router_src_channel_27m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_adc_mm_interconnect_0_router_src_data_22m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_adc_mm_interconnect_0_router_src_data_28m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_adc_mm_interconnect_0_router_src_data_29m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range123w291w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range126w276w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range144w271w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w2w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range126w290w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range129w275w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range147w270w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_adc_mm_interconnect_0_router_src_channel_1_259_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_adc_mm_interconnect_0_router_src_channel_2_275_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_adc_mm_interconnect_0_router_src_channel_3_291_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range123w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range126w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range129w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range144w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range147w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range123w291w(0) <= wire_w_sink_data_range123w(0) AND wire_w_lg_w_sink_data_range126w290w(0);
	wire_w_lg_w_sink_data_range126w276w(0) <= wire_w_sink_data_range126w(0) AND wire_w_lg_w_sink_data_range129w275w(0);
	wire_w_lg_w_sink_data_range144w271w(0) <= wire_w_sink_data_range144w(0) AND wire_w_lg_w_sink_data_range147w270w(0);
	wire_w1w(0) <= NOT s_wire_adc_mm_interconnect_0_router_src_channel_1_259_dataout;
	wire_w2w(0) <= NOT s_wire_adc_mm_interconnect_0_router_src_channel_2_275_dataout;
	wire_w_lg_w_sink_data_range126w290w(0) <= NOT wire_w_sink_data_range126w(0);
	wire_w_lg_w_sink_data_range129w275w(0) <= NOT wire_w_sink_data_range129w(0);
	wire_w_lg_w_sink_data_range147w270w(0) <= NOT wire_w_sink_data_range147w(0);
	s_wire_adc_mm_interconnect_0_router_src_channel_1_259_dataout <= ((wire_w_lg_w_sink_data_range144w271w(0) AND (NOT sink_data(49))) AND sink_data(50));
	s_wire_adc_mm_interconnect_0_router_src_channel_2_275_dataout <= ((((((((wire_w_lg_w_sink_data_range126w276w(0) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND sink_data(50));
	s_wire_adc_mm_interconnect_0_router_src_channel_3_291_dataout <= (((((((((wire_w_lg_w_sink_data_range123w291w(0) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND sink_data(50));
	sink_ready <= src_ready;
	src_channel <= ( s_wire_adc_mm_interconnect_0_router_src_channel_3_291_dataout & wire_adc_mm_interconnect_0_router_src_channel_25m_dataout & wire_adc_mm_interconnect_0_router_src_channel_26m_dataout & wire_adc_mm_interconnect_0_router_src_channel_27m_dataout);
	src_data <= ( sink_data(88 DOWNTO 76) & wire_adc_mm_interconnect_0_router_src_data_28m_dataout & wire_adc_mm_interconnect_0_router_src_data_29m_dataout & sink_data(73 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range123w(0) <= sink_data(40);
	wire_w_sink_data_range126w(0) <= sink_data(41);
	wire_w_sink_data_range129w(0) <= sink_data(42);
	wire_w_sink_data_range144w(0) <= sink_data(47);
	wire_w_sink_data_range147w(0) <= sink_data(48);
	wire_adc_mm_interconnect_0_router_src_channel_18m_dataout <= wire_w1w(0) AND NOT(s_wire_adc_mm_interconnect_0_router_src_channel_2_275_dataout);
	wire_adc_mm_interconnect_0_router_src_channel_19m_dataout <= s_wire_adc_mm_interconnect_0_router_src_channel_1_259_dataout AND NOT(s_wire_adc_mm_interconnect_0_router_src_channel_2_275_dataout);
	wire_adc_mm_interconnect_0_router_src_channel_25m_dataout <= wire_adc_mm_interconnect_0_router_src_channel_18m_dataout AND NOT(s_wire_adc_mm_interconnect_0_router_src_channel_3_291_dataout);
	wire_adc_mm_interconnect_0_router_src_channel_26m_dataout <= wire_adc_mm_interconnect_0_router_src_channel_19m_dataout AND NOT(s_wire_adc_mm_interconnect_0_router_src_channel_3_291_dataout);
	wire_adc_mm_interconnect_0_router_src_channel_27m_dataout <= s_wire_adc_mm_interconnect_0_router_src_channel_2_275_dataout AND NOT(s_wire_adc_mm_interconnect_0_router_src_channel_3_291_dataout);
	wire_adc_mm_interconnect_0_router_src_data_22m_dataout <= wire_w1w(0) AND NOT(s_wire_adc_mm_interconnect_0_router_src_channel_2_275_dataout);
	wire_adc_mm_interconnect_0_router_src_data_28m_dataout <= wire_w2w(0) AND NOT(s_wire_adc_mm_interconnect_0_router_src_channel_3_291_dataout);
	wire_adc_mm_interconnect_0_router_src_data_29m_dataout <= wire_adc_mm_interconnect_0_router_src_data_22m_dataout OR s_wire_adc_mm_interconnect_0_router_src_channel_3_291_dataout;

 END RTL; --adc_mm_interconnect_0_router
--synopsys translate_on
--VALID FILE
