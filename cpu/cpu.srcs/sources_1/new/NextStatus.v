`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/19 13:29:41
// Design Name: 
// Module Name: NextStatus
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


module NextStatus(
        input [2:0] thisStatus,
        input [5:0] OpCode,
        output reg [2:0] nextStatus
    );
    
    always@(*) begin
        case (OpCode)
            3'b000: nextStatus = 3'b001;
//            3'b111: nextStatus = 3'b000;
            3'b001:
                begin
                    if (OpCode == 6'b111111 || OpCode == 6'b111010 || 
                        OpCode == 6'b111001 || OpCode == 6'b111000)
                        nextStatus = 3'b000;
                    else if (OpCode == 6'b110100 || OpCode == 6'b110101 || 
                             OpCode == 6'b110110) nextStatus = 3'b101;
                    else if (OpCode == 6'b110000 || OpCode == 6'b110001)
                        nextStatus = 3'b010;
                end
            3'b010: nextStatus = 3'b011;
            3'b011:
                begin
                    if (OpCode == 6'b110000) nextStatus = 3'b000;
                    else nextStatus = 3'b100;
                end
            3'b100: nextStatus = 3'b000;
            3'b101: nextStatus = 3'b000;
            3'b110: nextStatus = 3'b111;
            3'b111: nextStatus = 3'b000;
            default: nextStatus = 3'b110;
        endcase
    end
    
endmodule
