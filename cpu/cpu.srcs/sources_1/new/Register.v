`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/04 11:20:43
// Design Name: 
// Module Name: Register
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


module Register(
        input CLK,
        input Reset,
        input RegWre,
        input [4:0] ReadReg1,
        input [4:0] ReadReg2,
        input [4:0] WriteReg,
        input [31:0] WriteData,
        output [31:0] ReadData1,
        output [31:0] ReadData2
    );
    
    reg [31:0] regFile [1:31];
    integer i;
    
    initial begin
        for (i = 1; i < 32; i= i + 1) regFile[i] = {32{1'b0}};
    end

    
    assign ReadData1 = ReadReg1 == 0 ? 0 : regFile[ReadReg1];
    assign ReadData2 = ReadReg2 == 0 ? 0 : regFile[ReadReg2];
    
    always @ (negedge CLK) begin
        if (Reset == 0) begin
            for (i = 1; i < 32; i = i + 1) regFile[i] <= 0;
        end
        if (RegWre == 1 && WriteReg != 0) regFile[WriteReg] <= WriteData;
    end
    
endmodule
