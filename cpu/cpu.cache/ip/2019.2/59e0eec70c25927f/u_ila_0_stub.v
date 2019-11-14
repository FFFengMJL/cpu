// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Thu Nov 14 16:37:31 2019
// Host        : LAPTOP-PC15NQ51 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ u_ila_0_stub.v
// Design      : u_ila_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2019.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, probe7, probe8, probe9, probe10, probe11, probe12, probe13, probe14, probe15, probe16)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[31:0],probe2[4:0],probe3[31:0],probe4[31:0],probe5[4:0],probe6[31:0],probe7[31:0],probe8[31:0],probe9[4:0],probe10[31:0],probe11[31:0],probe12[31:0],probe13[31:0],probe14[31:0],probe15[4:0],probe16[0:0]" */;
  input clk;
  input [31:0]probe0;
  input [31:0]probe1;
  input [4:0]probe2;
  input [31:0]probe3;
  input [31:0]probe4;
  input [4:0]probe5;
  input [31:0]probe6;
  input [31:0]probe7;
  input [31:0]probe8;
  input [4:0]probe9;
  input [31:0]probe10;
  input [31:0]probe11;
  input [31:0]probe12;
  input [31:0]probe13;
  input [31:0]probe14;
  input [4:0]probe15;
  input [0:0]probe16;
endmodule