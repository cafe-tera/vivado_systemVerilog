`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 18:04:43
// Design Name: 
// Module Name: Actividad1test
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


module Actividad1test
 #(parameter N = 32)();
    logic clock , reset;
    logic [N-1:0] BCD_in;
    logic CA, CB, CC, CD, CE, CF, CG;
    logic [7:0] AN;
    
    S4_Actividad1 DUT(.clock(clock), .reset(reset), .BCD_in(BCD_in), 
    .CA(CA),.CB(CB),.CC(CC),.CD(CD),.CE(CE),.CF(CF),.CG(CG),.AN(AN));
    
    always #5 clock= ~clock; //generacion de se al clock
    
    initial begin
        
        clock = 0;
        reset  = 1;
        #10 reset = 0;
        BCD_in = 32'd420666069; 
    end    


endmodule
