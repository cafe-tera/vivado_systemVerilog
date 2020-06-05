`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 17:04:28
// Design Name: 
// Module Name: S4_Actividad1
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


module S4_Actividad1(
input logic clock, reset,[31:0] BCD_in,
output logic CA, CB, CC, CD, CE, CF, CG,//LED DE CADA BCD-7SEGMENTOS ABCDEFG
output logic [7:0]AN//?NODO DE CADA PANEL DE BNC  
    );
logic BCD_4bits;
logic display;
logic clk_out;
logic [3:0]count;
logic [6:0] dis0;
logic [6:0] dis1;
logic [6:0] dis2;
logic [6:0] dis3;
logic [6:0] dis4;
logic [6:0] dis5;
logic [6:0] dis6;
logic [6:0] dis7;

BCD_to_sevenSeg BCD0(.BCD_4bits(BCD_in[3:0]),.display(dis0));
BCD_to_sevenSeg BCD1(.BCD_4bits(BCD_in[7:4]),.display(dis1));
BCD_to_sevenSeg BCD2(.BCD_4bits(BCD_in[11:8]),.display(dis2));
BCD_to_sevenSeg BCD3(.BCD_4bits(BCD_in[15:12]),.display(dis3));
BCD_to_sevenSeg BCD4(.BCD_4bits(BCD_in[19:16]),.display(dis4));
BCD_to_sevenSeg BCD5(.BCD_4bits(BCD_in[23:20]),.display(dis5));
BCD_to_sevenSeg BCD6(.BCD_4bits(BCD_in[27:24]),.display(dis6));
BCD_to_sevenSeg BCD7(.BCD_4bits(BCD_in[31:28]),.display(dis7));

trans_reloj  #(100_000_000,160) reloj50(.clk_in(clock),.reset(reset),.clk_out(clk_out));

control_mux #('d4) control_mux(.clk(clk_out),.reset(reset),.count(count));

mux mux(.dis0(dis0),.dis1(dis1),.dis2(dis2),.dis3(dis3),.dis4(dis4),.dis5(dis5),.dis6(dis6),.dis7(dis7),
.Control(count),.AA(AN),.segment({CA,CB,CC,CD,CE,CF,CG}));



endmodule
