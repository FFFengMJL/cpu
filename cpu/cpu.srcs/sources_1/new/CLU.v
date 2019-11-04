`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 09:56:36
// Design Name: 
// Module Name: CLU
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


module CLU(
        input [31:26] OpCode,
        input sign,
        input zero,
        
        output reg ExtSel,// 0拓展，1符号拓展
        output reg PCWre,// 0PC不更改（halt），1PC接受新地址
        output reg InsMemRw,//0写IRAM，1读IRAM
        output reg RegDst,//写REG的rt，写REG的rd
        output reg RegWre,//1寄存器写使能
        output reg ALUSrcA,
        output reg ALUSrcB,
        output reg [2:0] ALUOp,
        output reg [1:0] PCSrc,
        output reg mRD,
        output reg mWR,
        output reg DBDataSrc
    );
    
    always @(*) begin
    end
    
endmodule
