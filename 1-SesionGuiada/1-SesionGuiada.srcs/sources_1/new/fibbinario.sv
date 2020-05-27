`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2020 17:46:59
// Design Name: 
// Module Name: fibbinario
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


module fibbinario(
    input  logic A, B, C, D,
    output logic F
    );
    
    assign F = (~A&~C)|(~B&~C)|(~B&~D);
    
endmodule
