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
        
        output reg ExtSel,// 0��չ��1������չ
        output reg PCWre,// 0PC�����ģ�halt����1PC�����µ�ַ
        output reg InsMemRw,//0дIRAM��1��IRAM
        output reg RegDst,//дREG��rt��дREG��rd
        output reg RegWre,//1�Ĵ���дʹ��
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
