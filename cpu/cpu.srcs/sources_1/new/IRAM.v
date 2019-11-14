`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 10:51:11
// Design Name: 
// Module Name: IRAM
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


module IRAM(
        input [31:0] Iaddr,
        input [31:0] iDataIn,
        input rw, // 0 write, 1 read
        output [31:0] iDataOut
    );
    
    reg [7:0] Ins [0:127];
    // initial $readmemh("Instructuonshehe.mem", Ins);    
    initial begin
        Ins[0] <= 8'h08;
        Ins[1] <= 8'h01;
        Ins[2] <= 8'h00;
        Ins[3] <= 8'h08;
        Ins[4] <= 8'h48;
        Ins[5] <= 8'h02;
        Ins[6] <= 8'h00;
        Ins[7] <= 8'h02;
        Ins[8] <= 8'h00;
        Ins[9] <= 8'h41;
        Ins[10] <= 8'h18;
        Ins[11] <= 8'h00;
        Ins[12] <= 8'h04;
        Ins[13] <= 8'h62;
        Ins[14] <= 8'h28;
        Ins[15] <= 8'h00;
        Ins[16] <= 8'h44;
        Ins[17] <= 8'hc2;
        Ins[18] <= 8'h20;
        Ins[19] <= 8'h00;
        Ins[20] <= 8'h4c;
        Ins[21] <= 8'h82;
        Ins[22] <= 8'h40;
        Ins[23] <= 8'h00;
        Ins[24] <= 8'h60;
        Ins[25] <= 8'h08;
        Ins[26] <= 8'h40;
        Ins[27] <= 8'h40;
        Ins[28] <= 8'hc5;
        Ins[29] <= 8'h01;
        Ins[30] <= 8'hff;
        Ins[31] <= 8'hfe;
        Ins[32] <= 8'h70;
        Ins[33] <= 8'hc2;
        Ins[34] <= 8'h00;
        Ins[35] <= 8'h04;
        Ins[36] <= 8'h70;
        Ins[37] <= 8'he6;
        Ins[38] <= 8'h00;
        Ins[39] <= 8'h00;
        Ins[40] <= 8'h08;
        Ins[41] <= 8'he7;
        Ins[42] <= 8'h00;
        Ins[43] <= 8'h08;
        Ins[44] <= 8'hc0;
        Ins[45] <= 8'he1;
        Ins[46] <= 8'hff;
        Ins[47] <= 8'hfe;
        Ins[48] <= 8'h98;
        Ins[49] <= 8'h22;
        Ins[50] <= 8'h00;
        Ins[51] <= 8'h04;
        Ins[52] <= 8'h9c;
        Ins[53] <= 8'h29;
        Ins[54] <= 8'h00;
        Ins[55] <= 8'h04;
        Ins[56] <= 8'h08;
        Ins[57] <= 8'h0a;
        Ins[58] <= 8'hff;
        Ins[59] <= 8'hfe;
        Ins[60] <= 8'h09;
        Ins[61] <= 8'h4a;
        Ins[62] <= 8'h00;
        Ins[63] <= 8'h01;
        Ins[64] <= 8'hc9;
        Ins[65] <= 8'h40;
        Ins[66] <= 8'hff;
        Ins[67] <= 8'hfe;
        Ins[68] <= 8'h40;
        Ins[69] <= 8'h4b;
        Ins[70] <= 8'h00;
        Ins[71] <= 8'h02;
        Ins[72] <= 8'he0;
        Ins[73] <= 8'h00;
        Ins[74] <= 8'h00;
        Ins[75] <= 8'h14;
        Ins[76] <= 8'h4c;
        Ins[77] <= 8'h82;
        Ins[78] <= 8'h40;
        Ins[79] <= 8'h00;
        Ins[80] <= 8'hfc;
        Ins[81] <= 8'h00;
        Ins[82] <= 8'h00;
        Ins[83] <= 8'h00;
    end

    assign iDataOut[7:0] = rw == 1 ? Ins[Iaddr + 3] : 8'bz;
    assign iDataOut[15:8] = rw == 1 ? Ins[Iaddr + 2] : 8'bz;
    assign iDataOut[23:16] = rw == 1 ? Ins[Iaddr + 1] : 8'bz;
    assign iDataOut[31:24] = rw == 1 ? Ins[Iaddr] : 8'bz;
 
    always @(*) begin
        if (rw == 0) begin
            Ins[Iaddr] <= iDataIn[31:24];
            Ins[Iaddr + 1] <= iDataIn[23:16];
            Ins[Iaddr + 2] <= iDataIn[15:8];
            Ins[Iaddr + 3] <= iDataIn[7:0];
        end
    end
endmodule
