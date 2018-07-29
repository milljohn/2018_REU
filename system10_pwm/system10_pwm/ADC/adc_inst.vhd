	component adc is
		port (
			slave_chipselect_n : in  std_logic                     := 'X';             -- chipselect_n
			slave_read_n       : in  std_logic                     := 'X';             -- read_n
			slave_readdata     : out std_logic_vector(15 downto 0);                    -- readdata
			slave_addr         : in  std_logic                     := 'X';             -- address
			slave_wrtie_n      : in  std_logic                     := 'X';             -- write_n
			slave_wriredata    : in  std_logic_vector(15 downto 0) := (others => 'X'); -- writedata
			ADC_CONVST         : out std_logic;                                        -- CONVST
			ADC_SCK            : out std_logic;                                        -- SCK
			ADC_SDI            : out std_logic;                                        -- SDI
			ADC_SDO            : in  std_logic                     := 'X';             -- SDO
			slave_reset_n      : in  std_logic                     := 'X';             -- reset_n
			slave_clk          : in  std_logic                     := 'X';             -- clk
			adc_clk            : in  std_logic                     := 'X'              -- clk
		);
	end component adc;

	u0 : component adc
		port map (
			slave_chipselect_n => CONNECTED_TO_slave_chipselect_n, --          slave.chipselect_n
			slave_read_n       => CONNECTED_TO_slave_read_n,       --               .read_n
			slave_readdata     => CONNECTED_TO_slave_readdata,     --               .readdata
			slave_addr         => CONNECTED_TO_slave_addr,         --               .address
			slave_wrtie_n      => CONNECTED_TO_slave_wrtie_n,      --               .write_n
			slave_wriredata    => CONNECTED_TO_slave_wriredata,    --               .writedata
			ADC_CONVST         => CONNECTED_TO_ADC_CONVST,         --    conduit_end.CONVST
			ADC_SCK            => CONNECTED_TO_ADC_SCK,            --               .SCK
			ADC_SDI            => CONNECTED_TO_ADC_SDI,            --               .SDI
			ADC_SDO            => CONNECTED_TO_ADC_SDO,            --               .SDO
			slave_reset_n      => CONNECTED_TO_slave_reset_n,      --     reset_sink.reset_n
			slave_clk          => CONNECTED_TO_slave_clk,          --     clock_sink.clk
			adc_clk            => CONNECTED_TO_adc_clk             -- clock_sink_adc.clk
		);

