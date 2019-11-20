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
        
        output reg PCWre,// 0PC不更改（halt），1PC接受新地址
        output reg ALUSrcA,
        output reg ALUSrcB,
        output reg DBDataSrc,
        output reg RegWre,//1寄存器写使能
        output reg InsMemRW,//0写IRAM，1读IRAM
        output mRD,
        output mWR,
        output reg RegDst,//写REG的rt，写REG的rd
        output reg ExtSel,// 0拓展，1符号拓展
        output reg [1:0] PCSrc,
        output reg [2:0] ALUOp
    );
    
    assign mWR = (OpCode == 38) ? 1 : 0;
    assign mRD = (OpCode == 39) ? 1 : 0;
    
    initial begin
//        PCIn = 8'h00000000;
        PCWre = 0;
        DBDataSrc = 0;
        InsMemRW = 1;
    end    
    
    always @(*) begin
        case (OpCode)
            6'b000000: begin // add
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 0;
                DBDataSrc = 0;
                RegWre = 1;
                InsMemRW = 1;
                RegDst = 1;
                PCSrc = 2'b00;
                ALUOp = 3'b000;
            end
            6'b000001: begin // sub
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 0;
                DBDataSrc = 0;
                RegWre = 1;
                InsMemRW = 1;
                RegDst = 1;
                PCSrc = 2'b00;
                ALUOp = 3'b001;
            end
            6'b000010: begin // addiu
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 1;
                DBDataSrc = 0;
                RegWre = 1;
                InsMemRW = 1;
                RegDst = 0;
                ExtSel = 1;
                PCSrc = 2'b00;
                ALUOp = 3'b000;
            end
            6'b010000: begin // andi
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 1;
                DBDataSrc = 0;
                RegWre = 1;
                InsMemRW = 1;
                RegDst = 0;
                ExtSel = 0;
                PCSrc = 2'b00;            
                ALUOp = 3'b100;
            end
            6'b010001: begin // and
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 0;
                DBDataSrc = 0;
                RegWre = 1;
                InsMemRW = 1;
                RegDst = 1;
                PCSrc = 2'b00;            
                ALUOp = 3'b100;
            end
            6'b010010: begin // ori
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 1;
                DBDataSrc = 0;
                RegWre = 1;
                InsMemRW = 1;
                RegDst = 0;
                ExtSel = 0;
                PCSrc = 2'b00;            
                ALUOp = 3'b011;
            end
            6'b010011: begin // or
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 0;
                DBDataSrc = 0;
                RegWre = 1;
                InsMemRW = 1;
                RegDst = 1;
                PCSrc = 2'b00;            
                ALUOp = 3'b011;
            end
            6'b011000: begin // sll 移位指令
                PCWre = 1;
                ALUSrcA = 1;
                DBDataSrc = 0;
                RegWre = 1;
                InsMemRW = 1;
                RegDst = 1;
                PCSrc = 2'b00;            
                ALUOp = 3'b010;
            end
            6'b011100: begin // slti
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 1;
                DBDataSrc = 0;
                RegWre = 1;
                InsMemRW = 1;
                RegDst = 0;
                ExtSel = 1;
                PCSrc = 2'b00;            
                ALUOp = 3'b101;
            end
            6'b100110: begin // sw
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 1;
                RegWre = 0;
                InsMemRW = 1;
//                mWR = 1;
                ExtSel = 1;
                PCSrc = 2'b00;
                ALUOp = 3'b000;
            end 
            6'b100111: begin // lw
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 1;
                DBDataSrc = 1;
                RegWre = 1;
                InsMemRW = 1;
//                mRD = 1;
                RegDst = 0;
                ExtSel = 1;
                PCSrc = 2'b00;     
                ALUOp = 3'b000;       
            end
            6'b110000: begin // beq
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 0;
                RegWre = 0;
                InsMemRW = 1;
                ExtSel = 1;
                ALUOp = 3'b001;
                PCSrc = zero == 0 ? 2'b00 : 2'b01;            
            end
            6'b110001: begin // bne
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 0;
                RegWre = 0;
                InsMemRW = 1;
                ExtSel = 1;
                ALUOp = 3'b001;
                PCSrc = zero == 0 ? 2'b01 : 2'b00;            
            end
            6'b110010: begin // bltz
                PCWre = 1;
                ALUSrcA = 0;
                ALUSrcB = 0;
                RegWre = 0;
                InsMemRW = 1;
                ExtSel = 1;
                ALUOp = 3'b001;
                PCSrc = sign == 0 ? 2'b00 : 2'b01;            
            end
            6'b111000: begin // j
                PCWre = 1;
                InsMemRW = 1;
                PCSrc = 2'b10;            
            end
            6'b111111: begin // halt
                PCWre = 0;
                RegWre = 0;
                InsMemRW = 1;
            end
        endcase
    end
    
endmodule
