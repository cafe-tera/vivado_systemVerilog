`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2020 17:14:29
// Design Name: 
// Module Name: count_asinc
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


module count_asinc #(parameter N=4)(
    input logic clk, reset,
    output logic [N-1:0] count);
    always_ff@(posedge clk || reset) begin
    if(reset)
    count <={N{1'b0}} ;
    else
    count <= count+1 ;
    end

    
endmodule
