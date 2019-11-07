`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/06 12:32:03
// Design Name: 
// Module Name: cpu_sim
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


module cpu_sim();
    reg CLK;
//    reg [7:0] Ins [0:255];
    reg RST;
    wire [31:0] CLUOut;
    
    CPU uut(
        .CLK(CLK),
        .Reset(RST)
    );
    integer i;
    integer test;
    initial begin
        CLK = 0;
        RST = 0;
        RST = 1;
        test = 1;
        
        for (i = 0; i <= 30; i = i + 1) begin
            test <= test << 2;
            #100;
            CLK = ~CLK;
            #100;
            CLK = ~CLK;
        end
        
    end
endmodule
