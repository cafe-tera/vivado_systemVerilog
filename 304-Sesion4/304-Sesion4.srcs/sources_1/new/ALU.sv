`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 23:29:10
// Design Name: 
// Module Name: ALU
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


module ALU
 #(parameter NA = 8, NB = 8, NR = 8)
   (input logic [NA-1:0]A, [NB-1:0]B,//Operandos que poseen una determinada cantidad de bits
    //input logic  boton3, boton2, boton1, boton0,//Operaciones tanto aritm?ticas como l?gicas
    input logic [1:0]OpCode,
    output logic [NR-1:0]Result,//Resultado de la operaci?n 
    //output logic [1:0]status,//Estados para la s?lida
    //output logic [NA-1:0] operando1,[NB-1:0]operando2
    output logic N,Z,C,V
    );
    //Se definen las distintas operaciones logicas y aritmeticas
    //logic [3:0] OpCode;
    //assign OpCode[3] = boton3;
    //assign OpCode[2] = boton2;
    //assign OpCode[1] = boton1;
    //assign OpCode[0] = boton0;
    assign Z=0;
    assign C=0;
    assign V=0;
    assign N=0;
    always_comb begin
        case (OpCode)
            2'b11: begin//boton 0 realiza and
                     Result = (A & B);
                     if(A==0 || B==0 || Result== 0) begin
                        Z=1;
                        C=0;
                        V=0;
                        N=0;
                        end
                     else 
                        Z=0;
                     //status = 2'b01;
                                                   
                     end 
            2'b10: begin//boton 1 realiza or
                     Result = (A | B);
                     if(A==0 && B==0) begin
                        Z=1;
                        C=0;
                        V=0;
                        N=0;
                        end                        
                     else
                        Z=0;
                     //status = 2'b01;                           
                     end
            2'b01: begin//boton 2 realiza resta
                     Result = (A - B);
                     if (A<B) begin
                        N=1;
                        Z=0;
                        C=0;
                        V=1;
                        end                        
                     else if (A==B) begin
                        Z=1;
                        C=0;
                        V=0;
                        N=0;
                        end
                     else if(A<0 && B>0 && Result>0) begin
                        V=1;
                        Z=0;
                        C=0;
                        N=0;
                        end
                     else if(A>0 && B<0 && Result<0) begin
                        V=1;
                        Z=0;
                        C=0;
                        N=0;
                        end
                     else begin
                        N=0;
                        Z=0;
                        end
                     //status = 2'b00;
                     end
            2'b00: begin//boton 3 realiza suma      
                     Result = (A + B);
                     if(A==0 && B==0) begin
                        Z=1;
                        C=0;
                        V=0;
                        N=0;
                        end
                    
                     else if(A<0 && B<0 && Result>0) begin
                        V=1;
                        Z=0;
                        C=0;
                        N=0;
                        end
                     else if(A>0 && B>0 && Result<0) begin
                        V=1;
                        Z=0;
                        C=0;
                        N=0;
                        end
                     else if(A+B > 'hFF) begin
                        V=0;
                        Z=0;
                        C=1;
                        N=0;
                        end
                     else
                        Z=0;
                     //status = 2'b00;
                     
                     end
            default: 
                     begin
                     Result='d0;
                     
                     //status = 2'b11;
                     end
        endcase
    //operando1 = A;
    //operando2 = B;        
    end
endmodule
