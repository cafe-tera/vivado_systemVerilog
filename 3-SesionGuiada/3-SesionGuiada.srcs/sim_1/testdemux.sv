`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2020 16:53:46
// Design Name: 
// Module Name: testdemux
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


module testdemux();
logic [1:0] entrada;
logic [3:0]salida;
integer i;
demux DUT(
.entrada(entrada),.salida(salida));
initial begin
entrada = 2'd0;
for (i=0;i<4; i=i+1) begin
    entrada = i;
    #2;
    end
end
    
endmodule
