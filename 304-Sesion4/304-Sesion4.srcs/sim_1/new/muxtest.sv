`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 19:08:44
// Design Name: 
// Module Name: muxtest
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


module muxtest();
logic [6:0] dis0;//Son los distintos display a utilizar
logic [6:0] dis1;
logic [6:0] dis2;
logic [6:0] dis3;
logic [6:0] dis4;
logic [6:0] dis5;
logic [6:0] dis6;
logic [6:0] dis7;
        //input logic clk,//no es necesario
logic [3:0] Control;//Se?al de control que env?a el contador
        //input logic [3:0] boton, //{BTNU, BTND, BTNR, BTNL}, se?al de control
        //input logic reset, // BTNC, b?ton utilizado para el reset//no es necesario 
logic [7:0] AA; //?nodo del display que se encender?    
logic [6:0] segment; //Display que se encender?
mux DUT(.dis0(dis0),.dis1(dis1),.dis2(dis3),.dis3(dis4),.dis4(dis6),.dis5(dis7),
.Control(Control),.AA(AA),.segment(segment));
 
    
    initial begin
    #10 Control= 'd1;
    #10 Control= 'd2;
    #10 Control= 'd3;
    #10 Control= 'd4;
    #10 Control= 'd5;
    #10 Control= 'd6;
    #10 Control= 'd7;
    #10 Control= 'd8;
    end
endmodule
