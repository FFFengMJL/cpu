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
        
        output reg PCWre,// 0PC不更改（halt），1PC接受新地址
        output reg ALUSrcA,
        output reg ALUSrcB,
        output reg DBDataSrc,
        output reg RegWre,//1寄存器写使能
        output reg InsMemRW,//0写IRAM，1读IRAM
        output reg WrRegDSrc,
        output reg IRWre,
        output reg mRD,
        output reg mWR,
        output reg RegDst,//写REG的rt，写REG的rd
        output reg ExtSel,// 0拓展，1符号拓展
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
    
    always@(OpCode or zero or sign or statusOut) begin
        PCWre = (OpCode == 6'b111111) ? 0 : 1;
        ALUSrcA = (OpCode == 6'b011000 && statusOut == 3'b110) ? 1 : 0; // sll 1;
        ALUSrcB = ((OpCode == 6'b000010 || OpCode == 6'b010001 ||
                    OpCode == 6'b010010 || OpCode == 6'b010011 || 
                    OpCode == 6'b100110) && (statusOut == 3'b110)) || 
                   ((OpCode == 6'b110000 || OpCode == 6'b110001) && 
                    (statusOut == 3'b010)) ? 1 : 0;
                   // addiu、andi、ori、xori、slti、lw、sw
        DBDataSrc = (OpCode == 6'b110001) && (statusOut == 3'b011 || statusOut == 3'b100) ? 1 : 0; // lw 1
        RegWre = (OpCode == 6'b111010 && statusOut == 3'b001) ||
                 (statusOut == 3'b111 || statusOut == 3'b100) ? 1 : 0;
        WrRegDSrc = (OpCode == 6'b111010 && statusOut == 3'b001) ? 0 : 1; // jal
        mRD = (OpCode == 6'b110001) ? 1 : 0; // lw 1
        mWR = (OpCode == 6'b110000) ? 1 : 0; // sw 1
        IRWre = (statusOut == 3'b000) ? 1 : 0;
        
        // ExtSel
        ExtSel = (statusOut == 3'b101 || statusOut == 3'b010) ||
                 (statusOut == 3'b110 && (OpCode == 6'b000010 || OpCode == 6'b100110)) ? 1 : 0;
        // ((addiu || slti) && 110) || 101 || 010 
        
        //PCSrc
        PCSrc = (statusOut == 3'b101) ? 2'b01 : 
                ((statusOut == 3'b001) ? (OpCode == 6'b111001 ? 2'b10 : 2'b11) : 2'b00);
        // 101 -> 01
        // (j || jal) && 001 -> 11
        // jr && 001 -> 10
        
        // RegDst
        RegDst = statusOut == 3'b111 ? 
                 ((OpCode == 6'b010000 || OpCode == 6'b011000 || OpCode == 6'b100110) ? 2'b10 : 2'b01 ): 
                 (statusOut == 3'b100 ? 2'b01 : (statusOut == 3'b111 ? 2'b10 : 2'b00));
        
        // ALUOP
        if (statusOut == 3'b010 || 
           (statusOut == 3'b110 && (OpCode == 6'b000000 || OpCode == 6'b000010)))
            ALUOp = 3'b000; // 010 || (110 && (addiu || add)) -> 000
        else if (statusOut == 3'b101 || (statusOut == 3'b110 && OpCode == 6'b000001))
            ALUOp = 3'b001; // 101 || (sub && 110) -> 001
        else if (statusOut == 3'b110 && OpCode == 6'b011000)
            ALUOp = 3'b010; // sll && 110 -> 010
        else if (OpCode == 6'b010010 && statusOut == 3'b110)
            ALUOp = 3'b011; // ori && 110 -> 011
        else if (statusOut -- 3'b110 && (OpCode == 6'b010000 || OpCode == 6'b010001))
            ALUOp = 3'b100; // (and || andi) && 110 -> 100
        else if (statusOut == 3'b110 && (OpCode == 6'b100111 || OpCode == 6'b100110))
            ALUOp = 3'b110; // (slt || slti) && 110 -> 110
        else ALUOp = 3'b111;
            
        // 111 -> 10
        // 100 -> 01
        // 111 -> sll || slt || and -> 10
        //        otherwise -> 01
        //TODO
    end
    
endmodule
