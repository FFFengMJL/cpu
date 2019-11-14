// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2700185 Thu Oct 24 18:46:05 MDT 2019
// Date        : Mon Nov 11 22:29:45 2019
// Host        : LAPTOP-PC15NQ51 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               F:/Learning/CPU/GitHub/cpu/cpu/cpu.sim/sim_1/synth/timing/xsim/Storage_sim_time_synth.v
// Design      : alu32
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module alu32
   (aluOpCode,
    rega,
    regb,
    result,
    zero);
  input [2:0]aluOpCode;
  input [31:0]rega;
  input [31:0]regb;
  output [31:0]result;
  output zero;

  wire [2:0]aluOpCode;
  wire [2:0]aluOpCode_IBUF;
  wire [31:0]data0;
  wire [31:0]data1;
  wire [31:0]rega;
  wire [31:0]rega_IBUF;
  wire [31:0]regb;
  wire [31:0]regb_IBUF;
  wire [31:0]result;
  wire result2;
  wire [31:0]result_OBUF;
  wire \result_OBUF[0]_inst_i_10_n_0 ;
  wire \result_OBUF[0]_inst_i_11_n_0 ;
  wire \result_OBUF[0]_inst_i_12_n_0 ;
  wire \result_OBUF[0]_inst_i_13_n_0 ;
  wire \result_OBUF[0]_inst_i_14_n_0 ;
  wire \result_OBUF[0]_inst_i_15_n_0 ;
  wire \result_OBUF[0]_inst_i_16_n_0 ;
  wire \result_OBUF[0]_inst_i_16_n_1 ;
  wire \result_OBUF[0]_inst_i_16_n_2 ;
  wire \result_OBUF[0]_inst_i_16_n_3 ;
  wire \result_OBUF[0]_inst_i_17_n_0 ;
  wire \result_OBUF[0]_inst_i_18_n_0 ;
  wire \result_OBUF[0]_inst_i_19_n_0 ;
  wire \result_OBUF[0]_inst_i_20_n_0 ;
  wire \result_OBUF[0]_inst_i_21_n_0 ;
  wire \result_OBUF[0]_inst_i_22_n_0 ;
  wire \result_OBUF[0]_inst_i_23_n_0 ;
  wire \result_OBUF[0]_inst_i_24_n_0 ;
  wire \result_OBUF[0]_inst_i_25_n_0 ;
  wire \result_OBUF[0]_inst_i_25_n_1 ;
  wire \result_OBUF[0]_inst_i_25_n_2 ;
  wire \result_OBUF[0]_inst_i_25_n_3 ;
  wire \result_OBUF[0]_inst_i_26_n_0 ;
  wire \result_OBUF[0]_inst_i_27_n_0 ;
  wire \result_OBUF[0]_inst_i_28_n_0 ;
  wire \result_OBUF[0]_inst_i_29_n_0 ;
  wire \result_OBUF[0]_inst_i_2_n_0 ;
  wire \result_OBUF[0]_inst_i_30_n_0 ;
  wire \result_OBUF[0]_inst_i_31_n_0 ;
  wire \result_OBUF[0]_inst_i_32_n_0 ;
  wire \result_OBUF[0]_inst_i_33_n_0 ;
  wire \result_OBUF[0]_inst_i_34_n_0 ;
  wire \result_OBUF[0]_inst_i_35_n_0 ;
  wire \result_OBUF[0]_inst_i_36_n_0 ;
  wire \result_OBUF[0]_inst_i_37_n_0 ;
  wire \result_OBUF[0]_inst_i_38_n_0 ;
  wire \result_OBUF[0]_inst_i_39_n_0 ;
  wire \result_OBUF[0]_inst_i_3_n_0 ;
  wire \result_OBUF[0]_inst_i_40_n_0 ;
  wire \result_OBUF[0]_inst_i_41_n_0 ;
  wire \result_OBUF[0]_inst_i_4_n_1 ;
  wire \result_OBUF[0]_inst_i_4_n_2 ;
  wire \result_OBUF[0]_inst_i_4_n_3 ;
  wire \result_OBUF[0]_inst_i_5_n_0 ;
  wire \result_OBUF[0]_inst_i_6_n_0 ;
  wire \result_OBUF[0]_inst_i_7_n_0 ;
  wire \result_OBUF[0]_inst_i_7_n_1 ;
  wire \result_OBUF[0]_inst_i_7_n_2 ;
  wire \result_OBUF[0]_inst_i_7_n_3 ;
  wire \result_OBUF[0]_inst_i_8_n_0 ;
  wire \result_OBUF[0]_inst_i_9_n_0 ;
  wire \result_OBUF[10]_inst_i_2_n_0 ;
  wire \result_OBUF[10]_inst_i_3_n_0 ;
  wire \result_OBUF[10]_inst_i_4_n_0 ;
  wire \result_OBUF[10]_inst_i_5_n_0 ;
  wire \result_OBUF[10]_inst_i_6_n_0 ;
  wire \result_OBUF[11]_inst_i_10_n_0 ;
  wire \result_OBUF[11]_inst_i_11_n_0 ;
  wire \result_OBUF[11]_inst_i_12_n_0 ;
  wire \result_OBUF[11]_inst_i_13_n_0 ;
  wire \result_OBUF[11]_inst_i_14_n_0 ;
  wire \result_OBUF[11]_inst_i_15_n_0 ;
  wire \result_OBUF[11]_inst_i_2_n_0 ;
  wire \result_OBUF[11]_inst_i_3_n_0 ;
  wire \result_OBUF[11]_inst_i_4_n_0 ;
  wire \result_OBUF[11]_inst_i_5_n_0 ;
  wire \result_OBUF[11]_inst_i_5_n_1 ;
  wire \result_OBUF[11]_inst_i_5_n_2 ;
  wire \result_OBUF[11]_inst_i_5_n_3 ;
  wire \result_OBUF[11]_inst_i_6_n_0 ;
  wire \result_OBUF[11]_inst_i_7_n_0 ;
  wire \result_OBUF[11]_inst_i_7_n_1 ;
  wire \result_OBUF[11]_inst_i_7_n_2 ;
  wire \result_OBUF[11]_inst_i_7_n_3 ;
  wire \result_OBUF[11]_inst_i_8_n_0 ;
  wire \result_OBUF[11]_inst_i_9_n_0 ;
  wire \result_OBUF[12]_inst_i_2_n_0 ;
  wire \result_OBUF[12]_inst_i_3_n_0 ;
  wire \result_OBUF[12]_inst_i_4_n_0 ;
  wire \result_OBUF[12]_inst_i_5_n_0 ;
  wire \result_OBUF[13]_inst_i_2_n_0 ;
  wire \result_OBUF[13]_inst_i_3_n_0 ;
  wire \result_OBUF[13]_inst_i_4_n_0 ;
  wire \result_OBUF[13]_inst_i_5_n_0 ;
  wire \result_OBUF[14]_inst_i_2_n_0 ;
  wire \result_OBUF[14]_inst_i_3_n_0 ;
  wire \result_OBUF[14]_inst_i_4_n_0 ;
  wire \result_OBUF[14]_inst_i_5_n_0 ;
  wire \result_OBUF[15]_inst_i_10_n_0 ;
  wire \result_OBUF[15]_inst_i_11_n_0 ;
  wire \result_OBUF[15]_inst_i_12_n_0 ;
  wire \result_OBUF[15]_inst_i_13_n_0 ;
  wire \result_OBUF[15]_inst_i_14_n_0 ;
  wire \result_OBUF[15]_inst_i_15_n_0 ;
  wire \result_OBUF[15]_inst_i_2_n_0 ;
  wire \result_OBUF[15]_inst_i_3_n_0 ;
  wire \result_OBUF[15]_inst_i_4_n_0 ;
  wire \result_OBUF[15]_inst_i_5_n_0 ;
  wire \result_OBUF[15]_inst_i_5_n_1 ;
  wire \result_OBUF[15]_inst_i_5_n_2 ;
  wire \result_OBUF[15]_inst_i_5_n_3 ;
  wire \result_OBUF[15]_inst_i_6_n_0 ;
  wire \result_OBUF[15]_inst_i_7_n_0 ;
  wire \result_OBUF[15]_inst_i_7_n_1 ;
  wire \result_OBUF[15]_inst_i_7_n_2 ;
  wire \result_OBUF[15]_inst_i_7_n_3 ;
  wire \result_OBUF[15]_inst_i_8_n_0 ;
  wire \result_OBUF[15]_inst_i_9_n_0 ;
  wire \result_OBUF[16]_inst_i_2_n_0 ;
  wire \result_OBUF[16]_inst_i_3_n_0 ;
  wire \result_OBUF[16]_inst_i_4_n_0 ;
  wire \result_OBUF[16]_inst_i_5_n_0 ;
  wire \result_OBUF[17]_inst_i_2_n_0 ;
  wire \result_OBUF[17]_inst_i_3_n_0 ;
  wire \result_OBUF[17]_inst_i_4_n_0 ;
  wire \result_OBUF[17]_inst_i_5_n_0 ;
  wire \result_OBUF[18]_inst_i_2_n_0 ;
  wire \result_OBUF[18]_inst_i_3_n_0 ;
  wire \result_OBUF[18]_inst_i_4_n_0 ;
  wire \result_OBUF[18]_inst_i_5_n_0 ;
  wire \result_OBUF[19]_inst_i_10_n_0 ;
  wire \result_OBUF[19]_inst_i_11_n_0 ;
  wire \result_OBUF[19]_inst_i_12_n_0 ;
  wire \result_OBUF[19]_inst_i_13_n_0 ;
  wire \result_OBUF[19]_inst_i_14_n_0 ;
  wire \result_OBUF[19]_inst_i_15_n_0 ;
  wire \result_OBUF[19]_inst_i_2_n_0 ;
  wire \result_OBUF[19]_inst_i_3_n_0 ;
  wire \result_OBUF[19]_inst_i_4_n_0 ;
  wire \result_OBUF[19]_inst_i_5_n_0 ;
  wire \result_OBUF[19]_inst_i_5_n_1 ;
  wire \result_OBUF[19]_inst_i_5_n_2 ;
  wire \result_OBUF[19]_inst_i_5_n_3 ;
  wire \result_OBUF[19]_inst_i_6_n_0 ;
  wire \result_OBUF[19]_inst_i_7_n_0 ;
  wire \result_OBUF[19]_inst_i_7_n_1 ;
  wire \result_OBUF[19]_inst_i_7_n_2 ;
  wire \result_OBUF[19]_inst_i_7_n_3 ;
  wire \result_OBUF[19]_inst_i_8_n_0 ;
  wire \result_OBUF[19]_inst_i_9_n_0 ;
  wire \result_OBUF[1]_inst_i_2_n_0 ;
  wire \result_OBUF[1]_inst_i_3_n_0 ;
  wire \result_OBUF[1]_inst_i_4_n_0 ;
  wire \result_OBUF[1]_inst_i_5_n_0 ;
  wire \result_OBUF[1]_inst_i_6_n_0 ;
  wire \result_OBUF[1]_inst_i_7_n_0 ;
  wire \result_OBUF[20]_inst_i_2_n_0 ;
  wire \result_OBUF[20]_inst_i_3_n_0 ;
  wire \result_OBUF[20]_inst_i_4_n_0 ;
  wire \result_OBUF[20]_inst_i_5_n_0 ;
  wire \result_OBUF[21]_inst_i_2_n_0 ;
  wire \result_OBUF[21]_inst_i_3_n_0 ;
  wire \result_OBUF[21]_inst_i_4_n_0 ;
  wire \result_OBUF[21]_inst_i_5_n_0 ;
  wire \result_OBUF[22]_inst_i_2_n_0 ;
  wire \result_OBUF[22]_inst_i_3_n_0 ;
  wire \result_OBUF[22]_inst_i_4_n_0 ;
  wire \result_OBUF[22]_inst_i_5_n_0 ;
  wire \result_OBUF[23]_inst_i_10_n_0 ;
  wire \result_OBUF[23]_inst_i_11_n_0 ;
  wire \result_OBUF[23]_inst_i_12_n_0 ;
  wire \result_OBUF[23]_inst_i_13_n_0 ;
  wire \result_OBUF[23]_inst_i_14_n_0 ;
  wire \result_OBUF[23]_inst_i_15_n_0 ;
  wire \result_OBUF[23]_inst_i_2_n_0 ;
  wire \result_OBUF[23]_inst_i_3_n_0 ;
  wire \result_OBUF[23]_inst_i_4_n_0 ;
  wire \result_OBUF[23]_inst_i_5_n_0 ;
  wire \result_OBUF[23]_inst_i_5_n_1 ;
  wire \result_OBUF[23]_inst_i_5_n_2 ;
  wire \result_OBUF[23]_inst_i_5_n_3 ;
  wire \result_OBUF[23]_inst_i_6_n_0 ;
  wire \result_OBUF[23]_inst_i_7_n_0 ;
  wire \result_OBUF[23]_inst_i_7_n_1 ;
  wire \result_OBUF[23]_inst_i_7_n_2 ;
  wire \result_OBUF[23]_inst_i_7_n_3 ;
  wire \result_OBUF[23]_inst_i_8_n_0 ;
  wire \result_OBUF[23]_inst_i_9_n_0 ;
  wire \result_OBUF[24]_inst_i_2_n_0 ;
  wire \result_OBUF[24]_inst_i_3_n_0 ;
  wire \result_OBUF[24]_inst_i_4_n_0 ;
  wire \result_OBUF[24]_inst_i_5_n_0 ;
  wire \result_OBUF[25]_inst_i_2_n_0 ;
  wire \result_OBUF[25]_inst_i_3_n_0 ;
  wire \result_OBUF[25]_inst_i_4_n_0 ;
  wire \result_OBUF[25]_inst_i_5_n_0 ;
  wire \result_OBUF[26]_inst_i_2_n_0 ;
  wire \result_OBUF[26]_inst_i_3_n_0 ;
  wire \result_OBUF[26]_inst_i_4_n_0 ;
  wire \result_OBUF[26]_inst_i_5_n_0 ;
  wire \result_OBUF[27]_inst_i_10_n_0 ;
  wire \result_OBUF[27]_inst_i_11_n_0 ;
  wire \result_OBUF[27]_inst_i_12_n_0 ;
  wire \result_OBUF[27]_inst_i_13_n_0 ;
  wire \result_OBUF[27]_inst_i_14_n_0 ;
  wire \result_OBUF[27]_inst_i_15_n_0 ;
  wire \result_OBUF[27]_inst_i_16_n_0 ;
  wire \result_OBUF[27]_inst_i_2_n_0 ;
  wire \result_OBUF[27]_inst_i_3_n_0 ;
  wire \result_OBUF[27]_inst_i_4_n_0 ;
  wire \result_OBUF[27]_inst_i_5_n_0 ;
  wire \result_OBUF[27]_inst_i_5_n_1 ;
  wire \result_OBUF[27]_inst_i_5_n_2 ;
  wire \result_OBUF[27]_inst_i_5_n_3 ;
  wire \result_OBUF[27]_inst_i_6_n_0 ;
  wire \result_OBUF[27]_inst_i_7_n_0 ;
  wire \result_OBUF[27]_inst_i_8_n_0 ;
  wire \result_OBUF[27]_inst_i_8_n_1 ;
  wire \result_OBUF[27]_inst_i_8_n_2 ;
  wire \result_OBUF[27]_inst_i_8_n_3 ;
  wire \result_OBUF[27]_inst_i_9_n_0 ;
  wire \result_OBUF[28]_inst_i_2_n_0 ;
  wire \result_OBUF[28]_inst_i_3_n_0 ;
  wire \result_OBUF[28]_inst_i_4_n_0 ;
  wire \result_OBUF[28]_inst_i_5_n_0 ;
  wire \result_OBUF[28]_inst_i_6_n_0 ;
  wire \result_OBUF[29]_inst_i_2_n_0 ;
  wire \result_OBUF[29]_inst_i_3_n_0 ;
  wire \result_OBUF[29]_inst_i_4_n_0 ;
  wire \result_OBUF[29]_inst_i_5_n_0 ;
  wire \result_OBUF[2]_inst_i_10_n_0 ;
  wire \result_OBUF[2]_inst_i_11_n_0 ;
  wire \result_OBUF[2]_inst_i_2_n_0 ;
  wire \result_OBUF[2]_inst_i_3_n_0 ;
  wire \result_OBUF[2]_inst_i_4_n_0 ;
  wire \result_OBUF[2]_inst_i_5_n_0 ;
  wire \result_OBUF[2]_inst_i_5_n_1 ;
  wire \result_OBUF[2]_inst_i_5_n_2 ;
  wire \result_OBUF[2]_inst_i_5_n_3 ;
  wire \result_OBUF[2]_inst_i_6_n_0 ;
  wire \result_OBUF[2]_inst_i_7_n_0 ;
  wire \result_OBUF[2]_inst_i_8_n_0 ;
  wire \result_OBUF[2]_inst_i_9_n_0 ;
  wire \result_OBUF[30]_inst_i_2_n_0 ;
  wire \result_OBUF[30]_inst_i_3_n_0 ;
  wire \result_OBUF[30]_inst_i_4_n_0 ;
  wire \result_OBUF[30]_inst_i_5_n_0 ;
  wire \result_OBUF[31]_inst_i_10_n_0 ;
  wire \result_OBUF[31]_inst_i_11_n_0 ;
  wire \result_OBUF[31]_inst_i_12_n_0 ;
  wire \result_OBUF[31]_inst_i_13_n_0 ;
  wire \result_OBUF[31]_inst_i_14_n_0 ;
  wire \result_OBUF[31]_inst_i_15_n_0 ;
  wire \result_OBUF[31]_inst_i_16_n_0 ;
  wire \result_OBUF[31]_inst_i_17_n_0 ;
  wire \result_OBUF[31]_inst_i_18_n_0 ;
  wire \result_OBUF[31]_inst_i_19_n_0 ;
  wire \result_OBUF[31]_inst_i_20_n_1 ;
  wire \result_OBUF[31]_inst_i_20_n_2 ;
  wire \result_OBUF[31]_inst_i_20_n_3 ;
  wire \result_OBUF[31]_inst_i_21_n_1 ;
  wire \result_OBUF[31]_inst_i_21_n_2 ;
  wire \result_OBUF[31]_inst_i_21_n_3 ;
  wire \result_OBUF[31]_inst_i_22_n_0 ;
  wire \result_OBUF[31]_inst_i_23_n_0 ;
  wire \result_OBUF[31]_inst_i_24_n_0 ;
  wire \result_OBUF[31]_inst_i_25_n_0 ;
  wire \result_OBUF[31]_inst_i_26_n_0 ;
  wire \result_OBUF[31]_inst_i_27_n_0 ;
  wire \result_OBUF[31]_inst_i_28_n_0 ;
  wire \result_OBUF[31]_inst_i_29_n_0 ;
  wire \result_OBUF[31]_inst_i_2_n_0 ;
  wire \result_OBUF[31]_inst_i_30_n_0 ;
  wire \result_OBUF[31]_inst_i_31_n_0 ;
  wire \result_OBUF[31]_inst_i_32_n_0 ;
  wire \result_OBUF[31]_inst_i_33_n_0 ;
  wire \result_OBUF[31]_inst_i_34_n_0 ;
  wire \result_OBUF[31]_inst_i_35_n_0 ;
  wire \result_OBUF[31]_inst_i_36_n_0 ;
  wire \result_OBUF[31]_inst_i_37_n_0 ;
  wire \result_OBUF[31]_inst_i_3_n_0 ;
  wire \result_OBUF[31]_inst_i_4_n_0 ;
  wire \result_OBUF[31]_inst_i_5_n_0 ;
  wire \result_OBUF[31]_inst_i_6_n_0 ;
  wire \result_OBUF[31]_inst_i_7_n_0 ;
  wire \result_OBUF[31]_inst_i_8_n_0 ;
  wire \result_OBUF[31]_inst_i_9_n_0 ;
  wire \result_OBUF[3]_inst_i_2_n_0 ;
  wire \result_OBUF[3]_inst_i_3_n_0 ;
  wire \result_OBUF[3]_inst_i_4_n_0 ;
  wire \result_OBUF[3]_inst_i_5_n_0 ;
  wire \result_OBUF[3]_inst_i_5_n_1 ;
  wire \result_OBUF[3]_inst_i_5_n_2 ;
  wire \result_OBUF[3]_inst_i_5_n_3 ;
  wire \result_OBUF[3]_inst_i_6_n_0 ;
  wire \result_OBUF[3]_inst_i_7_n_0 ;
  wire \result_OBUF[3]_inst_i_8_n_0 ;
  wire \result_OBUF[3]_inst_i_9_n_0 ;
  wire \result_OBUF[4]_inst_i_2_n_0 ;
  wire \result_OBUF[4]_inst_i_3_n_0 ;
  wire \result_OBUF[4]_inst_i_4_n_0 ;
  wire \result_OBUF[5]_inst_i_2_n_0 ;
  wire \result_OBUF[5]_inst_i_3_n_0 ;
  wire \result_OBUF[5]_inst_i_4_n_0 ;
  wire \result_OBUF[6]_inst_i_2_n_0 ;
  wire \result_OBUF[6]_inst_i_3_n_0 ;
  wire \result_OBUF[6]_inst_i_4_n_0 ;
  wire \result_OBUF[7]_inst_i_10_n_0 ;
  wire \result_OBUF[7]_inst_i_11_n_0 ;
  wire \result_OBUF[7]_inst_i_12_n_0 ;
  wire \result_OBUF[7]_inst_i_13_n_0 ;
  wire \result_OBUF[7]_inst_i_14_n_0 ;
  wire \result_OBUF[7]_inst_i_15_n_0 ;
  wire \result_OBUF[7]_inst_i_2_n_0 ;
  wire \result_OBUF[7]_inst_i_3_n_0 ;
  wire \result_OBUF[7]_inst_i_4_n_0 ;
  wire \result_OBUF[7]_inst_i_5_n_0 ;
  wire \result_OBUF[7]_inst_i_5_n_1 ;
  wire \result_OBUF[7]_inst_i_5_n_2 ;
  wire \result_OBUF[7]_inst_i_5_n_3 ;
  wire \result_OBUF[7]_inst_i_6_n_0 ;
  wire \result_OBUF[7]_inst_i_7_n_0 ;
  wire \result_OBUF[7]_inst_i_7_n_1 ;
  wire \result_OBUF[7]_inst_i_7_n_2 ;
  wire \result_OBUF[7]_inst_i_7_n_3 ;
  wire \result_OBUF[7]_inst_i_8_n_0 ;
  wire \result_OBUF[7]_inst_i_9_n_0 ;
  wire \result_OBUF[8]_inst_i_2_n_0 ;
  wire \result_OBUF[8]_inst_i_3_n_0 ;
  wire \result_OBUF[8]_inst_i_4_n_0 ;
  wire \result_OBUF[8]_inst_i_5_n_0 ;
  wire \result_OBUF[9]_inst_i_2_n_0 ;
  wire \result_OBUF[9]_inst_i_3_n_0 ;
  wire \result_OBUF[9]_inst_i_4_n_0 ;
  wire \result_OBUF[9]_inst_i_5_n_0 ;
  wire zero;
  wire zero_OBUF;
  wire zero_OBUF_inst_i_2_n_0;
  wire zero_OBUF_inst_i_3_n_0;
  wire zero_OBUF_inst_i_4_n_0;
  wire zero_OBUF_inst_i_5_n_0;
  wire zero_OBUF_inst_i_6_n_0;
  wire zero_OBUF_inst_i_7_n_0;
  wire zero_OBUF_inst_i_8_n_0;
  wire zero_OBUF_inst_i_9_n_0;
  wire [3:0]\NLW_result_OBUF[0]_inst_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_result_OBUF[0]_inst_i_25_O_UNCONNECTED ;
  wire [3:0]\NLW_result_OBUF[0]_inst_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_result_OBUF[0]_inst_i_7_O_UNCONNECTED ;
  wire [3:3]\NLW_result_OBUF[31]_inst_i_20_CO_UNCONNECTED ;
  wire [3:3]\NLW_result_OBUF[31]_inst_i_21_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("Storage_sim_time_synth.sdf",,,,"tool_control");
end
  IBUF \aluOpCode_IBUF[0]_inst 
       (.I(aluOpCode[0]),
        .O(aluOpCode_IBUF[0]));
  IBUF \aluOpCode_IBUF[1]_inst 
       (.I(aluOpCode[1]),
        .O(aluOpCode_IBUF[1]));
  IBUF \aluOpCode_IBUF[2]_inst 
       (.I(aluOpCode[2]),
        .O(aluOpCode_IBUF[2]));
  IBUF \rega_IBUF[0]_inst 
       (.I(rega[0]),
        .O(rega_IBUF[0]));
  IBUF \rega_IBUF[10]_inst 
       (.I(rega[10]),
        .O(rega_IBUF[10]));
  IBUF \rega_IBUF[11]_inst 
       (.I(rega[11]),
        .O(rega_IBUF[11]));
  IBUF \rega_IBUF[12]_inst 
       (.I(rega[12]),
        .O(rega_IBUF[12]));
  IBUF \rega_IBUF[13]_inst 
       (.I(rega[13]),
        .O(rega_IBUF[13]));
  IBUF \rega_IBUF[14]_inst 
       (.I(rega[14]),
        .O(rega_IBUF[14]));
  IBUF \rega_IBUF[15]_inst 
       (.I(rega[15]),
        .O(rega_IBUF[15]));
  IBUF \rega_IBUF[16]_inst 
       (.I(rega[16]),
        .O(rega_IBUF[16]));
  IBUF \rega_IBUF[17]_inst 
       (.I(rega[17]),
        .O(rega_IBUF[17]));
  IBUF \rega_IBUF[18]_inst 
       (.I(rega[18]),
        .O(rega_IBUF[18]));
  IBUF \rega_IBUF[19]_inst 
       (.I(rega[19]),
        .O(rega_IBUF[19]));
  IBUF \rega_IBUF[1]_inst 
       (.I(rega[1]),
        .O(rega_IBUF[1]));
  IBUF \rega_IBUF[20]_inst 
       (.I(rega[20]),
        .O(rega_IBUF[20]));
  IBUF \rega_IBUF[21]_inst 
       (.I(rega[21]),
        .O(rega_IBUF[21]));
  IBUF \rega_IBUF[22]_inst 
       (.I(rega[22]),
        .O(rega_IBUF[22]));
  IBUF \rega_IBUF[23]_inst 
       (.I(rega[23]),
        .O(rega_IBUF[23]));
  IBUF \rega_IBUF[24]_inst 
       (.I(rega[24]),
        .O(rega_IBUF[24]));
  IBUF \rega_IBUF[25]_inst 
       (.I(rega[25]),
        .O(rega_IBUF[25]));
  IBUF \rega_IBUF[26]_inst 
       (.I(rega[26]),
        .O(rega_IBUF[26]));
  IBUF \rega_IBUF[27]_inst 
       (.I(rega[27]),
        .O(rega_IBUF[27]));
  IBUF \rega_IBUF[28]_inst 
       (.I(rega[28]),
        .O(rega_IBUF[28]));
  IBUF \rega_IBUF[29]_inst 
       (.I(rega[29]),
        .O(rega_IBUF[29]));
  IBUF \rega_IBUF[2]_inst 
       (.I(rega[2]),
        .O(rega_IBUF[2]));
  IBUF \rega_IBUF[30]_inst 
       (.I(rega[30]),
        .O(rega_IBUF[30]));
  IBUF \rega_IBUF[31]_inst 
       (.I(rega[31]),
        .O(rega_IBUF[31]));
  IBUF \rega_IBUF[3]_inst 
       (.I(rega[3]),
        .O(rega_IBUF[3]));
  IBUF \rega_IBUF[4]_inst 
       (.I(rega[4]),
        .O(rega_IBUF[4]));
  IBUF \rega_IBUF[5]_inst 
       (.I(rega[5]),
        .O(rega_IBUF[5]));
  IBUF \rega_IBUF[6]_inst 
       (.I(rega[6]),
        .O(rega_IBUF[6]));
  IBUF \rega_IBUF[7]_inst 
       (.I(rega[7]),
        .O(rega_IBUF[7]));
  IBUF \rega_IBUF[8]_inst 
       (.I(rega[8]),
        .O(rega_IBUF[8]));
  IBUF \rega_IBUF[9]_inst 
       (.I(rega[9]),
        .O(rega_IBUF[9]));
  IBUF \regb_IBUF[0]_inst 
       (.I(regb[0]),
        .O(regb_IBUF[0]));
  IBUF \regb_IBUF[10]_inst 
       (.I(regb[10]),
        .O(regb_IBUF[10]));
  IBUF \regb_IBUF[11]_inst 
       (.I(regb[11]),
        .O(regb_IBUF[11]));
  IBUF \regb_IBUF[12]_inst 
       (.I(regb[12]),
        .O(regb_IBUF[12]));
  IBUF \regb_IBUF[13]_inst 
       (.I(regb[13]),
        .O(regb_IBUF[13]));
  IBUF \regb_IBUF[14]_inst 
       (.I(regb[14]),
        .O(regb_IBUF[14]));
  IBUF \regb_IBUF[15]_inst 
       (.I(regb[15]),
        .O(regb_IBUF[15]));
  IBUF \regb_IBUF[16]_inst 
       (.I(regb[16]),
        .O(regb_IBUF[16]));
  IBUF \regb_IBUF[17]_inst 
       (.I(regb[17]),
        .O(regb_IBUF[17]));
  IBUF \regb_IBUF[18]_inst 
       (.I(regb[18]),
        .O(regb_IBUF[18]));
  IBUF \regb_IBUF[19]_inst 
       (.I(regb[19]),
        .O(regb_IBUF[19]));
  IBUF \regb_IBUF[1]_inst 
       (.I(regb[1]),
        .O(regb_IBUF[1]));
  IBUF \regb_IBUF[20]_inst 
       (.I(regb[20]),
        .O(regb_IBUF[20]));
  IBUF \regb_IBUF[21]_inst 
       (.I(regb[21]),
        .O(regb_IBUF[21]));
  IBUF \regb_IBUF[22]_inst 
       (.I(regb[22]),
        .O(regb_IBUF[22]));
  IBUF \regb_IBUF[23]_inst 
       (.I(regb[23]),
        .O(regb_IBUF[23]));
  IBUF \regb_IBUF[24]_inst 
       (.I(regb[24]),
        .O(regb_IBUF[24]));
  IBUF \regb_IBUF[25]_inst 
       (.I(regb[25]),
        .O(regb_IBUF[25]));
  IBUF \regb_IBUF[26]_inst 
       (.I(regb[26]),
        .O(regb_IBUF[26]));
  IBUF \regb_IBUF[27]_inst 
       (.I(regb[27]),
        .O(regb_IBUF[27]));
  IBUF \regb_IBUF[28]_inst 
       (.I(regb[28]),
        .O(regb_IBUF[28]));
  IBUF \regb_IBUF[29]_inst 
       (.I(regb[29]),
        .O(regb_IBUF[29]));
  IBUF \regb_IBUF[2]_inst 
       (.I(regb[2]),
        .O(regb_IBUF[2]));
  IBUF \regb_IBUF[30]_inst 
       (.I(regb[30]),
        .O(regb_IBUF[30]));
  IBUF \regb_IBUF[31]_inst 
       (.I(regb[31]),
        .O(regb_IBUF[31]));
  IBUF \regb_IBUF[3]_inst 
       (.I(regb[3]),
        .O(regb_IBUF[3]));
  IBUF \regb_IBUF[4]_inst 
       (.I(regb[4]),
        .O(regb_IBUF[4]));
  IBUF \regb_IBUF[5]_inst 
       (.I(regb[5]),
        .O(regb_IBUF[5]));
  IBUF \regb_IBUF[6]_inst 
       (.I(regb[6]),
        .O(regb_IBUF[6]));
  IBUF \regb_IBUF[7]_inst 
       (.I(regb[7]),
        .O(regb_IBUF[7]));
  IBUF \regb_IBUF[8]_inst 
       (.I(regb[8]),
        .O(regb_IBUF[8]));
  IBUF \regb_IBUF[9]_inst 
       (.I(regb[9]),
        .O(regb_IBUF[9]));
  OBUF \result_OBUF[0]_inst 
       (.I(result_OBUF[0]),
        .O(result[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[0]_inst_i_1 
       (.I0(\result_OBUF[0]_inst_i_2_n_0 ),
        .I1(rega_IBUF[0]),
        .I2(\result_OBUF[2]_inst_i_4_n_0 ),
        .I3(regb_IBUF[0]),
        .I4(\result_OBUF[1]_inst_i_3_n_0 ),
        .I5(\result_OBUF[0]_inst_i_3_n_0 ),
        .O(result_OBUF[0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_10 
       (.I0(regb_IBUF[26]),
        .I1(rega_IBUF[26]),
        .I2(rega_IBUF[27]),
        .I3(regb_IBUF[27]),
        .O(\result_OBUF[0]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_11 
       (.I0(regb_IBUF[24]),
        .I1(rega_IBUF[24]),
        .I2(rega_IBUF[25]),
        .I3(regb_IBUF[25]),
        .O(\result_OBUF[0]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_12 
       (.I0(regb_IBUF[31]),
        .I1(rega_IBUF[31]),
        .I2(regb_IBUF[30]),
        .I3(rega_IBUF[30]),
        .O(\result_OBUF[0]_inst_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_13 
       (.I0(regb_IBUF[29]),
        .I1(rega_IBUF[29]),
        .I2(regb_IBUF[28]),
        .I3(rega_IBUF[28]),
        .O(\result_OBUF[0]_inst_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_14 
       (.I0(rega_IBUF[27]),
        .I1(regb_IBUF[27]),
        .I2(rega_IBUF[26]),
        .I3(regb_IBUF[26]),
        .O(\result_OBUF[0]_inst_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_15 
       (.I0(rega_IBUF[25]),
        .I1(regb_IBUF[25]),
        .I2(rega_IBUF[24]),
        .I3(regb_IBUF[24]),
        .O(\result_OBUF[0]_inst_i_15_n_0 ));
  CARRY4 \result_OBUF[0]_inst_i_16 
       (.CI(\result_OBUF[0]_inst_i_25_n_0 ),
        .CO({\result_OBUF[0]_inst_i_16_n_0 ,\result_OBUF[0]_inst_i_16_n_1 ,\result_OBUF[0]_inst_i_16_n_2 ,\result_OBUF[0]_inst_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_OBUF[0]_inst_i_26_n_0 ,\result_OBUF[0]_inst_i_27_n_0 ,\result_OBUF[0]_inst_i_28_n_0 ,\result_OBUF[0]_inst_i_29_n_0 }),
        .O(\NLW_result_OBUF[0]_inst_i_16_O_UNCONNECTED [3:0]),
        .S({\result_OBUF[0]_inst_i_30_n_0 ,\result_OBUF[0]_inst_i_31_n_0 ,\result_OBUF[0]_inst_i_32_n_0 ,\result_OBUF[0]_inst_i_33_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_17 
       (.I0(regb_IBUF[22]),
        .I1(rega_IBUF[22]),
        .I2(rega_IBUF[23]),
        .I3(regb_IBUF[23]),
        .O(\result_OBUF[0]_inst_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_18 
       (.I0(regb_IBUF[20]),
        .I1(rega_IBUF[20]),
        .I2(rega_IBUF[21]),
        .I3(regb_IBUF[21]),
        .O(\result_OBUF[0]_inst_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_19 
       (.I0(regb_IBUF[18]),
        .I1(rega_IBUF[18]),
        .I2(rega_IBUF[19]),
        .I3(regb_IBUF[19]),
        .O(\result_OBUF[0]_inst_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h0A0C0000)) 
    \result_OBUF[0]_inst_i_2 
       (.I0(result2),
        .I1(data1[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[0]_inst_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_20 
       (.I0(regb_IBUF[16]),
        .I1(rega_IBUF[16]),
        .I2(rega_IBUF[17]),
        .I3(regb_IBUF[17]),
        .O(\result_OBUF[0]_inst_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_21 
       (.I0(rega_IBUF[23]),
        .I1(regb_IBUF[23]),
        .I2(rega_IBUF[22]),
        .I3(regb_IBUF[22]),
        .O(\result_OBUF[0]_inst_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_22 
       (.I0(rega_IBUF[21]),
        .I1(regb_IBUF[21]),
        .I2(rega_IBUF[20]),
        .I3(regb_IBUF[20]),
        .O(\result_OBUF[0]_inst_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_23 
       (.I0(rega_IBUF[19]),
        .I1(regb_IBUF[19]),
        .I2(rega_IBUF[18]),
        .I3(regb_IBUF[18]),
        .O(\result_OBUF[0]_inst_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_24 
       (.I0(rega_IBUF[17]),
        .I1(regb_IBUF[17]),
        .I2(rega_IBUF[16]),
        .I3(regb_IBUF[16]),
        .O(\result_OBUF[0]_inst_i_24_n_0 ));
  CARRY4 \result_OBUF[0]_inst_i_25 
       (.CI(1'b0),
        .CO({\result_OBUF[0]_inst_i_25_n_0 ,\result_OBUF[0]_inst_i_25_n_1 ,\result_OBUF[0]_inst_i_25_n_2 ,\result_OBUF[0]_inst_i_25_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_OBUF[0]_inst_i_34_n_0 ,\result_OBUF[0]_inst_i_35_n_0 ,\result_OBUF[0]_inst_i_36_n_0 ,\result_OBUF[0]_inst_i_37_n_0 }),
        .O(\NLW_result_OBUF[0]_inst_i_25_O_UNCONNECTED [3:0]),
        .S({\result_OBUF[0]_inst_i_38_n_0 ,\result_OBUF[0]_inst_i_39_n_0 ,\result_OBUF[0]_inst_i_40_n_0 ,\result_OBUF[0]_inst_i_41_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_26 
       (.I0(regb_IBUF[14]),
        .I1(rega_IBUF[14]),
        .I2(rega_IBUF[15]),
        .I3(regb_IBUF[15]),
        .O(\result_OBUF[0]_inst_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_27 
       (.I0(regb_IBUF[12]),
        .I1(rega_IBUF[12]),
        .I2(rega_IBUF[13]),
        .I3(regb_IBUF[13]),
        .O(\result_OBUF[0]_inst_i_27_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_28 
       (.I0(regb_IBUF[10]),
        .I1(rega_IBUF[10]),
        .I2(rega_IBUF[11]),
        .I3(regb_IBUF[11]),
        .O(\result_OBUF[0]_inst_i_28_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_29 
       (.I0(regb_IBUF[8]),
        .I1(rega_IBUF[8]),
        .I2(rega_IBUF[9]),
        .I3(regb_IBUF[9]),
        .O(\result_OBUF[0]_inst_i_29_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \result_OBUF[0]_inst_i_3 
       (.I0(\result_OBUF[0]_inst_i_5_n_0 ),
        .I1(\result_OBUF[0]_inst_i_6_n_0 ),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .O(\result_OBUF[0]_inst_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_30 
       (.I0(rega_IBUF[15]),
        .I1(regb_IBUF[15]),
        .I2(rega_IBUF[14]),
        .I3(regb_IBUF[14]),
        .O(\result_OBUF[0]_inst_i_30_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_31 
       (.I0(rega_IBUF[13]),
        .I1(regb_IBUF[13]),
        .I2(rega_IBUF[12]),
        .I3(regb_IBUF[12]),
        .O(\result_OBUF[0]_inst_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_32 
       (.I0(rega_IBUF[11]),
        .I1(regb_IBUF[11]),
        .I2(rega_IBUF[10]),
        .I3(regb_IBUF[10]),
        .O(\result_OBUF[0]_inst_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_33 
       (.I0(rega_IBUF[9]),
        .I1(regb_IBUF[9]),
        .I2(rega_IBUF[8]),
        .I3(regb_IBUF[8]),
        .O(\result_OBUF[0]_inst_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_34 
       (.I0(regb_IBUF[6]),
        .I1(rega_IBUF[6]),
        .I2(rega_IBUF[7]),
        .I3(regb_IBUF[7]),
        .O(\result_OBUF[0]_inst_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_35 
       (.I0(regb_IBUF[4]),
        .I1(rega_IBUF[4]),
        .I2(rega_IBUF[5]),
        .I3(regb_IBUF[5]),
        .O(\result_OBUF[0]_inst_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_36 
       (.I0(regb_IBUF[2]),
        .I1(rega_IBUF[2]),
        .I2(rega_IBUF[3]),
        .I3(regb_IBUF[3]),
        .O(\result_OBUF[0]_inst_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_37 
       (.I0(regb_IBUF[0]),
        .I1(rega_IBUF[0]),
        .I2(rega_IBUF[1]),
        .I3(regb_IBUF[1]),
        .O(\result_OBUF[0]_inst_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_38 
       (.I0(rega_IBUF[7]),
        .I1(regb_IBUF[7]),
        .I2(rega_IBUF[6]),
        .I3(regb_IBUF[6]),
        .O(\result_OBUF[0]_inst_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_39 
       (.I0(rega_IBUF[5]),
        .I1(regb_IBUF[5]),
        .I2(rega_IBUF[4]),
        .I3(regb_IBUF[4]),
        .O(\result_OBUF[0]_inst_i_39_n_0 ));
  CARRY4 \result_OBUF[0]_inst_i_4 
       (.CI(\result_OBUF[0]_inst_i_7_n_0 ),
        .CO({result2,\result_OBUF[0]_inst_i_4_n_1 ,\result_OBUF[0]_inst_i_4_n_2 ,\result_OBUF[0]_inst_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_OBUF[0]_inst_i_8_n_0 ,\result_OBUF[0]_inst_i_9_n_0 ,\result_OBUF[0]_inst_i_10_n_0 ,\result_OBUF[0]_inst_i_11_n_0 }),
        .O(\NLW_result_OBUF[0]_inst_i_4_O_UNCONNECTED [3:0]),
        .S({\result_OBUF[0]_inst_i_12_n_0 ,\result_OBUF[0]_inst_i_13_n_0 ,\result_OBUF[0]_inst_i_14_n_0 ,\result_OBUF[0]_inst_i_15_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_40 
       (.I0(rega_IBUF[3]),
        .I1(regb_IBUF[3]),
        .I2(rega_IBUF[2]),
        .I3(regb_IBUF[2]),
        .O(\result_OBUF[0]_inst_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \result_OBUF[0]_inst_i_41 
       (.I0(rega_IBUF[1]),
        .I1(regb_IBUF[1]),
        .I2(rega_IBUF[0]),
        .I3(regb_IBUF[0]),
        .O(\result_OBUF[0]_inst_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h00000000008800F0)) 
    \result_OBUF[0]_inst_i_5 
       (.I0(rega_IBUF[0]),
        .I1(regb_IBUF[0]),
        .I2(data0[0]),
        .I3(aluOpCode_IBUF[1]),
        .I4(aluOpCode_IBUF[2]),
        .I5(aluOpCode_IBUF[0]),
        .O(\result_OBUF[0]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00B2FFB2FFB200B2)) 
    \result_OBUF[0]_inst_i_6 
       (.I0(result2),
        .I1(rega_IBUF[31]),
        .I2(regb_IBUF[31]),
        .I3(aluOpCode_IBUF[0]),
        .I4(rega_IBUF[0]),
        .I5(regb_IBUF[0]),
        .O(\result_OBUF[0]_inst_i_6_n_0 ));
  CARRY4 \result_OBUF[0]_inst_i_7 
       (.CI(\result_OBUF[0]_inst_i_16_n_0 ),
        .CO({\result_OBUF[0]_inst_i_7_n_0 ,\result_OBUF[0]_inst_i_7_n_1 ,\result_OBUF[0]_inst_i_7_n_2 ,\result_OBUF[0]_inst_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI({\result_OBUF[0]_inst_i_17_n_0 ,\result_OBUF[0]_inst_i_18_n_0 ,\result_OBUF[0]_inst_i_19_n_0 ,\result_OBUF[0]_inst_i_20_n_0 }),
        .O(\NLW_result_OBUF[0]_inst_i_7_O_UNCONNECTED [3:0]),
        .S({\result_OBUF[0]_inst_i_21_n_0 ,\result_OBUF[0]_inst_i_22_n_0 ,\result_OBUF[0]_inst_i_23_n_0 ,\result_OBUF[0]_inst_i_24_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_8 
       (.I0(regb_IBUF[30]),
        .I1(rega_IBUF[30]),
        .I2(rega_IBUF[31]),
        .I3(regb_IBUF[31]),
        .O(\result_OBUF[0]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \result_OBUF[0]_inst_i_9 
       (.I0(regb_IBUF[28]),
        .I1(rega_IBUF[28]),
        .I2(rega_IBUF[29]),
        .I3(regb_IBUF[29]),
        .O(\result_OBUF[0]_inst_i_9_n_0 ));
  OBUF \result_OBUF[10]_inst 
       (.I(result_OBUF[10]),
        .O(result[10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[10]_inst_i_1 
       (.I0(\result_OBUF[10]_inst_i_2_n_0 ),
        .I1(\result_OBUF[10]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[11]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[10]_inst_i_4_n_0 ),
        .O(result_OBUF[10]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[10]_inst_i_2 
       (.I0(data0[10]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[10]),
        .I5(regb_IBUF[10]),
        .O(\result_OBUF[10]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAEABAAABAAABAA)) 
    \result_OBUF[10]_inst_i_3 
       (.I0(\result_OBUF[10]_inst_i_5_n_0 ),
        .I1(rega_IBUF[1]),
        .I2(rega_IBUF[2]),
        .I3(\result_OBUF[16]_inst_i_5_n_0 ),
        .I4(\result_OBUF[10]_inst_i_6_n_0 ),
        .I5(regb_IBUF[7]),
        .O(\result_OBUF[10]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[10]_inst_i_4 
       (.I0(regb_IBUF[10]),
        .I1(data1[10]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[10]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \result_OBUF[10]_inst_i_5 
       (.I0(regb_IBUF[3]),
        .I1(regb_IBUF[5]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(rega_IBUF[4]),
        .O(\result_OBUF[10]_inst_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[10]_inst_i_6 
       (.I0(rega_IBUF[4]),
        .I1(rega_IBUF[3]),
        .O(\result_OBUF[10]_inst_i_6_n_0 ));
  OBUF \result_OBUF[11]_inst 
       (.I(result_OBUF[11]),
        .O(result[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[11]_inst_i_1 
       (.I0(\result_OBUF[11]_inst_i_2_n_0 ),
        .I1(\result_OBUF[11]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[12]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[11]_inst_i_4_n_0 ),
        .O(result_OBUF[11]));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[11]_inst_i_10 
       (.I0(regb_IBUF[9]),
        .I1(rega_IBUF[9]),
        .O(\result_OBUF[11]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[11]_inst_i_11 
       (.I0(regb_IBUF[8]),
        .I1(rega_IBUF[8]),
        .O(\result_OBUF[11]_inst_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[11]_inst_i_12 
       (.I0(rega_IBUF[11]),
        .I1(regb_IBUF[11]),
        .O(\result_OBUF[11]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[11]_inst_i_13 
       (.I0(rega_IBUF[10]),
        .I1(regb_IBUF[10]),
        .O(\result_OBUF[11]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[11]_inst_i_14 
       (.I0(rega_IBUF[9]),
        .I1(regb_IBUF[9]),
        .O(\result_OBUF[11]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[11]_inst_i_15 
       (.I0(rega_IBUF[8]),
        .I1(regb_IBUF[8]),
        .O(\result_OBUF[11]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[11]_inst_i_2 
       (.I0(data0[11]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[11]),
        .I5(regb_IBUF[11]),
        .O(\result_OBUF[11]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \result_OBUF[11]_inst_i_3 
       (.I0(\result_OBUF[11]_inst_i_6_n_0 ),
        .I1(rega_IBUF[1]),
        .I2(rega_IBUF[2]),
        .I3(\result_OBUF[17]_inst_i_5_n_0 ),
        .I4(\result_OBUF[15]_inst_i_6_n_0 ),
        .O(\result_OBUF[11]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[11]_inst_i_4 
       (.I0(regb_IBUF[11]),
        .I1(data1[11]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[11]_inst_i_4_n_0 ));
  CARRY4 \result_OBUF[11]_inst_i_5 
       (.CI(\result_OBUF[7]_inst_i_5_n_0 ),
        .CO({\result_OBUF[11]_inst_i_5_n_0 ,\result_OBUF[11]_inst_i_5_n_1 ,\result_OBUF[11]_inst_i_5_n_2 ,\result_OBUF[11]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[11:8]),
        .O(data0[11:8]),
        .S({\result_OBUF[11]_inst_i_8_n_0 ,\result_OBUF[11]_inst_i_9_n_0 ,\result_OBUF[11]_inst_i_10_n_0 ,\result_OBUF[11]_inst_i_11_n_0 }));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \result_OBUF[11]_inst_i_6 
       (.I0(regb_IBUF[4]),
        .I1(regb_IBUF[6]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(rega_IBUF[4]),
        .O(\result_OBUF[11]_inst_i_6_n_0 ));
  CARRY4 \result_OBUF[11]_inst_i_7 
       (.CI(\result_OBUF[7]_inst_i_7_n_0 ),
        .CO({\result_OBUF[11]_inst_i_7_n_0 ,\result_OBUF[11]_inst_i_7_n_1 ,\result_OBUF[11]_inst_i_7_n_2 ,\result_OBUF[11]_inst_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[11:8]),
        .O(data1[11:8]),
        .S({\result_OBUF[11]_inst_i_12_n_0 ,\result_OBUF[11]_inst_i_13_n_0 ,\result_OBUF[11]_inst_i_14_n_0 ,\result_OBUF[11]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[11]_inst_i_8 
       (.I0(regb_IBUF[11]),
        .I1(rega_IBUF[11]),
        .O(\result_OBUF[11]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[11]_inst_i_9 
       (.I0(regb_IBUF[10]),
        .I1(rega_IBUF[10]),
        .O(\result_OBUF[11]_inst_i_9_n_0 ));
  OBUF \result_OBUF[12]_inst 
       (.I(result_OBUF[12]),
        .O(result[12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[12]_inst_i_1 
       (.I0(\result_OBUF[12]_inst_i_2_n_0 ),
        .I1(\result_OBUF[12]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[13]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[12]_inst_i_4_n_0 ),
        .O(result_OBUF[12]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[12]_inst_i_2 
       (.I0(data0[12]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[12]),
        .I5(regb_IBUF[12]),
        .O(\result_OBUF[12]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAFAEABAA)) 
    \result_OBUF[12]_inst_i_3 
       (.I0(\result_OBUF[12]_inst_i_5_n_0 ),
        .I1(rega_IBUF[1]),
        .I2(rega_IBUF[2]),
        .I3(\result_OBUF[18]_inst_i_5_n_0 ),
        .I4(\result_OBUF[16]_inst_i_5_n_0 ),
        .O(\result_OBUF[12]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[12]_inst_i_4 
       (.I0(regb_IBUF[12]),
        .I1(data1[12]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[12]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \result_OBUF[12]_inst_i_5 
       (.I0(regb_IBUF[5]),
        .I1(regb_IBUF[7]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(rega_IBUF[4]),
        .O(\result_OBUF[12]_inst_i_5_n_0 ));
  OBUF \result_OBUF[13]_inst 
       (.I(result_OBUF[13]),
        .O(result[13]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[13]_inst_i_1 
       (.I0(\result_OBUF[13]_inst_i_2_n_0 ),
        .I1(\result_OBUF[13]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[14]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[13]_inst_i_4_n_0 ),
        .O(result_OBUF[13]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[13]_inst_i_2 
       (.I0(data0[13]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[13]),
        .I5(regb_IBUF[13]),
        .O(\result_OBUF[13]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCEFFCEFCCECFCECC)) 
    \result_OBUF[13]_inst_i_3 
       (.I0(\result_OBUF[15]_inst_i_6_n_0 ),
        .I1(\result_OBUF[13]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[19]_inst_i_6_n_0 ),
        .I5(\result_OBUF[17]_inst_i_5_n_0 ),
        .O(\result_OBUF[13]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[13]_inst_i_4 
       (.I0(regb_IBUF[13]),
        .I1(data1[13]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[13]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h10000000)) 
    \result_OBUF[13]_inst_i_5 
       (.I0(rega_IBUF[4]),
        .I1(rega_IBUF[3]),
        .I2(rega_IBUF[2]),
        .I3(rega_IBUF[1]),
        .I4(regb_IBUF[6]),
        .O(\result_OBUF[13]_inst_i_5_n_0 ));
  OBUF \result_OBUF[14]_inst 
       (.I(result_OBUF[14]),
        .O(result[14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[14]_inst_i_1 
       (.I0(\result_OBUF[14]_inst_i_2_n_0 ),
        .I1(\result_OBUF[14]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[15]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[14]_inst_i_4_n_0 ),
        .O(result_OBUF[14]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[14]_inst_i_2 
       (.I0(data0[14]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[14]),
        .I5(regb_IBUF[14]),
        .O(\result_OBUF[14]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCEFFCEFCCECFCECC)) 
    \result_OBUF[14]_inst_i_3 
       (.I0(\result_OBUF[16]_inst_i_5_n_0 ),
        .I1(\result_OBUF[14]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[20]_inst_i_5_n_0 ),
        .I5(\result_OBUF[18]_inst_i_5_n_0 ),
        .O(\result_OBUF[14]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[14]_inst_i_4 
       (.I0(regb_IBUF[14]),
        .I1(data1[14]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[14]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \result_OBUF[14]_inst_i_5 
       (.I0(rega_IBUF[4]),
        .I1(rega_IBUF[3]),
        .I2(rega_IBUF[2]),
        .I3(rega_IBUF[1]),
        .I4(regb_IBUF[7]),
        .O(\result_OBUF[14]_inst_i_5_n_0 ));
  OBUF \result_OBUF[15]_inst 
       (.I(result_OBUF[15]),
        .O(result[15]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[15]_inst_i_1 
       (.I0(\result_OBUF[15]_inst_i_2_n_0 ),
        .I1(\result_OBUF[15]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[16]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[15]_inst_i_4_n_0 ),
        .O(result_OBUF[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[15]_inst_i_10 
       (.I0(regb_IBUF[13]),
        .I1(rega_IBUF[13]),
        .O(\result_OBUF[15]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[15]_inst_i_11 
       (.I0(regb_IBUF[12]),
        .I1(rega_IBUF[12]),
        .O(\result_OBUF[15]_inst_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[15]_inst_i_12 
       (.I0(rega_IBUF[15]),
        .I1(regb_IBUF[15]),
        .O(\result_OBUF[15]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[15]_inst_i_13 
       (.I0(rega_IBUF[14]),
        .I1(regb_IBUF[14]),
        .O(\result_OBUF[15]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[15]_inst_i_14 
       (.I0(rega_IBUF[13]),
        .I1(regb_IBUF[13]),
        .O(\result_OBUF[15]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[15]_inst_i_15 
       (.I0(rega_IBUF[12]),
        .I1(regb_IBUF[12]),
        .O(\result_OBUF[15]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[15]_inst_i_2 
       (.I0(data0[15]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[15]),
        .I5(regb_IBUF[15]),
        .O(\result_OBUF[15]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[15]_inst_i_3 
       (.I0(\result_OBUF[17]_inst_i_5_n_0 ),
        .I1(\result_OBUF[15]_inst_i_6_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[21]_inst_i_5_n_0 ),
        .I5(\result_OBUF[19]_inst_i_6_n_0 ),
        .O(\result_OBUF[15]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[15]_inst_i_4 
       (.I0(regb_IBUF[15]),
        .I1(data1[15]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[15]_inst_i_4_n_0 ));
  CARRY4 \result_OBUF[15]_inst_i_5 
       (.CI(\result_OBUF[11]_inst_i_5_n_0 ),
        .CO({\result_OBUF[15]_inst_i_5_n_0 ,\result_OBUF[15]_inst_i_5_n_1 ,\result_OBUF[15]_inst_i_5_n_2 ,\result_OBUF[15]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[15:12]),
        .O(data0[15:12]),
        .S({\result_OBUF[15]_inst_i_8_n_0 ,\result_OBUF[15]_inst_i_9_n_0 ,\result_OBUF[15]_inst_i_10_n_0 ,\result_OBUF[15]_inst_i_11_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \result_OBUF[15]_inst_i_6 
       (.I0(regb_IBUF[0]),
        .I1(regb_IBUF[8]),
        .I2(rega_IBUF[4]),
        .I3(rega_IBUF[3]),
        .O(\result_OBUF[15]_inst_i_6_n_0 ));
  CARRY4 \result_OBUF[15]_inst_i_7 
       (.CI(\result_OBUF[11]_inst_i_7_n_0 ),
        .CO({\result_OBUF[15]_inst_i_7_n_0 ,\result_OBUF[15]_inst_i_7_n_1 ,\result_OBUF[15]_inst_i_7_n_2 ,\result_OBUF[15]_inst_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[15:12]),
        .O(data1[15:12]),
        .S({\result_OBUF[15]_inst_i_12_n_0 ,\result_OBUF[15]_inst_i_13_n_0 ,\result_OBUF[15]_inst_i_14_n_0 ,\result_OBUF[15]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[15]_inst_i_8 
       (.I0(regb_IBUF[15]),
        .I1(rega_IBUF[15]),
        .O(\result_OBUF[15]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[15]_inst_i_9 
       (.I0(regb_IBUF[14]),
        .I1(rega_IBUF[14]),
        .O(\result_OBUF[15]_inst_i_9_n_0 ));
  OBUF \result_OBUF[16]_inst 
       (.I(result_OBUF[16]),
        .O(result[16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[16]_inst_i_1 
       (.I0(\result_OBUF[16]_inst_i_2_n_0 ),
        .I1(\result_OBUF[16]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[17]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[16]_inst_i_4_n_0 ),
        .O(result_OBUF[16]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[16]_inst_i_2 
       (.I0(data0[16]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[16]),
        .I5(regb_IBUF[16]),
        .O(\result_OBUF[16]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[16]_inst_i_3 
       (.I0(\result_OBUF[18]_inst_i_5_n_0 ),
        .I1(\result_OBUF[16]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[22]_inst_i_5_n_0 ),
        .I5(\result_OBUF[20]_inst_i_5_n_0 ),
        .O(\result_OBUF[16]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[16]_inst_i_4 
       (.I0(regb_IBUF[16]),
        .I1(data1[16]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[16]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \result_OBUF[16]_inst_i_5 
       (.I0(regb_IBUF[1]),
        .I1(regb_IBUF[9]),
        .I2(rega_IBUF[4]),
        .I3(rega_IBUF[3]),
        .O(\result_OBUF[16]_inst_i_5_n_0 ));
  OBUF \result_OBUF[17]_inst 
       (.I(result_OBUF[17]),
        .O(result[17]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[17]_inst_i_1 
       (.I0(\result_OBUF[17]_inst_i_2_n_0 ),
        .I1(\result_OBUF[17]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[18]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[17]_inst_i_4_n_0 ),
        .O(result_OBUF[17]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[17]_inst_i_2 
       (.I0(data0[17]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[17]),
        .I5(regb_IBUF[17]),
        .O(\result_OBUF[17]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[17]_inst_i_3 
       (.I0(\result_OBUF[19]_inst_i_6_n_0 ),
        .I1(\result_OBUF[17]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[23]_inst_i_6_n_0 ),
        .I5(\result_OBUF[21]_inst_i_5_n_0 ),
        .O(\result_OBUF[17]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[17]_inst_i_4 
       (.I0(regb_IBUF[17]),
        .I1(data1[17]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[17]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \result_OBUF[17]_inst_i_5 
       (.I0(regb_IBUF[2]),
        .I1(regb_IBUF[10]),
        .I2(rega_IBUF[4]),
        .I3(rega_IBUF[3]),
        .O(\result_OBUF[17]_inst_i_5_n_0 ));
  OBUF \result_OBUF[18]_inst 
       (.I(result_OBUF[18]),
        .O(result[18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[18]_inst_i_1 
       (.I0(\result_OBUF[18]_inst_i_2_n_0 ),
        .I1(\result_OBUF[18]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[19]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[18]_inst_i_4_n_0 ),
        .O(result_OBUF[18]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[18]_inst_i_2 
       (.I0(data0[18]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[18]),
        .I5(regb_IBUF[18]),
        .O(\result_OBUF[18]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[18]_inst_i_3 
       (.I0(\result_OBUF[20]_inst_i_5_n_0 ),
        .I1(\result_OBUF[18]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[24]_inst_i_5_n_0 ),
        .I5(\result_OBUF[22]_inst_i_5_n_0 ),
        .O(\result_OBUF[18]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[18]_inst_i_4 
       (.I0(regb_IBUF[18]),
        .I1(data1[18]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[18]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \result_OBUF[18]_inst_i_5 
       (.I0(regb_IBUF[3]),
        .I1(regb_IBUF[11]),
        .I2(rega_IBUF[4]),
        .I3(rega_IBUF[3]),
        .O(\result_OBUF[18]_inst_i_5_n_0 ));
  OBUF \result_OBUF[19]_inst 
       (.I(result_OBUF[19]),
        .O(result[19]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[19]_inst_i_1 
       (.I0(\result_OBUF[19]_inst_i_2_n_0 ),
        .I1(\result_OBUF[19]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[20]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[19]_inst_i_4_n_0 ),
        .O(result_OBUF[19]));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[19]_inst_i_10 
       (.I0(regb_IBUF[17]),
        .I1(rega_IBUF[17]),
        .O(\result_OBUF[19]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[19]_inst_i_11 
       (.I0(regb_IBUF[16]),
        .I1(rega_IBUF[16]),
        .O(\result_OBUF[19]_inst_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[19]_inst_i_12 
       (.I0(rega_IBUF[19]),
        .I1(regb_IBUF[19]),
        .O(\result_OBUF[19]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[19]_inst_i_13 
       (.I0(rega_IBUF[18]),
        .I1(regb_IBUF[18]),
        .O(\result_OBUF[19]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[19]_inst_i_14 
       (.I0(rega_IBUF[17]),
        .I1(regb_IBUF[17]),
        .O(\result_OBUF[19]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[19]_inst_i_15 
       (.I0(rega_IBUF[16]),
        .I1(regb_IBUF[16]),
        .O(\result_OBUF[19]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[19]_inst_i_2 
       (.I0(data0[19]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[19]),
        .I5(regb_IBUF[19]),
        .O(\result_OBUF[19]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[19]_inst_i_3 
       (.I0(\result_OBUF[21]_inst_i_5_n_0 ),
        .I1(\result_OBUF[19]_inst_i_6_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[25]_inst_i_5_n_0 ),
        .I5(\result_OBUF[23]_inst_i_6_n_0 ),
        .O(\result_OBUF[19]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[19]_inst_i_4 
       (.I0(regb_IBUF[19]),
        .I1(data1[19]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[19]_inst_i_4_n_0 ));
  CARRY4 \result_OBUF[19]_inst_i_5 
       (.CI(\result_OBUF[15]_inst_i_5_n_0 ),
        .CO({\result_OBUF[19]_inst_i_5_n_0 ,\result_OBUF[19]_inst_i_5_n_1 ,\result_OBUF[19]_inst_i_5_n_2 ,\result_OBUF[19]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[19:16]),
        .O(data0[19:16]),
        .S({\result_OBUF[19]_inst_i_8_n_0 ,\result_OBUF[19]_inst_i_9_n_0 ,\result_OBUF[19]_inst_i_10_n_0 ,\result_OBUF[19]_inst_i_11_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \result_OBUF[19]_inst_i_6 
       (.I0(regb_IBUF[4]),
        .I1(regb_IBUF[12]),
        .I2(rega_IBUF[4]),
        .I3(rega_IBUF[3]),
        .O(\result_OBUF[19]_inst_i_6_n_0 ));
  CARRY4 \result_OBUF[19]_inst_i_7 
       (.CI(\result_OBUF[15]_inst_i_7_n_0 ),
        .CO({\result_OBUF[19]_inst_i_7_n_0 ,\result_OBUF[19]_inst_i_7_n_1 ,\result_OBUF[19]_inst_i_7_n_2 ,\result_OBUF[19]_inst_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[19:16]),
        .O(data1[19:16]),
        .S({\result_OBUF[19]_inst_i_12_n_0 ,\result_OBUF[19]_inst_i_13_n_0 ,\result_OBUF[19]_inst_i_14_n_0 ,\result_OBUF[19]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[19]_inst_i_8 
       (.I0(regb_IBUF[19]),
        .I1(rega_IBUF[19]),
        .O(\result_OBUF[19]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[19]_inst_i_9 
       (.I0(regb_IBUF[18]),
        .I1(rega_IBUF[18]),
        .O(\result_OBUF[19]_inst_i_9_n_0 ));
  OBUF \result_OBUF[1]_inst 
       (.I(result_OBUF[1]),
        .O(result[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBEAEEEA)) 
    \result_OBUF[1]_inst_i_1 
       (.I0(\result_OBUF[1]_inst_i_2_n_0 ),
        .I1(regb_IBUF[1]),
        .I2(\result_OBUF[1]_inst_i_3_n_0 ),
        .I3(\result_OBUF[1]_inst_i_4_n_0 ),
        .I4(rega_IBUF[1]),
        .I5(\result_OBUF[1]_inst_i_5_n_0 ),
        .O(result_OBUF[1]));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \result_OBUF[1]_inst_i_2 
       (.I0(regb_IBUF[0]),
        .I1(rega_IBUF[1]),
        .I2(rega_IBUF[2]),
        .I3(rega_IBUF[3]),
        .I4(rega_IBUF[4]),
        .I5(\result_OBUF[31]_inst_i_3_n_0 ),
        .O(\result_OBUF[1]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000200)) 
    \result_OBUF[1]_inst_i_3 
       (.I0(\result_OBUF[1]_inst_i_6_n_0 ),
        .I1(rega_IBUF[4]),
        .I2(rega_IBUF[3]),
        .I3(\result_OBUF[2]_inst_i_7_n_0 ),
        .I4(rega_IBUF[0]),
        .I5(\result_OBUF[2]_inst_i_4_n_0 ),
        .O(\result_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \result_OBUF[1]_inst_i_4 
       (.I0(aluOpCode_IBUF[1]),
        .I1(aluOpCode_IBUF[0]),
        .O(\result_OBUF[1]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22200200)) 
    \result_OBUF[1]_inst_i_5 
       (.I0(aluOpCode_IBUF[0]),
        .I1(aluOpCode_IBUF[2]),
        .I2(aluOpCode_IBUF[1]),
        .I3(data1[1]),
        .I4(rega_IBUF[1]),
        .I5(\result_OBUF[1]_inst_i_7_n_0 ),
        .O(\result_OBUF[1]_inst_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h04000000)) 
    \result_OBUF[1]_inst_i_6 
       (.I0(aluOpCode_IBUF[2]),
        .I1(aluOpCode_IBUF[1]),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(\result_OBUF[31]_inst_i_14_n_0 ),
        .I4(\result_OBUF[31]_inst_i_15_n_0 ),
        .O(\result_OBUF[1]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h00000000008800F0)) 
    \result_OBUF[1]_inst_i_7 
       (.I0(rega_IBUF[1]),
        .I1(regb_IBUF[1]),
        .I2(data0[1]),
        .I3(aluOpCode_IBUF[1]),
        .I4(aluOpCode_IBUF[2]),
        .I5(aluOpCode_IBUF[0]),
        .O(\result_OBUF[1]_inst_i_7_n_0 ));
  OBUF \result_OBUF[20]_inst 
       (.I(result_OBUF[20]),
        .O(result[20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[20]_inst_i_1 
       (.I0(\result_OBUF[20]_inst_i_2_n_0 ),
        .I1(\result_OBUF[20]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[21]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[20]_inst_i_4_n_0 ),
        .O(result_OBUF[20]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[20]_inst_i_2 
       (.I0(data0[20]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[20]),
        .I5(regb_IBUF[20]),
        .O(\result_OBUF[20]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[20]_inst_i_3 
       (.I0(\result_OBUF[22]_inst_i_5_n_0 ),
        .I1(\result_OBUF[20]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[26]_inst_i_5_n_0 ),
        .I5(\result_OBUF[24]_inst_i_5_n_0 ),
        .O(\result_OBUF[20]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[20]_inst_i_4 
       (.I0(regb_IBUF[20]),
        .I1(data1[20]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[20]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \result_OBUF[20]_inst_i_5 
       (.I0(regb_IBUF[5]),
        .I1(regb_IBUF[13]),
        .I2(rega_IBUF[4]),
        .I3(rega_IBUF[3]),
        .O(\result_OBUF[20]_inst_i_5_n_0 ));
  OBUF \result_OBUF[21]_inst 
       (.I(result_OBUF[21]),
        .O(result[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[21]_inst_i_1 
       (.I0(\result_OBUF[21]_inst_i_2_n_0 ),
        .I1(\result_OBUF[21]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[22]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[21]_inst_i_4_n_0 ),
        .O(result_OBUF[21]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[21]_inst_i_2 
       (.I0(data0[21]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[21]),
        .I5(regb_IBUF[21]),
        .O(\result_OBUF[21]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[21]_inst_i_3 
       (.I0(\result_OBUF[23]_inst_i_6_n_0 ),
        .I1(\result_OBUF[21]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[27]_inst_i_6_n_0 ),
        .I5(\result_OBUF[25]_inst_i_5_n_0 ),
        .O(\result_OBUF[21]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[21]_inst_i_4 
       (.I0(regb_IBUF[21]),
        .I1(data1[21]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[21]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \result_OBUF[21]_inst_i_5 
       (.I0(regb_IBUF[6]),
        .I1(regb_IBUF[14]),
        .I2(rega_IBUF[4]),
        .I3(rega_IBUF[3]),
        .O(\result_OBUF[21]_inst_i_5_n_0 ));
  OBUF \result_OBUF[22]_inst 
       (.I(result_OBUF[22]),
        .O(result[22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[22]_inst_i_1 
       (.I0(\result_OBUF[22]_inst_i_2_n_0 ),
        .I1(\result_OBUF[22]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[23]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[22]_inst_i_4_n_0 ),
        .O(result_OBUF[22]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[22]_inst_i_2 
       (.I0(data0[22]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[22]),
        .I5(regb_IBUF[22]),
        .O(\result_OBUF[22]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[22]_inst_i_3 
       (.I0(\result_OBUF[24]_inst_i_5_n_0 ),
        .I1(\result_OBUF[22]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[28]_inst_i_5_n_0 ),
        .I5(\result_OBUF[26]_inst_i_5_n_0 ),
        .O(\result_OBUF[22]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[22]_inst_i_4 
       (.I0(regb_IBUF[22]),
        .I1(data1[22]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[22]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0A0C)) 
    \result_OBUF[22]_inst_i_5 
       (.I0(regb_IBUF[7]),
        .I1(regb_IBUF[15]),
        .I2(rega_IBUF[4]),
        .I3(rega_IBUF[3]),
        .O(\result_OBUF[22]_inst_i_5_n_0 ));
  OBUF \result_OBUF[23]_inst 
       (.I(result_OBUF[23]),
        .O(result[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[23]_inst_i_1 
       (.I0(\result_OBUF[23]_inst_i_2_n_0 ),
        .I1(\result_OBUF[23]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[24]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[23]_inst_i_4_n_0 ),
        .O(result_OBUF[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[23]_inst_i_10 
       (.I0(regb_IBUF[21]),
        .I1(rega_IBUF[21]),
        .O(\result_OBUF[23]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[23]_inst_i_11 
       (.I0(regb_IBUF[20]),
        .I1(rega_IBUF[20]),
        .O(\result_OBUF[23]_inst_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[23]_inst_i_12 
       (.I0(rega_IBUF[23]),
        .I1(regb_IBUF[23]),
        .O(\result_OBUF[23]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[23]_inst_i_13 
       (.I0(rega_IBUF[22]),
        .I1(regb_IBUF[22]),
        .O(\result_OBUF[23]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[23]_inst_i_14 
       (.I0(rega_IBUF[21]),
        .I1(regb_IBUF[21]),
        .O(\result_OBUF[23]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[23]_inst_i_15 
       (.I0(rega_IBUF[20]),
        .I1(regb_IBUF[20]),
        .O(\result_OBUF[23]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[23]_inst_i_2 
       (.I0(data0[23]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[23]),
        .I5(regb_IBUF[23]),
        .O(\result_OBUF[23]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[23]_inst_i_3 
       (.I0(\result_OBUF[25]_inst_i_5_n_0 ),
        .I1(\result_OBUF[23]_inst_i_6_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[29]_inst_i_5_n_0 ),
        .I5(\result_OBUF[27]_inst_i_6_n_0 ),
        .O(\result_OBUF[23]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[23]_inst_i_4 
       (.I0(regb_IBUF[23]),
        .I1(data1[23]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[23]_inst_i_4_n_0 ));
  CARRY4 \result_OBUF[23]_inst_i_5 
       (.CI(\result_OBUF[19]_inst_i_5_n_0 ),
        .CO({\result_OBUF[23]_inst_i_5_n_0 ,\result_OBUF[23]_inst_i_5_n_1 ,\result_OBUF[23]_inst_i_5_n_2 ,\result_OBUF[23]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[23:20]),
        .O(data0[23:20]),
        .S({\result_OBUF[23]_inst_i_8_n_0 ,\result_OBUF[23]_inst_i_9_n_0 ,\result_OBUF[23]_inst_i_10_n_0 ,\result_OBUF[23]_inst_i_11_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \result_OBUF[23]_inst_i_6 
       (.I0(regb_IBUF[16]),
        .I1(regb_IBUF[8]),
        .I2(regb_IBUF[0]),
        .I3(rega_IBUF[4]),
        .I4(rega_IBUF[3]),
        .O(\result_OBUF[23]_inst_i_6_n_0 ));
  CARRY4 \result_OBUF[23]_inst_i_7 
       (.CI(\result_OBUF[19]_inst_i_7_n_0 ),
        .CO({\result_OBUF[23]_inst_i_7_n_0 ,\result_OBUF[23]_inst_i_7_n_1 ,\result_OBUF[23]_inst_i_7_n_2 ,\result_OBUF[23]_inst_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[23:20]),
        .O(data1[23:20]),
        .S({\result_OBUF[23]_inst_i_12_n_0 ,\result_OBUF[23]_inst_i_13_n_0 ,\result_OBUF[23]_inst_i_14_n_0 ,\result_OBUF[23]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[23]_inst_i_8 
       (.I0(regb_IBUF[23]),
        .I1(rega_IBUF[23]),
        .O(\result_OBUF[23]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[23]_inst_i_9 
       (.I0(regb_IBUF[22]),
        .I1(rega_IBUF[22]),
        .O(\result_OBUF[23]_inst_i_9_n_0 ));
  OBUF \result_OBUF[24]_inst 
       (.I(result_OBUF[24]),
        .O(result[24]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[24]_inst_i_1 
       (.I0(\result_OBUF[24]_inst_i_2_n_0 ),
        .I1(\result_OBUF[24]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[25]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[24]_inst_i_4_n_0 ),
        .O(result_OBUF[24]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[24]_inst_i_2 
       (.I0(data0[24]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[24]),
        .I5(regb_IBUF[24]),
        .O(\result_OBUF[24]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[24]_inst_i_3 
       (.I0(\result_OBUF[26]_inst_i_5_n_0 ),
        .I1(\result_OBUF[24]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[30]_inst_i_5_n_0 ),
        .I5(\result_OBUF[28]_inst_i_5_n_0 ),
        .O(\result_OBUF[24]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[24]_inst_i_4 
       (.I0(regb_IBUF[24]),
        .I1(data1[24]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[24]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \result_OBUF[24]_inst_i_5 
       (.I0(regb_IBUF[17]),
        .I1(regb_IBUF[9]),
        .I2(regb_IBUF[1]),
        .I3(rega_IBUF[4]),
        .I4(rega_IBUF[3]),
        .O(\result_OBUF[24]_inst_i_5_n_0 ));
  OBUF \result_OBUF[25]_inst 
       (.I(result_OBUF[25]),
        .O(result[25]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[25]_inst_i_1 
       (.I0(\result_OBUF[25]_inst_i_2_n_0 ),
        .I1(\result_OBUF[25]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[26]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[25]_inst_i_4_n_0 ),
        .O(result_OBUF[25]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[25]_inst_i_2 
       (.I0(data0[25]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[25]),
        .I5(regb_IBUF[25]),
        .O(\result_OBUF[25]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[25]_inst_i_3 
       (.I0(\result_OBUF[27]_inst_i_6_n_0 ),
        .I1(\result_OBUF[25]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[27]_inst_i_7_n_0 ),
        .I5(\result_OBUF[29]_inst_i_5_n_0 ),
        .O(\result_OBUF[25]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[25]_inst_i_4 
       (.I0(regb_IBUF[25]),
        .I1(data1[25]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[25]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \result_OBUF[25]_inst_i_5 
       (.I0(regb_IBUF[18]),
        .I1(regb_IBUF[10]),
        .I2(regb_IBUF[2]),
        .I3(rega_IBUF[4]),
        .I4(rega_IBUF[3]),
        .O(\result_OBUF[25]_inst_i_5_n_0 ));
  OBUF \result_OBUF[26]_inst 
       (.I(result_OBUF[26]),
        .O(result[26]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[26]_inst_i_1 
       (.I0(\result_OBUF[26]_inst_i_2_n_0 ),
        .I1(\result_OBUF[26]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[27]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[26]_inst_i_4_n_0 ),
        .O(result_OBUF[26]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[26]_inst_i_2 
       (.I0(data0[26]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[26]),
        .I5(regb_IBUF[26]),
        .O(\result_OBUF[26]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[26]_inst_i_3 
       (.I0(\result_OBUF[28]_inst_i_5_n_0 ),
        .I1(\result_OBUF[26]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[28]_inst_i_6_n_0 ),
        .I5(\result_OBUF[30]_inst_i_5_n_0 ),
        .O(\result_OBUF[26]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[26]_inst_i_4 
       (.I0(regb_IBUF[26]),
        .I1(data1[26]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[26]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \result_OBUF[26]_inst_i_5 
       (.I0(regb_IBUF[19]),
        .I1(regb_IBUF[11]),
        .I2(regb_IBUF[3]),
        .I3(rega_IBUF[4]),
        .I4(rega_IBUF[3]),
        .O(\result_OBUF[26]_inst_i_5_n_0 ));
  OBUF \result_OBUF[27]_inst 
       (.I(result_OBUF[27]),
        .O(result[27]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[27]_inst_i_1 
       (.I0(\result_OBUF[27]_inst_i_2_n_0 ),
        .I1(\result_OBUF[27]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[28]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[27]_inst_i_4_n_0 ),
        .O(result_OBUF[27]));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[27]_inst_i_10 
       (.I0(regb_IBUF[26]),
        .I1(rega_IBUF[26]),
        .O(\result_OBUF[27]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[27]_inst_i_11 
       (.I0(regb_IBUF[25]),
        .I1(rega_IBUF[25]),
        .O(\result_OBUF[27]_inst_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[27]_inst_i_12 
       (.I0(regb_IBUF[24]),
        .I1(rega_IBUF[24]),
        .O(\result_OBUF[27]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[27]_inst_i_13 
       (.I0(rega_IBUF[27]),
        .I1(regb_IBUF[27]),
        .O(\result_OBUF[27]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[27]_inst_i_14 
       (.I0(rega_IBUF[26]),
        .I1(regb_IBUF[26]),
        .O(\result_OBUF[27]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[27]_inst_i_15 
       (.I0(rega_IBUF[25]),
        .I1(regb_IBUF[25]),
        .O(\result_OBUF[27]_inst_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[27]_inst_i_16 
       (.I0(rega_IBUF[24]),
        .I1(regb_IBUF[24]),
        .O(\result_OBUF[27]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[27]_inst_i_2 
       (.I0(data0[27]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[27]),
        .I5(regb_IBUF[27]),
        .O(\result_OBUF[27]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[27]_inst_i_3 
       (.I0(\result_OBUF[29]_inst_i_5_n_0 ),
        .I1(\result_OBUF[27]_inst_i_6_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[31]_inst_i_10_n_0 ),
        .I5(\result_OBUF[27]_inst_i_7_n_0 ),
        .O(\result_OBUF[27]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[27]_inst_i_4 
       (.I0(regb_IBUF[27]),
        .I1(data1[27]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[27]_inst_i_4_n_0 ));
  CARRY4 \result_OBUF[27]_inst_i_5 
       (.CI(\result_OBUF[23]_inst_i_5_n_0 ),
        .CO({\result_OBUF[27]_inst_i_5_n_0 ,\result_OBUF[27]_inst_i_5_n_1 ,\result_OBUF[27]_inst_i_5_n_2 ,\result_OBUF[27]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[27:24]),
        .O(data0[27:24]),
        .S({\result_OBUF[27]_inst_i_9_n_0 ,\result_OBUF[27]_inst_i_10_n_0 ,\result_OBUF[27]_inst_i_11_n_0 ,\result_OBUF[27]_inst_i_12_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \result_OBUF[27]_inst_i_6 
       (.I0(regb_IBUF[20]),
        .I1(regb_IBUF[12]),
        .I2(regb_IBUF[4]),
        .I3(rega_IBUF[4]),
        .I4(rega_IBUF[3]),
        .O(\result_OBUF[27]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[27]_inst_i_7 
       (.I0(regb_IBUF[8]),
        .I1(regb_IBUF[0]),
        .I2(rega_IBUF[3]),
        .I3(rega_IBUF[4]),
        .I4(regb_IBUF[24]),
        .I5(regb_IBUF[16]),
        .O(\result_OBUF[27]_inst_i_7_n_0 ));
  CARRY4 \result_OBUF[27]_inst_i_8 
       (.CI(\result_OBUF[23]_inst_i_7_n_0 ),
        .CO({\result_OBUF[27]_inst_i_8_n_0 ,\result_OBUF[27]_inst_i_8_n_1 ,\result_OBUF[27]_inst_i_8_n_2 ,\result_OBUF[27]_inst_i_8_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[27:24]),
        .O(data1[27:24]),
        .S({\result_OBUF[27]_inst_i_13_n_0 ,\result_OBUF[27]_inst_i_14_n_0 ,\result_OBUF[27]_inst_i_15_n_0 ,\result_OBUF[27]_inst_i_16_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[27]_inst_i_9 
       (.I0(regb_IBUF[27]),
        .I1(rega_IBUF[27]),
        .O(\result_OBUF[27]_inst_i_9_n_0 ));
  OBUF \result_OBUF[28]_inst 
       (.I(result_OBUF[28]),
        .O(result[28]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[28]_inst_i_1 
       (.I0(\result_OBUF[28]_inst_i_2_n_0 ),
        .I1(\result_OBUF[28]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[29]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[28]_inst_i_4_n_0 ),
        .O(result_OBUF[28]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[28]_inst_i_2 
       (.I0(data0[28]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[28]),
        .I5(regb_IBUF[28]),
        .O(\result_OBUF[28]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[28]_inst_i_3 
       (.I0(\result_OBUF[30]_inst_i_5_n_0 ),
        .I1(\result_OBUF[28]_inst_i_5_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[31]_inst_i_18_n_0 ),
        .I5(\result_OBUF[28]_inst_i_6_n_0 ),
        .O(\result_OBUF[28]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[28]_inst_i_4 
       (.I0(regb_IBUF[28]),
        .I1(data1[28]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[28]_inst_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \result_OBUF[28]_inst_i_5 
       (.I0(regb_IBUF[21]),
        .I1(regb_IBUF[13]),
        .I2(regb_IBUF[5]),
        .I3(rega_IBUF[4]),
        .I4(rega_IBUF[3]),
        .O(\result_OBUF[28]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[28]_inst_i_6 
       (.I0(regb_IBUF[9]),
        .I1(regb_IBUF[1]),
        .I2(rega_IBUF[3]),
        .I3(rega_IBUF[4]),
        .I4(regb_IBUF[25]),
        .I5(regb_IBUF[17]),
        .O(\result_OBUF[28]_inst_i_6_n_0 ));
  OBUF \result_OBUF[29]_inst 
       (.I(result_OBUF[29]),
        .O(result[29]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[29]_inst_i_1 
       (.I0(\result_OBUF[29]_inst_i_2_n_0 ),
        .I1(\result_OBUF[29]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[30]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[29]_inst_i_4_n_0 ),
        .O(result_OBUF[29]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[29]_inst_i_2 
       (.I0(data0[29]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[29]),
        .I5(regb_IBUF[29]),
        .O(\result_OBUF[29]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \result_OBUF[29]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_8_n_0 ),
        .I1(\result_OBUF[31]_inst_i_10_n_0 ),
        .I2(\result_OBUF[29]_inst_i_5_n_0 ),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[1]),
        .O(\result_OBUF[29]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[29]_inst_i_4 
       (.I0(regb_IBUF[29]),
        .I1(data1[29]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[29]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \result_OBUF[29]_inst_i_5 
       (.I0(regb_IBUF[22]),
        .I1(regb_IBUF[14]),
        .I2(regb_IBUF[6]),
        .I3(rega_IBUF[4]),
        .I4(rega_IBUF[3]),
        .O(\result_OBUF[29]_inst_i_5_n_0 ));
  OBUF \result_OBUF[2]_inst 
       (.I(result_OBUF[2]),
        .O(result[2]));
  LUT6 #(
    .INIT(64'hFFFFFEEEFEEEFEEE)) 
    \result_OBUF[2]_inst_i_1 
       (.I0(\result_OBUF[2]_inst_i_2_n_0 ),
        .I1(\result_OBUF[2]_inst_i_3_n_0 ),
        .I2(rega_IBUF[2]),
        .I3(\result_OBUF[2]_inst_i_4_n_0 ),
        .I4(data1[2]),
        .I5(\result_OBUF[2]_inst_i_6_n_0 ),
        .O(result_OBUF[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[2]_inst_i_10 
       (.I0(rega_IBUF[1]),
        .I1(regb_IBUF[1]),
        .O(\result_OBUF[2]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[2]_inst_i_11 
       (.I0(rega_IBUF[0]),
        .I1(regb_IBUF[0]),
        .O(\result_OBUF[2]_inst_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[2]_inst_i_2 
       (.I0(data0[2]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(regb_IBUF[2]),
        .I5(rega_IBUF[2]),
        .O(\result_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \result_OBUF[2]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_3_n_0 ),
        .I1(\result_OBUF[10]_inst_i_6_n_0 ),
        .I2(\result_OBUF[2]_inst_i_7_n_0 ),
        .I3(regb_IBUF[1]),
        .I4(\result_OBUF[3]_inst_i_3_n_0 ),
        .I5(\result_OBUF[31]_inst_i_5_n_0 ),
        .O(\result_OBUF[2]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \result_OBUF[2]_inst_i_4 
       (.I0(aluOpCode_IBUF[2]),
        .I1(aluOpCode_IBUF[1]),
        .I2(aluOpCode_IBUF[0]),
        .O(\result_OBUF[2]_inst_i_4_n_0 ));
  CARRY4 \result_OBUF[2]_inst_i_5 
       (.CI(1'b0),
        .CO({\result_OBUF[2]_inst_i_5_n_0 ,\result_OBUF[2]_inst_i_5_n_1 ,\result_OBUF[2]_inst_i_5_n_2 ,\result_OBUF[2]_inst_i_5_n_3 }),
        .CYINIT(1'b1),
        .DI(rega_IBUF[3:0]),
        .O(data1[3:0]),
        .S({\result_OBUF[2]_inst_i_8_n_0 ,\result_OBUF[2]_inst_i_9_n_0 ,\result_OBUF[2]_inst_i_10_n_0 ,\result_OBUF[2]_inst_i_11_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \result_OBUF[2]_inst_i_6 
       (.I0(aluOpCode_IBUF[1]),
        .I1(aluOpCode_IBUF[2]),
        .I2(aluOpCode_IBUF[0]),
        .O(\result_OBUF[2]_inst_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \result_OBUF[2]_inst_i_7 
       (.I0(rega_IBUF[2]),
        .I1(rega_IBUF[1]),
        .O(\result_OBUF[2]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[2]_inst_i_8 
       (.I0(rega_IBUF[3]),
        .I1(regb_IBUF[3]),
        .O(\result_OBUF[2]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[2]_inst_i_9 
       (.I0(rega_IBUF[2]),
        .I1(regb_IBUF[2]),
        .O(\result_OBUF[2]_inst_i_9_n_0 ));
  OBUF \result_OBUF[30]_inst 
       (.I(result_OBUF[30]),
        .O(result[30]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[30]_inst_i_1 
       (.I0(\result_OBUF[30]_inst_i_2_n_0 ),
        .I1(\result_OBUF[30]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[31]_inst_i_2_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[30]_inst_i_4_n_0 ),
        .O(result_OBUF[30]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[30]_inst_i_2 
       (.I0(data0[30]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[30]),
        .I5(regb_IBUF[30]),
        .O(\result_OBUF[30]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF0CCAAAA)) 
    \result_OBUF[30]_inst_i_3 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(\result_OBUF[31]_inst_i_18_n_0 ),
        .I2(\result_OBUF[30]_inst_i_5_n_0 ),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[1]),
        .O(\result_OBUF[30]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[30]_inst_i_4 
       (.I0(regb_IBUF[30]),
        .I1(data1[30]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[30]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00CCF0AA)) 
    \result_OBUF[30]_inst_i_5 
       (.I0(regb_IBUF[23]),
        .I1(regb_IBUF[15]),
        .I2(regb_IBUF[7]),
        .I3(rega_IBUF[4]),
        .I4(rega_IBUF[3]),
        .O(\result_OBUF[30]_inst_i_5_n_0 ));
  OBUF \result_OBUF[31]_inst 
       (.I(result_OBUF[31]),
        .O(result[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF888)) 
    \result_OBUF[31]_inst_i_1 
       (.I0(\result_OBUF[31]_inst_i_2_n_0 ),
        .I1(\result_OBUF[31]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_4_n_0 ),
        .I3(\result_OBUF[31]_inst_i_5_n_0 ),
        .I4(\result_OBUF[31]_inst_i_6_n_0 ),
        .I5(\result_OBUF[31]_inst_i_7_n_0 ),
        .O(result_OBUF[31]));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[31]_inst_i_10 
       (.I0(regb_IBUF[10]),
        .I1(regb_IBUF[2]),
        .I2(rega_IBUF[3]),
        .I3(rega_IBUF[4]),
        .I4(regb_IBUF[26]),
        .I5(regb_IBUF[18]),
        .O(\result_OBUF[31]_inst_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \result_OBUF[31]_inst_i_11 
       (.I0(regb_IBUF[22]),
        .I1(regb_IBUF[30]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(rega_IBUF[4]),
        .O(\result_OBUF[31]_inst_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \result_OBUF[31]_inst_i_12 
       (.I0(aluOpCode_IBUF[1]),
        .I1(aluOpCode_IBUF[2]),
        .O(\result_OBUF[31]_inst_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \result_OBUF[31]_inst_i_13 
       (.I0(rega_IBUF[29]),
        .I1(rega_IBUF[30]),
        .I2(rega_IBUF[22]),
        .I3(\result_OBUF[31]_inst_i_24_n_0 ),
        .I4(\result_OBUF[31]_inst_i_25_n_0 ),
        .O(\result_OBUF[31]_inst_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \result_OBUF[31]_inst_i_14 
       (.I0(rega_IBUF[7]),
        .I1(rega_IBUF[8]),
        .I2(rega_IBUF[5]),
        .I3(rega_IBUF[6]),
        .I4(\result_OBUF[31]_inst_i_26_n_0 ),
        .O(\result_OBUF[31]_inst_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \result_OBUF[31]_inst_i_15 
       (.I0(rega_IBUF[17]),
        .I1(rega_IBUF[18]),
        .I2(rega_IBUF[19]),
        .I3(rega_IBUF[20]),
        .I4(\result_OBUF[31]_inst_i_27_n_0 ),
        .O(\result_OBUF[31]_inst_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \result_OBUF[31]_inst_i_16 
       (.I0(\result_OBUF[28]_inst_i_6_n_0 ),
        .I1(rega_IBUF[2]),
        .I2(\result_OBUF[31]_inst_i_28_n_0 ),
        .I3(\result_OBUF[31]_inst_i_29_n_0 ),
        .O(\result_OBUF[31]_inst_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0203000002000000)) 
    \result_OBUF[31]_inst_i_17 
       (.I0(regb_IBUF[7]),
        .I1(rega_IBUF[2]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[3]),
        .I4(rega_IBUF[4]),
        .I5(regb_IBUF[15]),
        .O(\result_OBUF[31]_inst_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hCAFFCAF0CA0FCA00)) 
    \result_OBUF[31]_inst_i_18 
       (.I0(regb_IBUF[11]),
        .I1(regb_IBUF[3]),
        .I2(rega_IBUF[3]),
        .I3(rega_IBUF[4]),
        .I4(regb_IBUF[27]),
        .I5(regb_IBUF[19]),
        .O(\result_OBUF[31]_inst_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000A000C)) 
    \result_OBUF[31]_inst_i_19 
       (.I0(regb_IBUF[23]),
        .I1(regb_IBUF[31]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(rega_IBUF[4]),
        .O(\result_OBUF[31]_inst_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFECECEC)) 
    \result_OBUF[31]_inst_i_2 
       (.I0(\result_OBUF[31]_inst_i_8_n_0 ),
        .I1(\result_OBUF[31]_inst_i_9_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[31]_inst_i_10_n_0 ),
        .I5(\result_OBUF[31]_inst_i_11_n_0 ),
        .O(\result_OBUF[31]_inst_i_2_n_0 ));
  CARRY4 \result_OBUF[31]_inst_i_20 
       (.CI(\result_OBUF[27]_inst_i_8_n_0 ),
        .CO({\NLW_result_OBUF[31]_inst_i_20_CO_UNCONNECTED [3],\result_OBUF[31]_inst_i_20_n_1 ,\result_OBUF[31]_inst_i_20_n_2 ,\result_OBUF[31]_inst_i_20_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rega_IBUF[30:28]}),
        .O(data1[31:28]),
        .S({\result_OBUF[31]_inst_i_30_n_0 ,\result_OBUF[31]_inst_i_31_n_0 ,\result_OBUF[31]_inst_i_32_n_0 ,\result_OBUF[31]_inst_i_33_n_0 }));
  CARRY4 \result_OBUF[31]_inst_i_21 
       (.CI(\result_OBUF[27]_inst_i_5_n_0 ),
        .CO({\NLW_result_OBUF[31]_inst_i_21_CO_UNCONNECTED [3],\result_OBUF[31]_inst_i_21_n_1 ,\result_OBUF[31]_inst_i_21_n_2 ,\result_OBUF[31]_inst_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,rega_IBUF[30:28]}),
        .O(data0[31:28]),
        .S({\result_OBUF[31]_inst_i_34_n_0 ,\result_OBUF[31]_inst_i_35_n_0 ,\result_OBUF[31]_inst_i_36_n_0 ,\result_OBUF[31]_inst_i_37_n_0 }));
  LUT5 #(
    .INIT(32'h00002320)) 
    \result_OBUF[31]_inst_i_22 
       (.I0(regb_IBUF[20]),
        .I1(rega_IBUF[4]),
        .I2(rega_IBUF[3]),
        .I3(regb_IBUF[28]),
        .I4(rega_IBUF[2]),
        .O(\result_OBUF[31]_inst_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00008C80)) 
    \result_OBUF[31]_inst_i_23 
       (.I0(regb_IBUF[4]),
        .I1(rega_IBUF[4]),
        .I2(rega_IBUF[3]),
        .I3(regb_IBUF[12]),
        .I4(rega_IBUF[2]),
        .O(\result_OBUF[31]_inst_i_23_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[31]_inst_i_24 
       (.I0(rega_IBUF[28]),
        .I1(rega_IBUF[25]),
        .I2(rega_IBUF[31]),
        .I3(rega_IBUF[27]),
        .O(\result_OBUF[31]_inst_i_24_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \result_OBUF[31]_inst_i_25 
       (.I0(rega_IBUF[24]),
        .I1(rega_IBUF[21]),
        .I2(rega_IBUF[26]),
        .I3(rega_IBUF[23]),
        .O(\result_OBUF[31]_inst_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \result_OBUF[31]_inst_i_26 
       (.I0(rega_IBUF[12]),
        .I1(rega_IBUF[11]),
        .I2(rega_IBUF[10]),
        .I3(rega_IBUF[9]),
        .O(\result_OBUF[31]_inst_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \result_OBUF[31]_inst_i_27 
       (.I0(rega_IBUF[16]),
        .I1(rega_IBUF[15]),
        .I2(rega_IBUF[14]),
        .I3(rega_IBUF[13]),
        .O(\result_OBUF[31]_inst_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00002320)) 
    \result_OBUF[31]_inst_i_28 
       (.I0(regb_IBUF[21]),
        .I1(rega_IBUF[4]),
        .I2(rega_IBUF[3]),
        .I3(regb_IBUF[29]),
        .I4(rega_IBUF[2]),
        .O(\result_OBUF[31]_inst_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00008C80)) 
    \result_OBUF[31]_inst_i_29 
       (.I0(regb_IBUF[5]),
        .I1(rega_IBUF[4]),
        .I2(rega_IBUF[3]),
        .I3(regb_IBUF[13]),
        .I4(rega_IBUF[2]),
        .O(\result_OBUF[31]_inst_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \result_OBUF[31]_inst_i_3 
       (.I0(aluOpCode_IBUF[0]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(\result_OBUF[31]_inst_i_14_n_0 ),
        .I4(\result_OBUF[31]_inst_i_15_n_0 ),
        .I5(rega_IBUF[0]),
        .O(\result_OBUF[31]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[31]_inst_i_30 
       (.I0(regb_IBUF[31]),
        .I1(rega_IBUF[31]),
        .O(\result_OBUF[31]_inst_i_30_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[31]_inst_i_31 
       (.I0(regb_IBUF[30]),
        .I1(rega_IBUF[30]),
        .O(\result_OBUF[31]_inst_i_31_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[31]_inst_i_32 
       (.I0(regb_IBUF[29]),
        .I1(rega_IBUF[29]),
        .O(\result_OBUF[31]_inst_i_32_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[31]_inst_i_33 
       (.I0(regb_IBUF[28]),
        .I1(rega_IBUF[28]),
        .O(\result_OBUF[31]_inst_i_33_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[31]_inst_i_34 
       (.I0(rega_IBUF[31]),
        .I1(regb_IBUF[31]),
        .O(\result_OBUF[31]_inst_i_34_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[31]_inst_i_35 
       (.I0(rega_IBUF[30]),
        .I1(regb_IBUF[30]),
        .O(\result_OBUF[31]_inst_i_35_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[31]_inst_i_36 
       (.I0(rega_IBUF[29]),
        .I1(regb_IBUF[29]),
        .O(\result_OBUF[31]_inst_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[31]_inst_i_37 
       (.I0(rega_IBUF[28]),
        .I1(regb_IBUF[28]),
        .O(\result_OBUF[31]_inst_i_37_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFECECEC)) 
    \result_OBUF[31]_inst_i_4 
       (.I0(\result_OBUF[31]_inst_i_16_n_0 ),
        .I1(\result_OBUF[31]_inst_i_17_n_0 ),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(\result_OBUF[31]_inst_i_18_n_0 ),
        .I5(\result_OBUF[31]_inst_i_19_n_0 ),
        .O(\result_OBUF[31]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000004000000)) 
    \result_OBUF[31]_inst_i_5 
       (.I0(aluOpCode_IBUF[0]),
        .I1(\result_OBUF[31]_inst_i_12_n_0 ),
        .I2(\result_OBUF[31]_inst_i_13_n_0 ),
        .I3(\result_OBUF[31]_inst_i_14_n_0 ),
        .I4(\result_OBUF[31]_inst_i_15_n_0 ),
        .I5(rega_IBUF[0]),
        .O(\result_OBUF[31]_inst_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000EEF000000000)) 
    \result_OBUF[31]_inst_i_6 
       (.I0(rega_IBUF[31]),
        .I1(regb_IBUF[31]),
        .I2(data1[31]),
        .I3(aluOpCode_IBUF[1]),
        .I4(aluOpCode_IBUF[2]),
        .I5(aluOpCode_IBUF[0]),
        .O(\result_OBUF[31]_inst_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h000EF004F0040004)) 
    \result_OBUF[31]_inst_i_7 
       (.I0(aluOpCode_IBUF[2]),
        .I1(data0[31]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[0]),
        .I4(rega_IBUF[31]),
        .I5(regb_IBUF[31]),
        .O(\result_OBUF[31]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF8)) 
    \result_OBUF[31]_inst_i_8 
       (.I0(\result_OBUF[27]_inst_i_7_n_0 ),
        .I1(rega_IBUF[2]),
        .I2(\result_OBUF[31]_inst_i_22_n_0 ),
        .I3(\result_OBUF[31]_inst_i_23_n_0 ),
        .O(\result_OBUF[31]_inst_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0203000002000000)) 
    \result_OBUF[31]_inst_i_9 
       (.I0(regb_IBUF[6]),
        .I1(rega_IBUF[2]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[3]),
        .I4(rega_IBUF[4]),
        .I5(regb_IBUF[14]),
        .O(\result_OBUF[31]_inst_i_9_n_0 ));
  OBUF \result_OBUF[3]_inst 
       (.I(result_OBUF[3]),
        .O(result[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[3]_inst_i_1 
       (.I0(\result_OBUF[3]_inst_i_2_n_0 ),
        .I1(\result_OBUF[3]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[4]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[3]_inst_i_4_n_0 ),
        .O(result_OBUF[3]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[3]_inst_i_2 
       (.I0(data0[3]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(regb_IBUF[3]),
        .O(\result_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \result_OBUF[3]_inst_i_3 
       (.I0(regb_IBUF[0]),
        .I1(regb_IBUF[2]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(rega_IBUF[4]),
        .O(\result_OBUF[3]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[3]_inst_i_4 
       (.I0(regb_IBUF[3]),
        .I1(data1[3]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[3]_inst_i_4_n_0 ));
  CARRY4 \result_OBUF[3]_inst_i_5 
       (.CI(1'b0),
        .CO({\result_OBUF[3]_inst_i_5_n_0 ,\result_OBUF[3]_inst_i_5_n_1 ,\result_OBUF[3]_inst_i_5_n_2 ,\result_OBUF[3]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[3:0]),
        .O(data0[3:0]),
        .S({\result_OBUF[3]_inst_i_6_n_0 ,\result_OBUF[3]_inst_i_7_n_0 ,\result_OBUF[3]_inst_i_8_n_0 ,\result_OBUF[3]_inst_i_9_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[3]_inst_i_6 
       (.I0(regb_IBUF[3]),
        .I1(rega_IBUF[3]),
        .O(\result_OBUF[3]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[3]_inst_i_7 
       (.I0(regb_IBUF[2]),
        .I1(rega_IBUF[2]),
        .O(\result_OBUF[3]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[3]_inst_i_8 
       (.I0(regb_IBUF[1]),
        .I1(rega_IBUF[1]),
        .O(\result_OBUF[3]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[3]_inst_i_9 
       (.I0(regb_IBUF[0]),
        .I1(rega_IBUF[0]),
        .O(\result_OBUF[3]_inst_i_9_n_0 ));
  OBUF \result_OBUF[4]_inst 
       (.I(result_OBUF[4]),
        .O(result[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[4]_inst_i_1 
       (.I0(\result_OBUF[4]_inst_i_2_n_0 ),
        .I1(\result_OBUF[4]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[5]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[4]_inst_i_4_n_0 ),
        .O(result_OBUF[4]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[4]_inst_i_2 
       (.I0(data0[4]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[4]),
        .I5(regb_IBUF[4]),
        .O(\result_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \result_OBUF[4]_inst_i_3 
       (.I0(regb_IBUF[1]),
        .I1(regb_IBUF[3]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(rega_IBUF[4]),
        .O(\result_OBUF[4]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[4]_inst_i_4 
       (.I0(regb_IBUF[4]),
        .I1(data1[4]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[4]_inst_i_4_n_0 ));
  OBUF \result_OBUF[5]_inst 
       (.I(result_OBUF[5]),
        .O(result[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[5]_inst_i_1 
       (.I0(\result_OBUF[5]_inst_i_2_n_0 ),
        .I1(\result_OBUF[5]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[6]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[5]_inst_i_4_n_0 ),
        .O(result_OBUF[5]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[5]_inst_i_2 
       (.I0(data0[5]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[5]),
        .I5(regb_IBUF[5]),
        .O(\result_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \result_OBUF[5]_inst_i_3 
       (.I0(regb_IBUF[4]),
        .I1(regb_IBUF[2]),
        .I2(regb_IBUF[0]),
        .I3(rega_IBUF[1]),
        .I4(rega_IBUF[2]),
        .I5(\result_OBUF[10]_inst_i_6_n_0 ),
        .O(\result_OBUF[5]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[5]_inst_i_4 
       (.I0(regb_IBUF[5]),
        .I1(data1[5]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[5]_inst_i_4_n_0 ));
  OBUF \result_OBUF[6]_inst 
       (.I(result_OBUF[6]),
        .O(result[6]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[6]_inst_i_1 
       (.I0(\result_OBUF[6]_inst_i_2_n_0 ),
        .I1(\result_OBUF[6]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[7]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[6]_inst_i_4_n_0 ),
        .O(result_OBUF[6]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[6]_inst_i_2 
       (.I0(data0[6]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[6]),
        .I5(regb_IBUF[6]),
        .O(\result_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00F0CCAA00000000)) 
    \result_OBUF[6]_inst_i_3 
       (.I0(regb_IBUF[5]),
        .I1(regb_IBUF[3]),
        .I2(regb_IBUF[1]),
        .I3(rega_IBUF[1]),
        .I4(rega_IBUF[2]),
        .I5(\result_OBUF[10]_inst_i_6_n_0 ),
        .O(\result_OBUF[6]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[6]_inst_i_4 
       (.I0(regb_IBUF[6]),
        .I1(data1[6]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[6]_inst_i_4_n_0 ));
  OBUF \result_OBUF[7]_inst 
       (.I(result_OBUF[7]),
        .O(result[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[7]_inst_i_1 
       (.I0(\result_OBUF[7]_inst_i_2_n_0 ),
        .I1(\result_OBUF[7]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[8]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[7]_inst_i_4_n_0 ),
        .O(result_OBUF[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[7]_inst_i_10 
       (.I0(regb_IBUF[5]),
        .I1(rega_IBUF[5]),
        .O(\result_OBUF[7]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[7]_inst_i_11 
       (.I0(regb_IBUF[4]),
        .I1(rega_IBUF[4]),
        .O(\result_OBUF[7]_inst_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[7]_inst_i_12 
       (.I0(rega_IBUF[7]),
        .I1(regb_IBUF[7]),
        .O(\result_OBUF[7]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[7]_inst_i_13 
       (.I0(rega_IBUF[6]),
        .I1(regb_IBUF[6]),
        .O(\result_OBUF[7]_inst_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[7]_inst_i_14 
       (.I0(rega_IBUF[5]),
        .I1(regb_IBUF[5]),
        .O(\result_OBUF[7]_inst_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \result_OBUF[7]_inst_i_15 
       (.I0(rega_IBUF[4]),
        .I1(regb_IBUF[4]),
        .O(\result_OBUF[7]_inst_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[7]_inst_i_2 
       (.I0(data0[7]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[7]),
        .I5(regb_IBUF[7]),
        .O(\result_OBUF[7]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88800800)) 
    \result_OBUF[7]_inst_i_3 
       (.I0(\result_OBUF[10]_inst_i_6_n_0 ),
        .I1(rega_IBUF[2]),
        .I2(rega_IBUF[1]),
        .I3(regb_IBUF[2]),
        .I4(regb_IBUF[0]),
        .I5(\result_OBUF[7]_inst_i_6_n_0 ),
        .O(\result_OBUF[7]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[7]_inst_i_4 
       (.I0(regb_IBUF[7]),
        .I1(data1[7]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[7]_inst_i_4_n_0 ));
  CARRY4 \result_OBUF[7]_inst_i_5 
       (.CI(\result_OBUF[3]_inst_i_5_n_0 ),
        .CO({\result_OBUF[7]_inst_i_5_n_0 ,\result_OBUF[7]_inst_i_5_n_1 ,\result_OBUF[7]_inst_i_5_n_2 ,\result_OBUF[7]_inst_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[7:4]),
        .O(data0[7:4]),
        .S({\result_OBUF[7]_inst_i_8_n_0 ,\result_OBUF[7]_inst_i_9_n_0 ,\result_OBUF[7]_inst_i_10_n_0 ,\result_OBUF[7]_inst_i_11_n_0 }));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \result_OBUF[7]_inst_i_6 
       (.I0(regb_IBUF[4]),
        .I1(regb_IBUF[6]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(rega_IBUF[4]),
        .O(\result_OBUF[7]_inst_i_6_n_0 ));
  CARRY4 \result_OBUF[7]_inst_i_7 
       (.CI(\result_OBUF[2]_inst_i_5_n_0 ),
        .CO({\result_OBUF[7]_inst_i_7_n_0 ,\result_OBUF[7]_inst_i_7_n_1 ,\result_OBUF[7]_inst_i_7_n_2 ,\result_OBUF[7]_inst_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(rega_IBUF[7:4]),
        .O(data1[7:4]),
        .S({\result_OBUF[7]_inst_i_12_n_0 ,\result_OBUF[7]_inst_i_13_n_0 ,\result_OBUF[7]_inst_i_14_n_0 ,\result_OBUF[7]_inst_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[7]_inst_i_8 
       (.I0(regb_IBUF[7]),
        .I1(rega_IBUF[7]),
        .O(\result_OBUF[7]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \result_OBUF[7]_inst_i_9 
       (.I0(regb_IBUF[6]),
        .I1(rega_IBUF[6]),
        .O(\result_OBUF[7]_inst_i_9_n_0 ));
  OBUF \result_OBUF[8]_inst 
       (.I(result_OBUF[8]),
        .O(result[8]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[8]_inst_i_1 
       (.I0(\result_OBUF[8]_inst_i_2_n_0 ),
        .I1(\result_OBUF[8]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[9]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[8]_inst_i_4_n_0 ),
        .O(result_OBUF[8]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[8]_inst_i_2 
       (.I0(data0[8]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[8]),
        .I5(regb_IBUF[8]),
        .O(\result_OBUF[8]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF88800800)) 
    \result_OBUF[8]_inst_i_3 
       (.I0(\result_OBUF[10]_inst_i_6_n_0 ),
        .I1(rega_IBUF[2]),
        .I2(rega_IBUF[1]),
        .I3(regb_IBUF[3]),
        .I4(regb_IBUF[1]),
        .I5(\result_OBUF[8]_inst_i_5_n_0 ),
        .O(\result_OBUF[8]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[8]_inst_i_4 
       (.I0(regb_IBUF[8]),
        .I1(data1[8]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[8]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000000AC)) 
    \result_OBUF[8]_inst_i_5 
       (.I0(regb_IBUF[5]),
        .I1(regb_IBUF[7]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(rega_IBUF[4]),
        .O(\result_OBUF[8]_inst_i_5_n_0 ));
  OBUF \result_OBUF[9]_inst 
       (.I(result_OBUF[9]),
        .O(result[9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEAEAEA)) 
    \result_OBUF[9]_inst_i_1 
       (.I0(\result_OBUF[9]_inst_i_2_n_0 ),
        .I1(\result_OBUF[9]_inst_i_3_n_0 ),
        .I2(\result_OBUF[31]_inst_i_3_n_0 ),
        .I3(\result_OBUF[10]_inst_i_3_n_0 ),
        .I4(\result_OBUF[31]_inst_i_5_n_0 ),
        .I5(\result_OBUF[9]_inst_i_4_n_0 ),
        .O(result_OBUF[9]));
  LUT6 #(
    .INIT(64'h03C2C0C2C0C20002)) 
    \result_OBUF[9]_inst_i_2 
       (.I0(data0[9]),
        .I1(aluOpCode_IBUF[0]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(rega_IBUF[9]),
        .I5(regb_IBUF[9]),
        .O(\result_OBUF[9]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFAEABAAABAAABAA)) 
    \result_OBUF[9]_inst_i_3 
       (.I0(\result_OBUF[9]_inst_i_5_n_0 ),
        .I1(rega_IBUF[1]),
        .I2(rega_IBUF[2]),
        .I3(\result_OBUF[15]_inst_i_6_n_0 ),
        .I4(\result_OBUF[10]_inst_i_6_n_0 ),
        .I5(regb_IBUF[6]),
        .O(\result_OBUF[9]_inst_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00AC0000)) 
    \result_OBUF[9]_inst_i_4 
       (.I0(regb_IBUF[9]),
        .I1(data1[9]),
        .I2(aluOpCode_IBUF[1]),
        .I3(aluOpCode_IBUF[2]),
        .I4(aluOpCode_IBUF[0]),
        .O(\result_OBUF[9]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AC00)) 
    \result_OBUF[9]_inst_i_5 
       (.I0(regb_IBUF[2]),
        .I1(regb_IBUF[4]),
        .I2(rega_IBUF[1]),
        .I3(rega_IBUF[2]),
        .I4(rega_IBUF[3]),
        .I5(rega_IBUF[4]),
        .O(\result_OBUF[9]_inst_i_5_n_0 ));
  OBUF zero_OBUF_inst
       (.I(zero_OBUF),
        .O(zero));
  LUT4 #(
    .INIT(16'h0008)) 
    zero_OBUF_inst_i_1
       (.I0(zero_OBUF_inst_i_2_n_0),
        .I1(zero_OBUF_inst_i_3_n_0),
        .I2(zero_OBUF_inst_i_4_n_0),
        .I3(zero_OBUF_inst_i_5_n_0),
        .O(zero_OBUF));
  LUT4 #(
    .INIT(16'h0001)) 
    zero_OBUF_inst_i_2
       (.I0(result_OBUF[9]),
        .I1(result_OBUF[8]),
        .I2(result_OBUF[11]),
        .I3(result_OBUF[10]),
        .O(zero_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    zero_OBUF_inst_i_3
       (.I0(zero_OBUF_inst_i_6_n_0),
        .I1(result_OBUF[1]),
        .I2(result_OBUF[0]),
        .I3(result_OBUF[3]),
        .I4(result_OBUF[2]),
        .I5(zero_OBUF_inst_i_7_n_0),
        .O(zero_OBUF_inst_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    zero_OBUF_inst_i_4
       (.I0(result_OBUF[27]),
        .I1(result_OBUF[26]),
        .I2(result_OBUF[25]),
        .I3(result_OBUF[24]),
        .I4(zero_OBUF_inst_i_8_n_0),
        .O(zero_OBUF_inst_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    zero_OBUF_inst_i_5
       (.I0(result_OBUF[19]),
        .I1(result_OBUF[18]),
        .I2(result_OBUF[17]),
        .I3(result_OBUF[16]),
        .I4(zero_OBUF_inst_i_9_n_0),
        .O(zero_OBUF_inst_i_5_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    zero_OBUF_inst_i_6
       (.I0(result_OBUF[7]),
        .I1(result_OBUF[6]),
        .I2(result_OBUF[5]),
        .I3(result_OBUF[4]),
        .O(zero_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    zero_OBUF_inst_i_7
       (.I0(result_OBUF[15]),
        .I1(result_OBUF[14]),
        .I2(result_OBUF[13]),
        .I3(result_OBUF[12]),
        .O(zero_OBUF_inst_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    zero_OBUF_inst_i_8
       (.I0(result_OBUF[28]),
        .I1(result_OBUF[29]),
        .I2(result_OBUF[31]),
        .I3(result_OBUF[30]),
        .O(zero_OBUF_inst_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    zero_OBUF_inst_i_9
       (.I0(result_OBUF[20]),
        .I1(result_OBUF[21]),
        .I2(result_OBUF[22]),
        .I3(result_OBUF[23]),
        .O(zero_OBUF_inst_i_9_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
