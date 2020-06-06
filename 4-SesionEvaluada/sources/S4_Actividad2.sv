`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2020 01:09:37 AM
// Design Name: 
// Module Name: S4_Actividad2
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


module S4_Actividad2(
    input logic clock_100M, reset,
    output logic clock_out_50M, clock_out_30M, clock_out_10M, clock_out_1M
    );
    trans_reloj  #(100_000_000,1_000_000) reloj1(.clk_in(clock_100M),.reset(reset),.clk_out(clock_out_1M));
    trans_reloj  #(100_000_000,10_000_000) reloj10(.clk_in(clock_100M),.reset(reset),.clk_out(clock_out_10M));
    trans_reloj  #(100_000_000,30_000_000) reloj30(.clk_in(clock_100M),.reset(reset),.clk_out(clock_out_30M));
    trans_reloj  #(100_000_000,50_000_000) reloj50(.clk_in(clock_100M),.reset(reset),.clk_out(clock_out_50M));

endmodule
