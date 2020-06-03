`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.05.2020 16:47:06
// Design Name: 
// Module Name: testbench_BCD_to_sevenSeg
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


module testbench_BCD_to_sevenSeg();
    logic [3:0] W;
    logic [6:0] F;
    
    BCD_to_sevenSeg DUT(
        .BCD_in (W),
        .sevenSeg (F)
    );
    
    initial begin
        W=4'd0;
        #3;
        repeat(15)begin
            W+=4'd1;
            #3;
        end
    end
endmodule
