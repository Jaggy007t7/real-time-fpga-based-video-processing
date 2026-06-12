//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
//Date        : Fri Jun 12 14:44:14 2026
//Host        : DESKTOP-0CKSOFV running 64-bit major release  (build 9200)
//Command     : generate_target Inverter_wrapper.bd
//Design      : Inverter_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Inverter_wrapper
   (DDC_scl_io,
    DDC_sda_io,
    TMDS_1_clk_n,
    TMDS_1_clk_p,
    TMDS_1_data_n,
    TMDS_1_data_p,
    TMDS_clk_n,
    TMDS_clk_p,
    TMDS_data_n,
    TMDS_data_p,
    aPixelClkLckd_0,
    hdmi_hpd_rx,
    hdmi_hpd_tx,
    pLocked_0,
    sys_clock);
  inout DDC_scl_io;
  inout DDC_sda_io;
  output TMDS_1_clk_n;
  output TMDS_1_clk_p;
  output [2:0]TMDS_1_data_n;
  output [2:0]TMDS_1_data_p;
  input TMDS_clk_n;
  input TMDS_clk_p;
  input [2:0]TMDS_data_n;
  input [2:0]TMDS_data_p;
  output aPixelClkLckd_0;
  output [0:0]hdmi_hpd_rx;
  output [0:0]hdmi_hpd_tx;
  output pLocked_0;
  input sys_clock;

  wire DDC_scl_i;
  wire DDC_scl_io;
  wire DDC_scl_o;
  wire DDC_scl_t;
  wire DDC_sda_i;
  wire DDC_sda_io;
  wire DDC_sda_o;
  wire DDC_sda_t;
  wire TMDS_1_clk_n;
  wire TMDS_1_clk_p;
  wire [2:0]TMDS_1_data_n;
  wire [2:0]TMDS_1_data_p;
  wire TMDS_clk_n;
  wire TMDS_clk_p;
  wire [2:0]TMDS_data_n;
  wire [2:0]TMDS_data_p;
  wire aPixelClkLckd_0;
  wire [0:0]hdmi_hpd_rx;
  wire [0:0]hdmi_hpd_tx;
  wire pLocked_0;
  wire sys_clock;

  IOBUF DDC_scl_iobuf
       (.I(DDC_scl_o),
        .IO(DDC_scl_io),
        .O(DDC_scl_i),
        .T(DDC_scl_t));
  IOBUF DDC_sda_iobuf
       (.I(DDC_sda_o),
        .IO(DDC_sda_io),
        .O(DDC_sda_i),
        .T(DDC_sda_t));
  Inverter Inverter_i
       (.DDC_scl_i(DDC_scl_i),
        .DDC_scl_o(DDC_scl_o),
        .DDC_scl_t(DDC_scl_t),
        .DDC_sda_i(DDC_sda_i),
        .DDC_sda_o(DDC_sda_o),
        .DDC_sda_t(DDC_sda_t),
        .TMDS_1_clk_n(TMDS_1_clk_n),
        .TMDS_1_clk_p(TMDS_1_clk_p),
        .TMDS_1_data_n(TMDS_1_data_n),
        .TMDS_1_data_p(TMDS_1_data_p),
        .TMDS_clk_n(TMDS_clk_n),
        .TMDS_clk_p(TMDS_clk_p),
        .TMDS_data_n(TMDS_data_n),
        .TMDS_data_p(TMDS_data_p),
        .aPixelClkLckd_0(aPixelClkLckd_0),
        .hdmi_hpd_rx(hdmi_hpd_rx),
        .hdmi_hpd_tx(hdmi_hpd_tx),
        .pLocked_0(pLocked_0),
        .sys_clock(sys_clock));
endmodule
