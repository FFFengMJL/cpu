`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 11:34:37
// Design Name: 
// Module Name: CPU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module CPU(
    input CLK,
    input Reset
    );
    wire zero, sign, PCWre, Extend;
    wire [1:0] PCSrc;
    wire [2:0] ALUop;
    wire [31:0] PCIn, PCOut;
    
    PC pc(
        .CLK(CLK),
        .Reset(Reset),
        .PCWre(PCWre),
        .PCIn(PCIn),
        .PCOut(PCOut)
    );
    
    IRAM InsRegister();
    Adder pc4_adder();
    Mux_2 reg_w_choose();
    Register regfile();
    Extend extend();
    Mux_2 alua_choose();
    Mux_2 alub_choose();
    ALU alu();
    RAM datamem();
    Mux_2 db_choose();
    LeftShift_2 after_imm_extend();
    LeftShift_2 addr_shift();
    Adder nextpc();
    Mux_4 nextpc_choose();
    CLU control_unit();
endmodule
