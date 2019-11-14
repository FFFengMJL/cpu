`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 20:14:41
// Design Name: 
// Module Name: mux4_r2
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


module mux4_r2(
        input CLK,
        input [15:0] In,
        
        output reg [3:0] Out,
        output reg [3:0] bit
    );
    
    integer i;
    initial begin 
        i = 0;
    end
    
    always @(negedge CLK) begin
        case (i)
            0: begin
                Out = In[15:12];
                bit = ~4'b0001;
            end
            1: begin
                Out = In[11:8];
                bit = ~4'b0010;
            end
            2: begin
                Out = In[7:4];
                bit = ~4'b0100;
            end
            3: begin
                Out = In[3:0];
                bit = ~4'b1000;
            end
        endcase
        i = i == 3 ? 0 : i + 1;
    end
    
endmodule
