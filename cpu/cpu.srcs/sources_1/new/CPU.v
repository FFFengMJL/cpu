`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 11:34:37
// Design Name: 
// Module Name: CPU
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


module CPU(
    input CLK,
    input Reset
    );
    wire zero, sign, PCWre, Extend, InsMemRW, RegDst, RegWre, ALUSrcA,ALUSrcB, ExtSel, mRD, mWR, DBDataSrc;
    wire [1:0] PCSrc;
    wire [2:0] ALUOp;
    wire [4:0] WriteReg, ReadReg1, ReadReg2, ReadData1, ReadData2;
    wire [25:0] jumpIn, jumpOut;
    wire [31:0] PCIn, PCOut, iDataOut, DB, ALUOut, DataOut, PC4, iDataIn, ALUDataA, ALUDataB, nextPCIn, nextPCOut;
    
    PC pc(
        .CLK(CLK),
        .Reset(Reset),
        .PCWre(PCWre),
        .PCIn(PCIn),
        .PCOut(PCOut)
    );
    
    IRAM InsRegister(
        .Iaddr(PCOut),
        .iDataOut(iDataOut),
        .rw(InsMemRW),
        .iDataIn(iDataIn)
    );
    Adder pc4_adder(
        .In1(4),
        .Ins2(PCOut),
        
        .Out(PC4)
    );
    Mux_2 reg_w_choose(
        .flag(RegDst),
        .In1(PCOut[20:16]),
        .In2(PCOut[15:11]),
        
        .Out(WriteReg)
    );
    Register regfile(
        .ReadReg1(PCOut[25:21]),
        .ReadReg2(PCOut[20:16]),
        .WriteData(WriteReg),
        .WriteData(DB),
        
        .ReadData1(ReadData1),
        .ReadData2(ReadData2)
    );
    Extend extend(
        .In(PCOut[15:0]),
        .ExtSel(ExtSel),
        
        .Out(Extend)
    );
    Mux_2 alua_choose(
        .In1(ReadData1),
        .In2(PCOut[11:6]),
        
        .Out(ALUDataA)
    );
    Mux_2 alub_choose(
        .In1(ReadData2),
        .In2(Extend),
        
        .Out(ALUDataB)
    );
    ALU alu(
        .rega(ALUDataA),
        .regb(ALUDataB),
        .ALUOp(ALUOp),
        
        .result(ALUOut),
        .sign(sign),
        .zero(zero)
    );
    RAM datamem(
        .daDdr(ALUOut),
        .dataIn(ReadData2),
        
        .dataOut(DataOut)
    );
    Mux_2 db_choose(
        .flag(DBDataSrc),
        .In1(ALUOut),
        .In2(DataOut),
        
        .Out(DB)
    );
    LeftShift_2 after_imm_extend(
        .In(Extend),
        
        .Out(nextPCIn)        
    );
//    LeftShift_2 addr_shift(
//        .In(PCOut[25:0]),
        
//        .Out(jumpIn)
//    );
    Adder nextpc(
        .In1(PC4),
        .In2(nextPCIn),
        
        .Out(nextPCOut)
    );
    Mux_4 nextpc_choose(
        .In1(PC4),
        .In2(nextPCOut),
        .In3(jumpOut),
        .flag(PCSrc),
        
        .Out(PCIn)
    );
    CLU control_unit(
        .OpCode(iDataOut[31:26]),
        .zero(zero),
        .sign(sign),
        
        .PCWre(PCWre),
        .ExtSel(ExtSel),
        .RegWre(RegWre),
        .RegDst(RegDst),
        .ALUSrcA(ALUSrcA),
        .ALUSrcB(ALUSrcB),
        .ALUOp(ALUOp),
        .PCSrc(PCSrc),
        .mRD(mRD),
        .mWR(mWR),
        .DBDataSrc(DBDataSrc),
        .InsMemRW(InsMemRW)
    );
    
    Jump jump(
        .In1(PC4),
        .In2(iDataOut[25:0]),
        
        .Out(jumpOut)
    );
endmodule
