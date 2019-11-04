`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 09:54:53
// Design Name: 
// Module Name: PC
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


module PC(
        input CLK,
        input Reset,
        input [31:0] Ins,
        input ExtSel, // 0 代表无拓展，1 代表符号拓展
        
        output reg [31:0] IAddr
    );
        
    always @(negedge CLK) begin
        if (Reset == 0) IAddr = 8'h00000000;
        else IAddr = Ins;
    end
endmodule
