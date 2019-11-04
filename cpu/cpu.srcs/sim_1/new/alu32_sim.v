`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/11 16:23:51
// Design Name: 
// Module Name: alu32_sim
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


module alu32_sim();
    //input
    reg [2:0] aluOpCode;
    reg [31:0] rega;
    reg [31:0] regb;
    
    //output
    wire [31:0] result;
    wire zero;
    
    alu32 uut(
        .aluOpCode(aluOpCode),
        .rega(rega),
        .regb(regb),
        .result(result),
        .zero(zero)
    );
    
    initial begin
        // Initialize Inputs 
        aluOpCode = 0;
        rega = 0;
        regb = 0;
        // Wait 100 ns for global reset to finish 
        #100; 
        aluOpCode = 0; // rega + regb 
        rega = 1; 
        regb = 1;
        
        #100; 
        aluOpCode = 1; // rega - regb
        rega = 2; 
        regb = 1;
        
        #100;
        aluOpCode = 1; // rega - regb 
        rega = 1; 
        regb = 2;

        #100; 
        aluOpCode = 2; // rega & regb 
        rega = 5; 
        regb = 1;

        #100; 
        aluOpCode = 3; // rega | regb 
        rega = 4; 
        regb = 1;
        
        #100; 
        aluOpCode = 4; // rega < regb? 不带符号比较 
        rega = 4; 
        regb = 5;

        #100; 
        aluOpCode = 4; // rega < regb? 不带符号比较 
        rega = 5; 
        regb = 4;

        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = 5; 
        regb = 4;

        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = 4; 
        regb = 5;

        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = -1; 
        regb = -2;

        #100; aluOpCode = 5; // rega < regb? 带符号比较 
        rega = -2; 
        regb = -1; 
        
        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = -1; 
        regb = 0; 
        
        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = 0; 
        regb = -2; 
        
        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较
        rega = -1; 
        regb = -1; 
        
        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = 0; 
        regb = 2; 
        
        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = 1; 
        regb = 0; 
        
        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = 2; 
        regb = 2; 
        
        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = 0; 
        regb = 0; 
        
        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = -1; 
        regb = 3; 
        
        #100; 
        aluOpCode = 5; // rega < regb? 带符号比较 
        rega = 9; 
        regb = -5;
        
        #100; 
        $stop;
        // Add stimulus here
    end
endmodule
