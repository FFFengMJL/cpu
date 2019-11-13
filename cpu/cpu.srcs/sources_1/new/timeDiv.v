`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 21:48:00
// Design Name: 
// Module Name: timeDiv
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


module timeDiv( 
    input clk, //100MHz��ϵͳĬ����Ƶ�� 
    output reg clk_sys = 0 //1Hz����Ƶ���Ƶ�ʡ������ʼ��Ϊ 0 
);
    reg [25:0] div_counter = 0; 
    always @(posedge clk) begin 
        if(div_counter>=0) begin // ���� ���� // 
//            if(div_counter>=500000000) begin // �������� �������ļ� ������ 
                clk_sys <= ~clk_sys; // ��ƽ���� 
                div_counter <= 0; 
            end 
            else begin 
                div_counter <= div_counter + 1; 
            end
//         end 
    end 
endmodule
