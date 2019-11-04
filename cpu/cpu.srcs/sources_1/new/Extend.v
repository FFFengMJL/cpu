`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 10:10:25
// Design Name: 
// Module Name: Extend
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


module Extend(
        input [15:0] In,
        input ExtSel,
        
        output [31:0] Out
    );
    
    assign Out = ExtSel == 0 ? {{16{0}}, In} : {{16{In[15]}}, In};
    
endmodule
