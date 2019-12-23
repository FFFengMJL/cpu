`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/19 10:05:19
// Design Name: 
// Module Name: DR
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


module DR(
        input CLK,
        input [31:0] DRIn,
        output reg [31:0] DROut
    );
    
//    initial DROut = 8'h00000000;
    
    always @(posedge CLK) begin
        DROut = DRIn;
    end
    
endmodule
