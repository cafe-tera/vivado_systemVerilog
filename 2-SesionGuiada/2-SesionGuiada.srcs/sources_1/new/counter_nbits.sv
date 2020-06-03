`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2020 17:46:26
// Design Name: 
// Module Name: counter_n_bits
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


module counter_n_bits #(parameter N = 2)(
    input logic  clk, reset,
    output logic [N-1:0] count
    );
    
    always_ff @(posedge clk) begin
        if (reset)
            count <= {N{1'b0}};
        else
            count <= count+1;
    end     
endmodule
