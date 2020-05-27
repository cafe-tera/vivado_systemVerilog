`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2020 16:26:22
// Design Name: 
// Module Name: logica_simple
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


module logica_simple(
    input  logic A, B, C,
    output logic X, Y, Z
    );
    
    assign X = A;
    assign Y = ~A;
    assign Z = B & C;
endmodule
