`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.06.2020 22:55:00
// Design Name: 
// Module Name: S4_Actividad3
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


module S4_Actividad3(
input logic [7:0]A,
input logic [7:0]B,
output logic [7:0]Result,
output logic V,
output logic C,
output logic Z,
output logic N
    );
ALU #('d8)alu(.A(A),.B(B),.Result(Result),.V(V),.C(C),.Z(Z),.N(N));
endmodule
