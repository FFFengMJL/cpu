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
    input Reset,
    
    output [31:0] PCNowOut,
    output [31:0] PC4Out,
    output [4:0] RsAddr,
    output [31:0] RsData,
    output [4:0] RtAddr,
    output [31:0] RtData,
    output [31:0] ALUout,
    output [31:0] DBOut
    );
    wire zero, sign, PCWre, InsMemRW, RegDst;
    wire RegWre, IRWre;
    wire ALUSrcA, ALUSrcB, ExtSel, mRD, mWR, DBDataSrc;
    wire [1:0] PCSrc;
    wire [2:0] ALUOp;
    wire [25:0] jumpIn;
    (* dont_touch = "true" *) wire [31:0] PCIn, PCOut, Extend;
    wire [31:0] iDataOut, DB, ALUOut, DataOut, PC4, iDataIn, nextPCIn, nextPCOut;
    wire [31:0] WriteReg, ReadData1, ReadData2, ALUDataA, ALUDataB, jumpOut;
    wire [31:0] IRIn, IROut, DRIn1, DROut1, DRIn2, DROut2, DRIn3, DROut3;
    
    assign PCNowOut = PCOut;
    assign PC4Out = PC4;
    assign RsAddr = iDataOut[25:21];
    assign RsData = ReadData1;
    assign RtAddr = iDataOut[20:16];
    assign RtData = ReadData2;
    assign ALUout = ALUOut; 
    assign DBOut = DataOut;
    
    PC pc(
        .CLK(CLK),
        .Reset(Reset),
        .PCWre(PCWre),
        .Ins(PCIn),
        .IAddr(PCOut)
    );
    
    IRAM InsRegister(
        .Iaddr(PCOut),
        .iDataOut(iDataOut),
        .rw(InsMemRW),
        .iDataIn(32'bz)
    );
    Adder pc4_adder(
        .Ins1({{29{1'b0}},3'b100}),
        .Ins2(PCOut),
        
        .Out(PC4)
    );
    Mux_2 reg_w_choose(
        .flag(RegDst),
        .In1({{27{1'b0}}, iDataOut[20:16]}),
        .In2({{27{1'b0}}, iDataOut[15:11]}),
        
        .Out(WriteReg)
    );
    Register regfile(
        .CLK(CLK),
        .Reset(Reset),
        .RegWre(RegWre),
        .ReadReg1(iDataOut[25:21]),
        .ReadReg2(iDataOut[20:16]),
        .WriteReg(WriteReg[4:0]),
        .WriteData(DB),
        
        .ReadData1(ReadData1),
        .ReadData2(ReadData2)
    );
    Extend extend(
        .In(iDataOut[15:0]),
        .ExtSel(ExtSel),
        
        .Out(Extend)
    );
    Mux_2 alua_choose(
        .In1(ReadData1),
        .In2({{27{1'b0}},iDataOut[10:6]}),
        .flag(ALUSrcA),
        
        .Out(ALUDataA)
    );
    Mux_2 alub_choose(
        .In1(ReadData2),
        .In2(Extend),
        .flag(ALUSrcB),
        
        .Out(ALUDataB)
    );
    ALU alu(
        .rega(ALUDataA),
        .regb(ALUDataB),
        .ALUOpCode(ALUOp),
        
        .result(ALUOut),
        .sign(sign),
        .zero(zero)
    );
    RAM datamem(
        .Clk(CLK),
        .daDdr(ALUOut),
        .dataIn(ReadData2),
        .rd(mRD),
        .wr(mWR),
        
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
//        .In(PCOut),
        
//        .Out(jumpIn)
//    );
    Adder nextpc(
        .Ins1(PC4),
        .Ins2(nextPCIn),
        
        .Out(nextPCOut)
    );
    Mux_4 nextpc_choose(
        .Ins1(PC4),
        .Ins2(nextPCOut),
        .Ins3(jumpOut),
        .PCSrc(PCSrc),
        
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
        .In1(PC4[31:28]),
        .In2(iDataOut[25:0]),
        
        .Out(jumpOut)
    );
    
    IR InsReg(
        .IRIn(IRIn),
        .IROut(IROut),
        .CLK(CLK),
        .IRWre(IRWre)
    );
    
    DR ADR(
        .DRIn(ReadData1),
        .DROut(ADROut),
        .CLK(CLK)
    );
    
    DR BDR(
        .DRIn(ReadData2),
        .DROut(BDROut),
        .CLK(CLK)
    );
    
    DR ALUDR(
        .DRIn(ALUOut),
        .DROut(ALUDROut),
        .CLK(CLK)
    );
    
endmodule
