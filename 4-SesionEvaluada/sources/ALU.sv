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
    
    input logic [1:0]OpCode,
    output logic [NR-1:0]Result, //Resultado de la operacion 

    output logic N,Z,C,V
    );
    
    //Se definen las distintas operaciones logicas y aritmeticas
    logic [8:0] tmp; 

    
    always_comb begin
    
        case (OpCode)
        
            2'b11: begin//boton 0 realiza and
            
                    V = 0;
                    C = 0;
            
                     Result = (A & B);
                      if(Result == 0) begin
                        Z = 1;
                        N= 0;
                        end
                      else begin
                        N = 0;
                        Z  = 0;
                        end  
                                                             
            end 
            2'b10: begin//boton 1 realiza or
                    V = 0;
                    C = 0;
            
                    Result = (A | B);
                    if(Result == 0) begin
                        Z = 1;
                        N= 0;
                        end
                      else begin
                        N = 0;
                        Z  = 0;
                        end  
                                                 
            end    
            2'b01: begin//boton 2 realiza resta

                    tmp = A - B;
                    Result = tmp[7:0];
                    
                    if(A > 0 && B < 0 && tmp[8] == 1 && Result[7] == 1 )begin
                        V = 1;
                        C = 0;
                        end
                    else if(A < 0 && B > 0 && tmp[8] == 1 && Result[7] == 0 ) begin
                        V = 1;
                        C = 0;
                        end
                    else begin
                        C = 1;
                        V = 0;
                        end
                     
                     
                     if(Result == 0) begin
                        Z = 1;
                        N= 0;
                        end
                    else if ( Result[7] == 1 ) begin //Result < 0
                        Z=0;
                        N = 1;
                        end
                     else begin
                        N = 0;
                        Z  = 0;
                        end
                          
                     
                     
                     end
            2'b00: begin//boton 3 realiza suma 

                    tmp = A + B;
                    Result = tmp[7:0];
                    
                    if( A > 0 && B > 0 && tmp[8] == 1 && Result[7] == 1 )begin
                        V = 1;
                        C = 0;
                        end
                    else if( A < 0 && B < 0 && tmp[8] == 1 && Result[7] ==0 )begin
                        V = 1;
                        C = 0;
                        end
                    else begin
                        V = 0;
                        C = tmp[8]; // si hay carry out es 1, si no es 0
                        end
                     
                     if(Result == 0) begin
                        Z = 1;
                        N= 0;
                        end
                    else if ( Result[7] == 1 ) begin 
                        Z=0;
                        N = 1;
                        end
                     else begin
                        N = 0;
                        Z  = 0;
                        end
                     
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
