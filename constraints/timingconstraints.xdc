## timing assertions
create_clock -period 10.000 -name {pcie_diff_clock_rtl_clk_p[0]} -waveform {0.000 5.000} [get_ports {pcie_diff_clock_rtl_clk_p[0]}]

##PCIe reset constraints
# asynchronous input so no time to meet
set_input_delay -clock pcie_diff_clock_rtl_clk_p[0] -min -add_delay 0.000 [get_ports pcie_reset_n]
set_input_delay -clock pcie_diff_clock_rtl_clk_p[0] -max -add_delay 0.000 [get_ports pcie_reset_n]

## ADC input constraints
# LTC2208 tpd=1.3ns min 2.8ns max; assumed trace delay 0.1 to 0.5ns (approx 3cm to 15cm)
# see formula Xilinx UG949 p158
set_input_delay -clock [get_clocks clock_122_in_p] -min -add_delay 1.400 [get_ports {ADC1_In_N[*]}]
set_input_delay -clock [get_clocks clock_122_in_p] -max -add_delay 3.300 [get_ports {ADC1_In_N[*]}]
set_input_delay -clock [get_clocks clock_122_in_p] -min -add_delay 1.400 [get_ports {ADC1_In_P[*]}]
set_input_delay -clock [get_clocks clock_122_in_p] -max -add_delay 3.300 [get_ports {ADC1_In_P[*]}]
set_input_delay -clock [get_clocks clock_122_in_p] -min -add_delay 1.400 [get_ports {ADC2_In_N[*]}]
set_input_delay -clock [get_clocks clock_122_in_p] -max -add_delay 3.300 [get_ports {ADC2_In_N[*]}]
set_input_delay -clock [get_clocks clock_122_in_p] -min -add_delay 1.400 [get_ports {ADC2_In_P[*]}]
set_input_delay -clock [get_clocks clock_122_in_p] -max -add_delay 3.300 [get_ports {ADC2_In_P[*]}]
set_input_delay -clock [get_clocks clock_122_in_p] -min -add_delay 1.400 [get_ports ADC1Ovr_In_N]
set_input_delay -clock [get_clocks clock_122_in_p] -max -add_delay 3.300 [get_ports ADC1Ovr_In_N]
set_input_delay -clock [get_clocks clock_122_in_p] -min -add_delay 1.400 [get_ports ADC1Ovr_In_P]
set_input_delay -clock [get_clocks clock_122_in_p] -max -add_delay 3.300 [get_ports ADC1Ovr_In_P]
set_input_delay -clock [get_clocks clock_122_in_p] -min -add_delay 1.400 [get_ports ADC2Ovr_In_N]
set_input_delay -clock [get_clocks clock_122_in_p] -max -add_delay 3.300 [get_ports ADC2Ovr_In_N]
set_input_delay -clock [get_clocks clock_122_in_p] -min -add_delay 1.400 [get_ports ADC2Ovr_In_P]
set_input_delay -clock [get_clocks clock_122_in_p] -max -add_delay 3.300 [get_ports ADC2Ovr_In_P]
## DAC output constraints
# MAX5891 tsu -1.5ns min; th 2.6ns min assumed trace delay 0.1 to 0.5ns (approx 3cm to 15cm)
## (this means data can change up to 1.5ns AFTER the clock edge)
# for formula see Xilinx UG949 p160
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay -2.500 [get_ports {DAC_Out_N[*]}]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay -1.000 [get_ports {DAC_Out_N[*]}]
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay -2.500 [get_ports {DAC_Out_P[*]}]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay -1.000 [get_ports {DAC_Out_P[*]}]


## RF SPI control outputs
# timing should be guaranteed by design with edges separated by 12MHz clock cycles
create_clock -period 81.380 -name VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0 -waveform {0.000 40.690}
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.0 [get_ports {RF_SPI_CK}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.0 [get_ports {RF_SPI_CK}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.0 [get_ports {RF_SPI_DATA}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.0 [get_ports {RF_SPI_DATA}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.0 [get_ports {RF_SPI_RX_LOAD}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.0 [get_ports {RF_SPI_RX_LOAD}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.0 [get_ports {RF_SPI_TX_LOAD}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.0 [get_ports {RF_SPI_TX_LOAD}]

## CODEC input & output constraints
# timing should be guaranteed by design with clock edges for data separated from BCLK
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports BCLK]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports BCLK]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports LRCLK]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports LRCLK]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports i2stxd]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports i2stxd]
set_input_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports i2srxd]
set_input_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports i2srxd]

## serial atten control outputs
# timing should be guaranteed by design with clock edges for data separated by 12MHz clock cycles
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports ADC1_ATTEN_CLK]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports ADC1_ATTEN_CLK]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports ADC1_ATTEN_DAT]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports ADC1_ATTEN_DAT]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports ADC1_ATTEN_LE]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports ADC1_ATTEN_LE]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports ADC2_ATTEN_CLK]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports ADC2_ATTEN_CLK]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports ADC2_ATTEN_DAT]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports ADC2_ATTEN_DAT]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports ADC2_ATTEN_LE]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports ADC2_ATTEN_LE]

## PWM DAC output
# asynchronous, so needs no timings
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports TX_DAC_PWM]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports TX_DAC_PWM]

## EER envelope DAC output
# no timings set for now!
# assume timed from 12MHz clock for now
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports {DAC_SPI_MOSI[0]}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports {DAC_SPI_MOSI[0]}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports {DAC_SPI_CK[0]}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports {DAC_SPI_CK[0]}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports {DAC_SPI_SSn[0]}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports {DAC_SPI_SSn[0]}]
set_input_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports DAC_SPI_MISO]
set_input_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports DAC_SPI_MISO]


## asynchronous input constraints
# these all go to input synchroniser
# see formula Xilinx UG949 p158
set_input_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports {status_in[*]}]
set_input_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports {status_in[*]}]

## DAC atten output constraints
# these are not registered and require no timing
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -min -add_delay 0.000 [get_ports {Dac_Atten[*]}]
set_output_delay -clock [get_clocks {VIRTUAL_clk_out2_andromeda_top_clk_wiz_0_0}] -max -add_delay 0.000 [get_ports {Dac_Atten[*]}]

## LED and GPIO output constraints
# these are not registered and require no timing
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay 0.000 [get_ports {LEDOutputs[*]}]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay 0.000 [get_ports {LEDOutputs[*]}]
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay 0.000 [get_ports {GPIO_OUT[*]}]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay 0.000 [get_ports {GPIO_OUT[*]}]

## asynchronous strobe output constraints
# these are not registered and require no timing
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay 0.000 [get_ports {ATU_TUNE[0]}]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay 0.000 [get_ports {ATU_TUNE[0]}]
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay 0.000 [get_ports {CLASS_E_SEL[0]}]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay 0.000 [get_ports {CLASS_E_SEL[0]}]
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay 0.000 [get_ports CTRL_TRSW]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay 0.000 [get_ports CTRL_TRSW]
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay 0.000 [get_ports DRIVER_PA_EN]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay 0.000 [get_ports DRIVER_PA_EN]
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay 0.000 [get_ports {PURESIGNAL_ENABLE[0]}]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay 0.000 [get_ports {PURESIGNAL_ENABLE[0]}]
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay 0.000 [get_ports TXRX_RELAY]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay 0.000 [get_ports TXRX_RELAY]
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay 0.000 [get_ports {BIAS_CTRL[0]}]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay 0.000 [get_ports {BIAS_CTRL[0]}]
set_output_delay -clock [get_clocks clock_122_in_p] -min -add_delay 0.000 [get_ports MOX_strobe]
set_output_delay -clock [get_clocks clock_122_in_p] -max -add_delay 0.000 [get_ports MOX_strobe]


# serial prom constraints: see Xilinx PG153 p89-90
# You must provide all the delay numbers
# CCLK delay is 0.5, 8 ns min/max for Artix7-2; refer Data sheet
# Consider the max delay for worst case analysis
# Following are the SPI device parameters
# Max Tco
# Min Tco
# Setup time requirement
# Hold time requirement
# Following are the board/trace delay numbers
# Assumption is 2" to 4"
### End of user provided delay numbers
# this is to ensure min routing delay from SCK generation to STARTUP input
# User should change this value based on the results
# having more delay on this net reduces the Fmax
set_max_delay -datapath_only -from [get_pins -hier *SCK_O_reg_reg/C] -to [get_pins -hier *USRCCLKO] 2.000
set_min_delay -from [get_pins -hier *SCK_O_reg_reg/C] -to [get_pins -hier *USRCCLKO] 0.100
# Following command creates a divide by 8 clock
# It also takes into account the delay added by STARTUP block to route the CCLK
create_generated_clock -name clk_sck -source [get_pins -hierarchical *axi_quad_spi_0/ext_spi_clk] [get_pins -hierarchical *USRCCLKO] -edges {1 9 17} -edge_shift [list 8.000 8.000 8.000] 
# Data is captured into FPGA on the second rising edge of ext_spi_clk after the SCK falling edge
# Data is driven by the FPGA on every alternate rising_edge of ext_spi_clk
set_input_delay -clock clk_sck -max 8.800 [get_ports PROM_SPI_MISO] -clock_fall 
set_input_delay -clock clk_sck -min 0.400 [get_ports PROM_SPI_MISO] -clock_fall 

set_multicycle_path 2 -setup -from clk_sck -to [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] 
set_multicycle_path 1 -hold -end -from clk_sck -to [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]]
# Data is captured into SPI on the following rising edge of SCK
# Data is driven by the IP on alternate rising_edge of the ext_spi_clk
set_output_delay -clock clk_sck -max 1.700 [get_ports PROM_SPI_MOSI]
set_output_delay -clock clk_sck -min -2.200 [get_ports PROM_SPI_MOSI]
set_output_delay -clock clk_sck -max 1.700 [get_ports PROM_SPI_SSn[0]]
set_output_delay -clock clk_sck -min -2.200 [get_ports PROM_SPI_SSn[0]]
set_multicycle_path 2 -setup -start -from [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] -to clk_sck
set_multicycle_path 1 -hold -from [get_clocks -of_objects [get_pins -hierarchical */ext_spi_clk]] -to clk_sck




## timing exceptions
# asynchronous reset out from PCIe core into synchronising double D flip flop
set_false_path -from [get_pins andromeda_top_i/PCIe/xdma_0/inst/andromeda_top_xdma_0_0_pcie2_to_pcie3_wrapper_i/pcie2_ip_i/inst/inst/user_reset_out_reg/C] -to [get_pins {andromeda_top_i/PCIe/Double_D_register_0/inst/Intermediate_reg[0]/D}]
# asynchronous reset in to pcie express core (copied from xilinx example design)
set_false_path -from [get_ports pcie_reset_n]






