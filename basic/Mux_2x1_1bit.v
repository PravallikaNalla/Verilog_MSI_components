`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:27 04/08/2020 
// Design Name: 
// Module Name:    Mux_2x1_1bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Mux_2x1(
    input I0,
    input I1,
    input sel,
    output O
    );
	 
	 wire sel_bar;
	 //Level-1 AND gate outputs
	 wire [1:0] L1;
	 
	 not N1(sel_bar, sel);
	 
	 //Level-1 AND gates
	 and A1(L1[0], sel_bar, I0);
	 and A2(L1[1], sel, I1);
	 
	 //Level-2 OR gate
	 or O1(O, L1[0], L1[1]);
	 
endmodule
