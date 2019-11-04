`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 09:55:42
// Design Name: 
// Module Name: Mux_2
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


module Mux_2(
        input [31:0] In1,
        input [31:0] In2,
        input flag, // 用于表示输出哪一个
        
        output [31:0] Out
    );
    
    assign Out = flag == 1 ? In2 : In1;
endmodule
