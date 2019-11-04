`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/11 20:26:16
// Design Name: 
// Module Name: Storage_sim
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

//注意，仿真不知道为什么只能模拟1000ns的时间长度

module Storage_sim();
    reg Clk;
    reg [1:0] daDdr;
    reg [7:0] dataIn;
    reg rd;
    reg wr;
    
//    reg [8:0] data [0:31];
    
    wire [7:0] dataOut;
    
    Storage uut (
        .Clk(Clk),
        .daDdr(daDdr),
        .dataIn(dataIn),
        .rd(rd),
        .wr(wr),
//        .data(data),
        .dataOut(dataOut)
    );
    
    initial begin
        Clk = 0;
        daDdr = 5'b00000;
        dataIn = 15;
        rd = 1;
        wr = 1;
        
        #50;
        Clk = ~Clk;
        #50;
        Clk = ~Clk;
        
        #50;
        daDdr = 1;
        dataIn = 8'b01101100;
        rd = 0;
//        wr = 1;
        #50;
        Clk = ~Clk;
        #50;
        Clk = ~Clk;
        
        #50;
        wr = 0;
        rd = 1;
        
        #50;        
        Clk = ~Clk;
        #50;
        Clk = ~Clk;
        wr = 1;
        rd = 0;
                
        #50;
        Clk = ~Clk;
        daDdr = 2;

        #50;
        Clk = ~Clk;        
        
        #50;
        daDdr = 5'b00101;
        dataIn = 8'b10000001;
        
        #50;
        Clk = ~Clk;
        #100;
        Clk = ~Clk;
        
        #50;
        wr = 0;
        #50;
        Clk = ~Clk;
        #50;
        Clk = ~Clk;
        
        #50;
        Clk = ~Clk;
        #50;
        
        $stop;        
    end
endmodule
