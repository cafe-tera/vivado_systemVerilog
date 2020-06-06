`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 19:00:13
// Design Name: 
// Module Name: Contador
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


module Contador  #(parameter N = 4)();
    logic clk , reset;
    logic [N-1:0] count;
    
    control_mux #(N) DUT(.clk(clk), .reset(reset), .count(count));
    
    always #5 clk = ~clk; //generacion de se al clock
    
    initial begin
        clk = 0;
        reset  = 1;
        #10 reset = 0;
        
        
    end    
endmodule
