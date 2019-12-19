`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/19 10:05:19
// Design Name: 
// Module Name: IR
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


module IR(
        input CLK,
        input IRWre,
        input [31:0] iDataOut,
        output reg [31:0] IROut
    );
    
    always@(posedge CLK) begin
        if (IRWre == 1) IROut <= iDataOut;
    end
    
endmodule
