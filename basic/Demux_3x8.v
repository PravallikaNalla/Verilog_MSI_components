`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:02:27 04/08/2020 
// Design Name: 
// Module Name:    Demux_3x8 
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
module Demux_3x8(
	 input In,
    input [2:0] sel,
    output [7:0] O
    );
	 
	 wire [2:0] sel_bar;
	 
	 not N0(sel_bar[0], sel[0]);
	 not N1(sel_bar[1], sel[1]);
	 not N2(sel_bar[2], sel[2]);
	 
	 and A0(O[0], In, sel_bar[2], sel_bar[1], sel_bar[0]);
	 and A1(O[1], In, sel_bar[2], sel_bar[1], sel[0]);
	 and A2(O[2], In, sel_bar[2], sel[1], 		sel_bar[0]);
	 and A3(O[3], In, sel_bar[2], sel[1], 		sel[0]);

	 and A4(O[4], In, sel[2], sel_bar[1], sel_bar[0]);
	 and A5(O[5], In, sel[2], sel_bar[1], sel[0]);
	 and A6(O[6], In, sel[2], sel[1], 	 sel_bar[0]);
	 and A7(O[7], In, sel[2], sel[1], 	 sel[0]);


endmodule
