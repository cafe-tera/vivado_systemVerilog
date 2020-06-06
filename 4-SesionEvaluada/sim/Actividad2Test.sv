`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2020 10:52:23 PM
// Design Name: 
// Module Name: Actividad2Test
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


module Actividad2Test();
    logic clock_100M , reset, 
    clock_out_50M, clock_out_30M, clock_out_10M, clock_out_1M;

    S4_Actividad2 DUT(.clock_100M(clock_100M), .reset(reset), .clock_out_50M(clock_out_50M), 
    .clock_out_30M(clock_out_30M),.clock_out_10M(clock_out_10M),.clock_out_1M(clock_out_1M));
    
    always #5 clock_100M= ~clock_100M; //generacion de se al clock
    
    initial begin
        
        clock_100M = 0;
        reset  = 1;
        #10 reset = 0;
        
    end    

endmodule
