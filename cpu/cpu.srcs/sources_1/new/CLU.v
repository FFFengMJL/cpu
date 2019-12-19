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
        input CLK,
        input RST,
        
        output reg PCWre,// 0PC�����ģ�halt����1PC�����µ�ַ
        output reg ALUSrcA,
        output reg ALUSrcB,
        output reg DBDataSrc,
        output reg RegWre,//1�Ĵ���дʹ��
        output reg InsMemRW,//0дIRAM��1��IRAM
        output reg WrRegDSrc,
        output reg IRWre,
        output reg RrRegDSrc,
        output mRD,
        output mWR,
        output reg RegDst,//дREG��rt��дREG��rd
        output reg ExtSel,// 0��չ��1������չ
        output reg [1:0] PCSrc,
        output reg [2:0] ALUOp
    );
    
    wire [2:0] statusIn, statusOut;
    
    Dtrigger DT(
        .RST(RST),
        .CLK(CLK),
        .DIn(statusIn),
        .DOut(statusOut)
    );
    
    NextStatus nextStatus(
        .thisStatus(statusOut),
        .OpCode(OpCode),
        .nextStatus(statusIn)
    );
    
    initial IRWre = 1;
    initial InsMemRW = 1;
    
    always@(OpCode or zero or sign) begin
        PCWre = (OpCode == 6'b000000) ? 0 : 1;
        ALUSrcA = (OpCode == 6'b011000) ? 1 : 0; // sll 1;
        ALUSrcB = (OpCode == 6'b000010 || OpCode == 6'b010001 ||
                   OpCode == 6'b010010 || OpCode == 6'b010011 || 
                   OpCode == 6'b100110 || OpCode == 6'b110000 ||
                   OpCode == 6'b110001) ? 1 : 0;
                   // addiu��andi��ori��xori��slti��lw��sw 1
        DBDataSrc = (OpCode == 6'b110001) ? 1 : 0; // lw 1
        RegWre = (OpCode == 6'b110100 || OpCode == 6'b110101 ||
                  OpCode == 6'b110110 || OpCode == 6'b110000 ||
                  OpCode == 6'b111001 || OpCode == 6'b111000 ||
                  OpCode == 6'b111111) ? 0 : 1;
        // beq��bne��bltz��j��sw��jr��halt 0
        RrRegDSrc = (OpCode == 6'b111010) ? 0 : 1; // jal 0
        //TODO
    end
    
endmodule
