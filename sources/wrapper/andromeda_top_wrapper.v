//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Thu Jan 24 22:43:27 2019
//Host        : desk-PC running 64-bit major release  (build 9200)
//Command     : generate_target andromeda_top_wrapper.bd
//Design      : andromeda_top_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module andromeda_top_wrapper
   (ADC1Ovr_In_N,
    ADC1Ovr_In_P,
    ADC1_ATTEN_CLK,
    ADC1_ATTEN_DAT,
    ADC1_ATTEN_LE,
    ADC1_CLKin_N,
    ADC1_CLKin_P,
    ADC1_In_N,
    ADC1_In_P,
    ADC2Ovr_In_N,
    ADC2Ovr_In_P,
    ADC2_ATTEN_CLK,
    ADC2_ATTEN_DAT,
    ADC2_ATTEN_LE,
    ADC2_CLKin_N,
    ADC2_CLKin_P,
    ADC2_In_N,
    ADC2_In_P,
    ATU_TUNE,
    BCLK,
    BIAS_CTRL,
    CLASS_E_SEL,
    CTRL_TRSW,
    DAC_Out_N,
    DAC_Out_P,
    DAC_SPI_CK,
    DAC_SPI_MISO,
    DAC_SPI_MOSI,
    DAC_SPI_SSn,
    DRIVER_PA_EN,
    Dac_Atten,
    GPIO_OUT,
    LEDOutputs,
    LRCLK,
    MCLK,
    MOX_strobe,
    PROM_SPI_MISO,
    PROM_SPI_MOSI,
    PROM_SPI_SSn,
    PURESIGNAL_ENABLE,
    RF_SPI_CK,
    RF_SPI_DATA,
    RF_SPI_RX_LOAD,
    RF_SPI_TX_LOAD,
    TXRX_RELAY,
    TX_DAC_PWM,
    clock_122_in_n,
    clock_122_in_p,
    i2srxd,
    i2stxd,
    pcie_7x_mgt_rtl_0_rxn,
    pcie_7x_mgt_rtl_0_rxp,
    pcie_7x_mgt_rtl_0_txn,
    pcie_7x_mgt_rtl_0_txp,
    pcie_diff_clock_rtl_clk_n,
    pcie_diff_clock_rtl_clk_p,
    pcie_reset_n,
    pll_cr,
    ref_in_10,
    status_in);
  input ADC1Ovr_In_N;
  input ADC1Ovr_In_P;
  output ADC1_ATTEN_CLK;
  output ADC1_ATTEN_DAT;
  output ADC1_ATTEN_LE;
  input ADC1_CLKin_N;
  input ADC1_CLKin_P;
  input [15:0]ADC1_In_N;
  input [15:0]ADC1_In_P;
  input ADC2Ovr_In_N;
  input ADC2Ovr_In_P;
  output ADC2_ATTEN_CLK;
  output ADC2_ATTEN_DAT;
  output ADC2_ATTEN_LE;
  input ADC2_CLKin_N;
  input ADC2_CLKin_P;
  input [15:0]ADC2_In_N;
  input [15:0]ADC2_In_P;
  output [0:0]ATU_TUNE;
  output BCLK;
  output [0:0]BIAS_CTRL;
  output [0:0]CLASS_E_SEL;
  output CTRL_TRSW;
  output [15:0]DAC_Out_N;
  output [15:0]DAC_Out_P;
  output [0:0]DAC_SPI_CK;
  input DAC_SPI_MISO;
  output [0:0]DAC_SPI_MOSI;
  output [0:0]DAC_SPI_SSn;
  output DRIVER_PA_EN;
  output [5:0]Dac_Atten;
  output [23:0]GPIO_OUT;
  output [15:0]LEDOutputs;
  output LRCLK;
  output MCLK;
  output MOX_strobe;
  input PROM_SPI_MISO;
  output PROM_SPI_MOSI;
  output [0:0]PROM_SPI_SSn;
  output [0:0]PURESIGNAL_ENABLE;
  output RF_SPI_CK;
  output RF_SPI_DATA;
  output RF_SPI_RX_LOAD;
  output RF_SPI_TX_LOAD;
  output TXRX_RELAY;
  output TX_DAC_PWM;
  input clock_122_in_n;
  input clock_122_in_p;
  input i2srxd;
  output i2stxd;
  input [3:0]pcie_7x_mgt_rtl_0_rxn;
  input [3:0]pcie_7x_mgt_rtl_0_rxp;
  output [3:0]pcie_7x_mgt_rtl_0_txn;
  output [3:0]pcie_7x_mgt_rtl_0_txp;
  input [0:0]pcie_diff_clock_rtl_clk_n;
  input [0:0]pcie_diff_clock_rtl_clk_p;
  input pcie_reset_n;
  output pll_cr;
  input ref_in_10;
  input [9:0]status_in;

  wire ADC1Ovr_In_N;
  wire ADC1Ovr_In_P;
  wire ADC1_ATTEN_CLK;
  wire ADC1_ATTEN_DAT;
  wire ADC1_ATTEN_LE;
  wire ADC1_CLKin_N;
  wire ADC1_CLKin_P;
  wire [15:0]ADC1_In_N;
  wire [15:0]ADC1_In_P;
  wire ADC2Ovr_In_N;
  wire ADC2Ovr_In_P;
  wire ADC2_ATTEN_CLK;
  wire ADC2_ATTEN_DAT;
  wire ADC2_ATTEN_LE;
  wire ADC2_CLKin_N;
  wire ADC2_CLKin_P;
  wire [15:0]ADC2_In_N;
  wire [15:0]ADC2_In_P;
  wire [0:0]ATU_TUNE;
  wire BCLK;
  wire [0:0]BIAS_CTRL;
  wire [0:0]CLASS_E_SEL;
  wire CTRL_TRSW;
  wire [15:0]DAC_Out_N;
  wire [15:0]DAC_Out_P;
  wire [0:0]DAC_SPI_CK;
  wire DAC_SPI_MISO;
  wire [0:0]DAC_SPI_MOSI;
  wire [0:0]DAC_SPI_SSn;
  wire DRIVER_PA_EN;
  wire [5:0]Dac_Atten;
  wire [23:0]GPIO_OUT;
  wire [15:0]LEDOutputs;
  wire LRCLK;
  wire MCLK;
  wire MOX_strobe;
  wire PROM_SPI_MISO;
  wire PROM_SPI_MOSI;
  wire [0:0]PROM_SPI_SSn;
  wire [0:0]PURESIGNAL_ENABLE;
  wire RF_SPI_CK;
  wire RF_SPI_DATA;
  wire RF_SPI_RX_LOAD;
  wire RF_SPI_TX_LOAD;
  wire TXRX_RELAY;
  wire TX_DAC_PWM;
  wire clock_122_in_n;
  wire clock_122_in_p;
  wire i2srxd;
  wire i2stxd;
  wire [3:0]pcie_7x_mgt_rtl_0_rxn;
  wire [3:0]pcie_7x_mgt_rtl_0_rxp;
  wire [3:0]pcie_7x_mgt_rtl_0_txn;
  wire [3:0]pcie_7x_mgt_rtl_0_txp;
  wire [0:0]pcie_diff_clock_rtl_clk_n;
  wire [0:0]pcie_diff_clock_rtl_clk_p;
  wire pcie_reset_n;
  wire pll_cr;
  wire ref_in_10;
  wire [9:0]status_in;

  andromeda_top andromeda_top_i
       (.ADC1Ovr_In_N(ADC1Ovr_In_N),
        .ADC1Ovr_In_P(ADC1Ovr_In_P),
        .ADC1_ATTEN_CLK(ADC1_ATTEN_CLK),
        .ADC1_ATTEN_DAT(ADC1_ATTEN_DAT),
        .ADC1_ATTEN_LE(ADC1_ATTEN_LE),
        .ADC1_CLKin_N(ADC1_CLKin_N),
        .ADC1_CLKin_P(ADC1_CLKin_P),
        .ADC1_In_N(ADC1_In_N),
        .ADC1_In_P(ADC1_In_P),
        .ADC2Ovr_In_N(ADC2Ovr_In_N),
        .ADC2Ovr_In_P(ADC2Ovr_In_P),
        .ADC2_ATTEN_CLK(ADC2_ATTEN_CLK),
        .ADC2_ATTEN_DAT(ADC2_ATTEN_DAT),
        .ADC2_ATTEN_LE(ADC2_ATTEN_LE),
        .ADC2_CLKin_N(ADC2_CLKin_N),
        .ADC2_CLKin_P(ADC2_CLKin_P),
        .ADC2_In_N(ADC2_In_N),
        .ADC2_In_P(ADC2_In_P),
        .ATU_TUNE(ATU_TUNE),
        .BCLK(BCLK),
        .BIAS_CTRL(BIAS_CTRL),
        .CLASS_E_SEL(CLASS_E_SEL),
        .CTRL_TRSW(CTRL_TRSW),
        .DAC_Out_N(DAC_Out_N),
        .DAC_Out_P(DAC_Out_P),
        .DAC_SPI_CK(DAC_SPI_CK),
        .DAC_SPI_MISO(DAC_SPI_MISO),
        .DAC_SPI_MOSI(DAC_SPI_MOSI),
        .DAC_SPI_SSn(DAC_SPI_SSn),
        .DRIVER_PA_EN(DRIVER_PA_EN),
        .Dac_Atten(Dac_Atten),
        .GPIO_OUT(GPIO_OUT),
        .LEDOutputs(LEDOutputs),
        .LRCLK(LRCLK),
        .MCLK(MCLK),
        .MOX_strobe(MOX_strobe),
        .PROM_SPI_MISO(PROM_SPI_MISO),
        .PROM_SPI_MOSI(PROM_SPI_MOSI),
        .PROM_SPI_SSn(PROM_SPI_SSn),
        .PURESIGNAL_ENABLE(PURESIGNAL_ENABLE),
        .RF_SPI_CK(RF_SPI_CK),
        .RF_SPI_DATA(RF_SPI_DATA),
        .RF_SPI_RX_LOAD(RF_SPI_RX_LOAD),
        .RF_SPI_TX_LOAD(RF_SPI_TX_LOAD),
        .TXRX_RELAY(TXRX_RELAY),
        .TX_DAC_PWM(TX_DAC_PWM),
        .clock_122_in_n(clock_122_in_n),
        .clock_122_in_p(clock_122_in_p),
        .i2srxd(i2srxd),
        .i2stxd(i2stxd),
        .pcie_7x_mgt_rtl_0_rxn(pcie_7x_mgt_rtl_0_rxn),
        .pcie_7x_mgt_rtl_0_rxp(pcie_7x_mgt_rtl_0_rxp),
        .pcie_7x_mgt_rtl_0_txn(pcie_7x_mgt_rtl_0_txn),
        .pcie_7x_mgt_rtl_0_txp(pcie_7x_mgt_rtl_0_txp),
        .pcie_diff_clock_rtl_clk_n(pcie_diff_clock_rtl_clk_n),
        .pcie_diff_clock_rtl_clk_p(pcie_diff_clock_rtl_clk_p),
        .pcie_reset_n(pcie_reset_n),
        .pll_cr(pll_cr),
        .ref_in_10(ref_in_10),
        .status_in(status_in));
endmodule
