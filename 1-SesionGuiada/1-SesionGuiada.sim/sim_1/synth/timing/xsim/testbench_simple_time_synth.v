// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Fri May  8 16:18:01 2020
// Host        : DESKTOP-3KPHSR9 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               D:/VivadoProyects/1-SesionGuiada/1-SesionGuiada.sim/sim_1/synth/timing/xsim/testbench_simple_time_synth.v
// Design      : logica_simple
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module logica_simple
   (A,
    B,
    C,
    X,
    Y,
    Z);
  input A;
  input B;
  input C;
  output X;
  output Y;
  output Z;

  wire A;
  wire B;
  wire B_IBUF;
  wire C;
  wire C_IBUF;
  wire X;
  wire X_OBUF;
  wire Y;
  wire Y_OBUF;
  wire Z;
  wire Z_OBUF;

initial begin
 $sdf_annotate("testbench_simple_time_synth.sdf",,,,"tool_control");
end
  IBUF A_IBUF_inst
       (.I(A),
        .O(X_OBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  IBUF C_IBUF_inst
       (.I(C),
        .O(C_IBUF));
  OBUF X_OBUF_inst
       (.I(X_OBUF),
        .O(X));
  OBUF Y_OBUF_inst
       (.I(Y_OBUF),
        .O(Y));
  LUT1 #(
    .INIT(2'h1)) 
    Y_OBUF_inst_i_1
       (.I0(X_OBUF),
        .O(Y_OBUF));
  OBUF Z_OBUF_inst
       (.I(Z_OBUF),
        .O(Z));
  LUT2 #(
    .INIT(4'h8)) 
    Z_OBUF_inst_i_1
       (.I0(B_IBUF),
        .I1(C_IBUF),
        .O(Z_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
