`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/31/2020 06:43:51 PM
// Design Name: 
// Module Name: enable_cont
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


module enable_cont #(parameter N=4)(
    input logic clk, reset, enable, load, [N-1:0] load_value, dec,
    output logic [N-1:0] count
);
    always_ff@(posedge clk) begin
        if(reset)
            count <={N{1'b0}};
        
        else if (enable) begin
            if (dec)
                count <= count-1;
            else
                count <= count+1;
        end
        else if (load)
            count <= load_value;
    end

endmodule
