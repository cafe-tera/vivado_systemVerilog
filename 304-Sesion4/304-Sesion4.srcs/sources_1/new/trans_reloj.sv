`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 16:22:35
// Design Name: 
// Module Name: trans_reloj
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


module trans_reloj
#(parameter frec_ent = 100_000_000, frec_sal = 50_000_000)
//#(parameter COUNTER_MAX = 'd312500, DELAY_WIDTH = $clog2(COUNTER_MAX))
 (input logic clk_in,
  input logic reset,
  output logic clk_out
  );

  localparam COUNT_MAX = (frec_ent)/(2*frec_sal);
  localparam DELAY_WIDTH = $clog2(COUNT_MAX);
  logic [DELAY_WIDTH-1:0] counter = 'd0;
  always_ff @(posedge clk_in) begin
    if (reset == 'd1) begin 
       counter <= 'd0;
       clk_out <= 'd0;
       end 
    else if (counter == COUNT_MAX-1) begin
       counter <= 'd0;
       clk_out <= ~clk_out;
       end
    else begin 
       counter <= counter + 1;
       clk_out <= clk_out;
       end
  end

   
endmodule
