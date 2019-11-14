`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/12 23:00:28
// Design Name: 
// Module Name: basys3
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


module basys3(
        input CLKButton,
        input BasysCLK,
        input RST,
        input [1:0] SW_in,
        
        output [7:0] segOut,
        output [3:0] bits
    );
    
    wire [31:0] PCNowOut, PC4Out, RsData, RtData, ALUout;
    wire [31:0] DBOut;
    wire [4:0] RsAddr, RtAddr;
    wire [3:0] segIn;
    wire [15:0] muxOut;
    wire CLK_r;
    (*MARK_DEBUG="TRUE"*) wire CPUCLK;
    
    keyboard_clk keyboard_clk(
        .Button(CLKButton),
        .BasysCLK(BasysCLK),
        .CPUCLK(CPUCLK)
    );    
    
    timeDiv time_div(
        .clk(BasysCLK),
        .clk_sys(CLK_r)
    );
    
    CPU cpu (
        .CLK(CPUCLK),
        .Reset(RST),
        
        .PCNowOut(PCNowOut),
        .PC4Out(PC4Out),
        .RsData(RsData),
        .RtData(RtData),
        .RsAddr(RsAddr),
        .RtAddr(RtAddr),
        .ALUout(ALUout),
        .DBOut(DBOut)
    );
    
    SegLED LED(
        .display_data(segIn),
        .dispcode(segOut)
    );
    
    MUX_4_r mux(
        .In1({PCNowOut[7:0], PC4Out[7:0]}),
        .In2({3'b000, RsAddr[4:0], RsData[7:0]}),
        .In3({3'b000, RtAddr[4:0], RtData[7:0]}),
        .In4({ALUout[7:0], DBOut[7:0]}),
        
        .mode(SW_in),
        
        .DataOut(muxOut)
    );
    
    mux4_r2 timeMux (
        .In(muxOut),
        .CLK(CLK_r),
//        .CLK(BasysCLK),
        
        .Out(segIn),
        .bit(bits)
//        .bit()
    );
    
endmodule
