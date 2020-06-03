`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2020 14:32:46
// Design Name: 
// Module Name: mux
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


module mux(
    input logic [1:0] selec,
    output logic [1:0]salida
    );
    always_comb begin
    case(selec)
    2'd0 : salida = 2'd0;
    2'd1 : salida = 2'd3;
    2'd2 : salida = 2'd2;
    2'd3 : salida = 2'd1;
    
    endcase
    end
endmodule
