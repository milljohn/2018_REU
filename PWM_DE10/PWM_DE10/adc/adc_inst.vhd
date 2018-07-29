	component adc is
		port (
			clk_clk : in std_logic := 'X'  -- clk
		);
	end component adc;

	u0 : component adc
		port map (
			clk_clk => CONNECTED_TO_clk_clk  -- clk.clk
		);

