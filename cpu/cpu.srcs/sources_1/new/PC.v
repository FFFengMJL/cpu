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
        input PCWre, // Ð´Ê¹ÄÜ
        
        output reg [31:0] IAddr
    );
    
    initial IAddr = 8'h00000000;
        
    always @(posedge CLK) begin
        if (Reset == 0) IAddr = 8'h00000000;
        else if (PCWre == 1) IAddr = Ins;
        else IAddr = IAddr;
    end
endmodule
