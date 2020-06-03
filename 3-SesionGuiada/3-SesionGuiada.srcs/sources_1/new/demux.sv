`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2020 16:01:18
// Design Name: 
// Module Name: demux
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


module demux(
    input logic [1:0]entrada,
    output logic [3:0]salida
    );
    always_comb begin
    case(entrada)
    2'd0 : salida = 4'b1000;
    2'd1 : salida = 4'b0100;
    2'd2 : salida = 4'b0010;
    2'd3 : salida = 4'b0001;
    endcase
    end
endmodule
