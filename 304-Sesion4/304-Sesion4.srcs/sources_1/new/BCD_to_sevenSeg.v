`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2020 11:06:05 PM
// Design Name: 
// Module Name: BCD_to_sevenSeg
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


module BCD_to_sevenSeg(
    input logic [3:0] BCD_4bits,
    output logic [6:0] display
    );
    always_comb begin
        case(BCD_4bits)// salida del n?mero en base hexagesimal en display abcdefg en hexa          
            4'b0000 :     display = 7'b1111110; // 0
            4'b0001 :     display = 7'b0110000; // 1
            4'b0010 :     display = 7'b1101101; // 2
            4'b0011 :     display = 7'b1111001; // 3 
            4'b0100 :     display = 7'b0110011; // 4
            4'b0101 :     display = 7'b1011011; // 5
            4'b0110 :     display = 7'b1011111; // 6
            4'b0111 :     display = 7'b1110000; // 7
            4'b1000 :     display = 7'b1111111; // 8
            4'b1001 :     display = 7'b1111011; // 9
            4'b1010 :     display = 7'b1110111; // A
            4'b1011 :     display = 7'b0011111; // b
            4'b1100 :     display = 7'b1001110; // c
            4'b1101 :     display = 7'b0111101; // d
            4'b1110 :     display = 7'b1001111; // E
            4'b1111 :     display = 7'b1000111; // F
            default :     display = 7'b0000000; // Caso default, que no pertenezca al conjunto H[0,F]
        endcase
    end
endmodule
