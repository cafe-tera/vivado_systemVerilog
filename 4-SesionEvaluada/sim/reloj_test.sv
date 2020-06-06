`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 19:32:50
// Design Name: 
// Module Name: reloj_test
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


module reloj_test 
#(parameter COUNTER_MAX = 312500, 
  parameter DELAY_WIDTH = $clog2(COUNTER_MAX))();
logic clk_in , reset;
logic clk_out;
//logic [DELAY_WIDTH-1:0] counter;

trans_reloj #(COUNTER_MAX) DUT(.clk_in(clk_in),.reset(reset),.clk_out(clk_out));

always #5 clk_in = ~clk_in; //generacion de se al clock

    initial begin
//        counter = 'd0;
        clk_in = 1;
        reset  = 1;
        #10 reset = 0;
        
     end
endmodule
