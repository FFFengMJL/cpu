`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/22 23:46:29
// Design Name: 
// Module Name: Mux_3
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


module Mux_3(
        input [4:0] In1,
        input [4:0] In2,
        input [4:0] In3,
        input [1:0] RegDst,
        
        output reg [4:0] Out
    );
    
    always@(*) begin
        case(RegDst)
            2'b00:Out = In1;
            2'b01:Out = In2;
            2'b10:Out = In3;
            default: Out = In3; 
        endcase
    end
    
endmodule
