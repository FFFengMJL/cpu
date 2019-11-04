`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/11 12:47:40
// Design Name: 
// Module Name: alu32
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


module ALU(
    input [2:0] ALUOpCode,
    input [31:0] rega,// A
    input [31:0] regb,// B
    
    output reg [31:0] result,
    output zero,
    output sign
    );
    
    assign zero = result == 0 ? 1 : 0;
    assign sign = result[31] == 0 ? 0 : 1;

    always @(ALUOpCode or rega or regb) begin
        case (ALUOpCode)
            3'b000: result = rega + regb; // A + B
            3'b001: result = rega - regb; // A - B
            3'b010: result = regb << rega; // B << A
            3'b011: result = rega | regb; // A || B
            3'b100: result = rega & regb; // A && B
            3'b101: result = rega < regb ? 1 : 0; // compare without sign
            3'b110: begin
                        if(rega[31] == regb[31] && rega < regb) result = 1;
                        else if(rega[31] == 1 && regb[31] == 0) result = 0;
                        else if(rega[31] == 0 && regb[31] == 1) result = 1;
                        else result = 0;
                     end
            3'b111: result = rega ^ regb;
            default: begin
                        result = 8'h00000000;
                        $display("no match");
                     end
        endcase
    end
endmodule
