`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2020 18:16:04
// Design Name: 
// Module Name: test_top
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


module test_top();
    logic clk, reset, fib;
    logic [6:0] sevenSeg;
    //logic onOff;
    
    top_module TOP(
        .clk(clk),
        .reset(reset),
        .fib(fib),
        .sevenSeg(sevenSeg)
        //.onOff(onOff)  
    );
    
    always #5 clk = ~clk; // clock
    
    initial begin
        clk = 0;
        reset  = 1;
        #10 reset = 0;
    end
endmodule
