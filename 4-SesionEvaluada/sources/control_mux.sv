`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 16:23:11
// Design Name: 
// Module Name: control_mux
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


module control_mux    
    #(parameter N=4)
    (input logic   clk, reset,
    output logic [N-1:0]count);
    always_ff @(posedge clk) begin
        if(reset=='d1)
            count <= 'd0;
        else if(count<='d7)
            count <= count + 'd1;
        else
            count<='d0;    
    end            
  endmodule
