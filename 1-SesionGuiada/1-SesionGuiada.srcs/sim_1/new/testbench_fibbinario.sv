`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.05.2020 18:04:27
// Design Name: 
// Module Name: testbench_fibbinario
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


module testbench_fibbinario();

    logic A, B, C, D;
    logic F;
    integer i;
    
    fibbinario DUT(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .F(F)
        );
        
    initial begin
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
        
        for (i = 0; i < 16; i = i+1) begin
            {A, B, C, D} = i;
            #2;
        end
    end

endmodule
