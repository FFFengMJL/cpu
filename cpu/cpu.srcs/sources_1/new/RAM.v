`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/11 20:09:33
// Design Name: 
// Module Name: Storage
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


module RAM(
        input Clk,

        input [31:0]daDdr, // data address
        input [31:0]dataIn, // data
        input rd, // control write, when rd = 0, read 
        input wr, // control write, when wr = 0, write
        
        output [31:0] dataOut
    );
    
    reg [7:0] data [0:255];
    
    // assign是新加的
    assign dataOut[7:0] = rd == 0 ? data[daDdr + 3] : 8'bz;
    assign dataOut[15:8] = rd == 0 ? data[daDdr + 2] : 8'bz;
    assign dataOut[23:16] = rd == 0 ? data[daDdr + 1] : 8'bz;
    assign dataOut[31:24] = rd == 0 ? data[daDdr] : 8'bz;
    
    always @(negedge Clk) begin
        if (wr == 0) begin
            data[daDdr] <= dataIn[31:24];
            data[daDdr + 1] <= dataIn[23:16];
            data[daDdr + 2] <= dataIn[15:8];
            data[daDdr + 3] <= dataIn[7:0];
        end
//        if(wr == 0) data[daDdr] = dataIn;
//        if(rd == 0) dataOut = data[daDdr];
    end
    
endmodule
