`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/11/13 22:13:40
// Design Name: 
// Module Name: basys_sim
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


module basys_sim(

    );
    reg CLK, RST;
    reg CLKButton;
    reg [1:0] SW;
    
    basys3 test(
        .BasysCLK(CLK),
        .CLKButton(CLKButton),
        .SW_in(SW),
        .RST(RST),
        
        .bits(),
        .segOut()
    );
    integer i;

    initial begin
        CLK = 0;
        RST = 1;
        CLKButton = 0;
        SW = 2'b00;
        for (i = 0; i < 1500; i = i + 1) begin
            #100;
            CLK = ~CLK;
//            #10;
            if (i % 5 == 0) CLKButton = ~CLKButton;
        end

       
    end
endmodule
