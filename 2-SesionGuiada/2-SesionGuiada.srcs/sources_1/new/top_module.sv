`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2020 18:14:32
// Design Name: 
// Module Name: top_module
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


module top_module(
    input logic clk, reset,
    output logic fib,
    output logic [6:0] sevenSeg
    //output logic onOff
    );
    
    logic [3:0] count;
    
    counter_4bits FF( 
        .clk(clk),
        .reset(reset),
        .count(count)
    );
    
    BCD_to_sevenSeg BCD (
        .BCD_in(count),
        .sevenSeg(sevenSeg)
    );
    
    fib_rec FIB (
        .BCD_in(count),
        .fib(fib)
    );
endmodule
