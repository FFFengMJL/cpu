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
    output [31:0] PCNextOut,
    output [4:0] RsAddr,
    output [31:0] RsData,
    output [4:0] RtAddr,
    output [31:0] RtData,
    output [31:0] ALUout,
    output [31:0] DBOut
    );
    wire zero, sign, PCWre, InsMemRW;
    wire RegWre, IRWre;
    wire ALUSrcA, ALUSrcB, ExtSel, mRD, mWR, DBDataSrc;
    wire [1:0] PCSrc, RegDst;
    wire [2:0] ALUOp;
    wire [25:0] jumpIn;
    (* dont_touch = "true" *) wire [31:0] PCIn, PCOut, Extend;
    wire [31:0] iDataOut, DB, ALUOut, DataOut, PC4, iDataIn, nextPCIn, nextPCOut;
    wire [31:0]  ReadData1, ReadData2, ALUDataA, ALUDataB, jumpOut;
    wire [31:0] AIRIn, AIROut, BDRIn, BDROut, DBDRIn, DBDROut, ALUDRIn, ALUDROut, WriteData;
    wire [4:0] WriteReg;
    
    assign PCNowOut = PCOut;
    assign PCNextOut = PCIn;
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
        .PCIn(PCIn),
        .PCOut(PCOut)
    );
    
    IRAM InsRegister(
        .Iaddr(PCOut),
        .iDataOut(IRIn),
        .rw(InsMemRW),
        .iDataIn(32'bz)
    );
    Adder pc4_adder(
        .Ins1({{29{1'b0}},3'b100}),
        .Ins2(PCOut),
        
        .Out(PC4)
    );
    
    Mux_3 mux3(
        .RegDst(RegDst),
        .In1(5'b11111),
        .In2(iDataOut[20:16]),
        .In3(iDataOut[15:11]),
        
        .Out(WriteReg)
    );
    
//    MUX_4_r reg_w_choose(
//        .mode(RegDst),
//        .In1(8'h0000001f),
//        .In2({{27{1'b0}}, iDataOut[20:16]}),
//        .In3({{27{1'b0}}, iDataOut[15:11]}),
//        .In4(8'h00000000),
//        .DataOut(WriteReg)
//    );
    Register regfile(
        .CLK(CLK),
        .Reset(Reset),
        .RegWre(RegWre),
        .ReadReg1(iDataOut[25:21]),
        .ReadReg2(iDataOut[20:16]),
        .WriteReg(WriteReg),
        .WriteData(WriteData),
        
        .ReadData1(ReadData1),
        .ReadData2(ReadData2)
    );
    Extend extend(
        .In(iDataOut[15:0]),
        .ExtSel(ExtSel),
        
        .Out(Extend)
    );
    Mux_2 alua_choose(
        .In1(ADROut),
        .In2({{27{1'b0}},iDataOut[10:6]}),
        .flag(ALUSrcA),
        
        .Out(ALUDataA)
    );
    Mux_2 alub_choose(
        .In1(BDROut),
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
        .daDdr(ALUDROut),
        .dataIn(BDROut),
        .rd(mRD),
        .wr(mWR),
        
        .dataOut(DataOut)
    );
    Mux_2 db_choose(
        .flag(DBDataSrc),
        .In1(ALUOut),
        .In2(DataOut),
        
        .Out(DBDRIn)
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
        .Ins2(Extend << 2),
        
        .Out(nextPCOut)
    );
    Mux_4 nextpc_choose(
//        .PCWre(PCSrc),
        .PC(PCOut),
        .Ins1(PC4),
        .Ins2(nextPCOut),
        .Ins3(ReadData1),
        .Ins4(jumpOut),
        .PCSrc(PCSrc),
        
        .Out(PCIn)
    );
    CLU control_unit(
        .OpCode(iDataOut[31:26]),
        .zero(zero),
        .sign(sign),
        .CLK(CLK),
        
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
        .InsMemRW(InsMemRW),
        .WrRegDSrc(WrRegDSrc),
        .IRWre(IRWre)
    );
    
    Jump jump(
        .In1(PC4[31:28]),
        .In2(iDataOut[25:0]),
        
        .Out(jumpOut)
    );
    
    IR InsReg(
        .IRIn(IRIn),
        .IROut(iDataOut),
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
    
    DR DBDR(
        .DRIn(DBDRIn),
        .DROut(DBDROut),
        .CLK(CLK)
    );
    
    Mux_2 WrReg(
        .In1(PC4),
        .In2(DBDROut),
        .flag(WrRegDSrc),
        
        .Out(WriteData)
    );
    
endmodule
