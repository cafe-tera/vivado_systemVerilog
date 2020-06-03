`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.05.2020 16:19:00
// Design Name: 
// Module Name: testmux
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


module testmux();
logic [1:0] selec;
logic [1:0]salida;
integer i;
mux DUT(
.selec(selec),.salida(salida));
initial begin
selec = 2'd0;
for (i=0;i<4; i=i+1) begin
    selec = i;
    #2;
    end
end

endmodule
