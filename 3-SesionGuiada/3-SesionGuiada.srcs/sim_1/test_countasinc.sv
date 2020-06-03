`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2020 17:19:37
// Design Name: 
// Module Name: test_countasinc
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


module test_countasinc  #(parameter N = 3)();
    logic clk , reset, enable, load, dec;
    logic [N-1:0] load_value;
    logic [N-1:0] count;
    
    enable_cont #(N) DUT(.clk(clk), .reset(reset), .enable(enable), 
    .load(load), .dec(dec), .load_value(load_value), .count(count));
    
    always #5 clk = ~clk; //generacion de se al clock
    
    initial begin
        clk = 0;
        reset  = 1;
        enable = 0;
        load = 0;
        dec = 0;
        #10 reset = 0;
        #18 enable = 1;
        #14 enable = 0;
        #18 enable = 1;
        #14 enable = 0;
        #18 enable = 1;
        #14 enable = 0;
        load_value = count;
        #12 reset = 1;
        #20 reset = 0;
        #18 load = 1;
        #14 load = 0;
        #1 enable = 1;
        #3 dec = 1;
        #14 dec = 0;
        #20 enable =0;
        #12 reset = 1;
        #20 reset = 0;
    end    
endmodule
