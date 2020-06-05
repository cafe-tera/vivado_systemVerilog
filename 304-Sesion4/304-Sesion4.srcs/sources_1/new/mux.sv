`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.06.2020 16:23:34
// Design Name: 
// Module Name: mux
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


module mux(
        input logic [6:0] dis0,//Son los distintos display a utilizar
        input logic [6:0] dis1,
        input logic [6:0] dis2,
        input logic [6:0] dis3,
        input logic [6:0] dis4,
        input logic [6:0] dis5,
        input logic [6:0] dis6,
        input logic [6:0] dis7,
        //input logic clk,//no es necesario
        input logic [3:0] Control,//Se?al de control que env?a el contador
        //input logic [3:0] boton, //{BTNU, BTND, BTNR, BTNL}, se?al de control
        //input logic reset, // BTNC, b?ton utilizado para el reset//no es necesario 
        output logic [7:0] AA, //?nodo del display que se encender?    
        output logic [6:0] segment //Display que se encender? 
        );
logic [7:0] AAN;
logic [6:0] SN;
//always_ff @(posedge clk or posedge reset) begin
always_comb begin
          case (Control)
                'd0://Valores menos significativos de A
                    begin//Si apreto algun boton no me muestra el operando A
                    SN=dis0;
                    AAN = 8'b00_000_001;           
                    end
                    
                'd1://Valores m?s significativos de A
                    begin//Si apreto alg?n bot?n no me muestra el operando A
                    SN=dis1;
                    AAN = 8'b00_000_010;
                    end
                   
                'd2://Valores m?s significativos de A
                    begin//Si apreto alg?n bot?n no me muestra el operando A
                    SN=dis2;
                    AAN = 8'b00_000_100;
                    end
                    
                'd3://Valores m?s significativos de A
                    begin//Si apreto alg?n bot?n no me muestra el operando A
                    SN=dis3;
                    AAN = 8'b00_001_000;
                    end
                    
                'd4://Valores m?s significativos de A
                    begin//Si apreto alg?n bot?n no me muestra el operando A
                    SN=dis4;
                    AAN = 8'b00_010_000;
                    end
                    
                'd5://Valores m?s significativos de A
                    begin//Si apreto alg?n bot?n no me muestra el operando A
                    SN=dis5;
                    AAN = 8'b00_100_000;
                    end
                    
                'd6://Valores m?s significativos de A
                    begin//Si apreto alg?n bot?n no me muestra el operando A
                    SN=dis6;
                    AAN = 8'b01_000_000;
                    end
                    
                'd7://Valores m?s significativos de A
                    begin//Si apreto alg?n bot?n no me muestra el operando A
                    SN=dis7;
                    AAN = 8'b10_000_000;
                    end
                 
                default://En cualquier otro caso deben estar apagados los display
                        begin
                                SN=7'b0_000_000;
                                AAN = 8'b00_000_000;  
                    end 
          endcase
end       
assign AA=~AAN;//C?mo los display de la FPGA son de ?noodo com?n se niega la salida AA
assign segment=~SN;
    
endmodule
