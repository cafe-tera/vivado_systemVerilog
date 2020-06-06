`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.06.2020 15:39:13
// Design Name: 
// Module Name: Actividad3test
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


module Actividad3test#(parameter p = 8)();
    logic [p-1: 0] A;
    logic [p-1: 0] B;
    logic [p-1: 0] Result;
    logic [1:0] OpCode;
    logic N;
    logic Z;
    logic C;
    logic V;
    S4_Actividad3 DUT(.A(A),.B(B),.Result(Result),.OpCode(OpCode),.N(N),.Z(Z),.C(C),.V(V)); 

    initial begin
    
        //carry out
        A= 'h8f;
        B= 'had;
        OpCode = 2'b00;
        
        // 0 & carry out
        #1
        A= 'hff;
        B= 'd01;
        OpCode = 2'b00;
        
        // 0 & carry out
        #1
        A= 'd1;
        B= -'d1;
        OpCode = 2'b00;
        
        // negativo
        #1
        A= 'd1;
        B= -'d10;
        OpCode = 2'b00;
        
        // overflow
        #1
        A= 'd100;
        B= 'd89;
        OpCode = 2'b00;
        
        #1
        A= 'd10;
        B= 'd01;
        OpCode = 2'b11;
        
        #1 
        A= 'd10;
        B= 'd01;
        OpCode = 2'b10;
        
        #1      
        A= 'd01;
        B= -'hff;
        OpCode = 2'b01;
    
    
    end

endmodule

