`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 09:56:04
// Design Name: 
// Module Name: Mux_4
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


module Mux_4(
        input [31:0] Ins1,
        input [31:0] Ins2,
        input [31:0] Ins3,
        input [31:0] Ins4,
        
        input [1:0] PCSrc, // ∂‘”¶ PCSrc
        
        output reg [31:0] Out
    );
    
    initial Out = 8'h000000;
    
    always @(Ins1 or Ins2 or Ins3 or PCSrc) begin
        case (PCSrc)
            2'b00: Out = Ins1;
            2'b01: Out = Ins2;
            2'b10: Out = Ins3;
            2'b11: Out = Ins4;
        endcase
    end
endmodule
