`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2020 17:07:21
// Design Name: 
// Module Name: counter_4bits
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


module counter_4bits(
    
    input logic  clk, reset,
    output logic [3:0] count
    );
    
    parameter N = 4;
    
    always_ff @(posedge clk) begin
        if (reset)
            count <= 4'b0;
        else
            count <= count+1;
    end                
endmodule
