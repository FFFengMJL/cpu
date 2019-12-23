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


module MUX_5_r(
        input [15:0] In1, In2, In3, In4, In5,
        input [2:0] mode,
        
        output reg [15:0] DataOut
    );
    
    always@(*) begin
        case (mode)
            3'b000: DataOut = In1;
            3'b001: DataOut = In2;
            3'b010: DataOut = In3;
            3'b011: DataOut = In4;
            default: DataOut = In5;
        endcase
    end
    
endmodule
