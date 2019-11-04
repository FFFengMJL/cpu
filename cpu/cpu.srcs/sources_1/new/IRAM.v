`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 10:51:11
// Design Name: 
// Module Name: IRAM
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


module IRAM(
        input CLK,
        input [4:0] Iaddr,
        input [31:0] iDataIn,
        input rw, // 0 write, 1 read
        output [31:0] iDataOut
    );
    
    reg [31:0] Ins [0:60];
   
    assign iDataOut[7:0] = rw == 1 ? Ins[Iaddr + 3] : 8'bz;
    assign iDataOut[15:8] = rw == 1 ? Ins[Iaddr + 2] : 8'bz;
    assign iDataOut[23:16] = rw == 1 ? Ins[Iaddr + 1] : 8'bz;
    assign iDataOut[31:24] = rw == 1 ? Ins[Iaddr] : 8'bz;
 
    always @(negedge CLK) begin
        if (rw == 0) begin
            Ins[Iaddr] <= iDataIn[31:24];
            Ins[Iaddr + 1] <= iDataIn[23:16];
            Ins[Iaddr + 2] <= iDataIn[15:8];
            Ins[Iaddr + 3] <= iDataIn[7:0];
        end
    end
endmodule
