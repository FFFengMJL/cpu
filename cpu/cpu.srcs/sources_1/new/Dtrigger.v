`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/19 10:05:19
// Design Name: 
// Module Name: Dtrigger
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


module Dtrigger(
        input CLK,
        input RST,
        input [2:0] DIn,
        output reg [2:0] DOut
    );
    
    initial DOut = 3'b000;
    
    always@(posedge CLK) begin
        if (RST == 0) DOut = 3'b000;
        else DOut = DIn; 
    end
    
endmodule
