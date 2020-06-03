`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2020 17:11:19
// Design Name: 
// Module Name: test_counter_4bits
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


module test_counter_4bits();
    logic clk , reset;
    logic [3:0] count;
    
    counter_4bits DUT(.clk(clk), .reset(reset), .count(count));
    
    always #5 clk = ~clk; //generacion de se al clock
    
    initial begin
        clk = 0;
        reset  = 1;
        #10 reset = 0;
        #54 reset = 1;
        #5 reset = 0;
        
    end    
endmodule
