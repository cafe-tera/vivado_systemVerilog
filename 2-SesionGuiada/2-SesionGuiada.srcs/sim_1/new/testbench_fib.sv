`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2020 15:37:43
// Design Name: 
// Module Name: test_fibinario
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


module test_fibinario();
    logic A, B, C, D;
    logic X;
    logic [3:0] W;
    assign {A,B,C,D} = W;
    
    fib_rec DUT(
        .A (A),
        .B (B),
        .C (C),
        .D (D),
        .X (X)
    );
    
    initial begin
        W=4'b0000;
        #1
        W=4'b0001;
        #1
        W=4'b0010;
        #1
        W=4'b0011;
        #1
        W=4'b0100;
        #1
        W=4'b0101;
        #1
        W=4'b0110;
        #1
        W=4'b0111;
        #1
        W=4'b1000;
        #1
        W=4'b1001;
        #1
        W=4'b1010;
        #1
        W=4'b1011;
        #1
        W=4'b1100;
        #1
        W=4'b1101;
        #1
        W=4'b1110;
        #1
        W=4'b1111;
        
     end
endmodule
