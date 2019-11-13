`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 18:15:33
// Design Name: 
// Module Name: MUX_4_r
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


module MUX_4_r(
        input [15:0] In1, In2, In3, In4,
        input [1:0] mode,
        
        output reg [15:0] DataOut
    );
    
    always@(*) begin
        case (mode)
            2'b00: DataOut = In1;
            2'b01: DataOut = In2;
            2'b10: DataOut = In3;
            2'b11: DataOut = In4;
        endcase
    end
    
endmodule
