`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:38:23 04/07/2020 
// Design Name: 
// Module Name:    Ripple_carry_adder_RCA_4bit 
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
module Ripple_carry_adder_RCA_4bit(
    input [3:0] A,
    input [3:0] B,
    input C_in,
    output [3:0] S,
    output C_out
    );
	 
	 wire [3:1] c;
	 
	 Full_adder F0(.A(A[0]), .B(B[0]), .C_in(C_in), .S(S[0]), .C_out(c[1]));
	 Full_adder F1(.A(A[1]), .B(B[1]), .C_in(c[1]), .S(S[1]), .C_out(c[2]));
	 Full_adder F2(.A(A[2]), .B(B[2]), .C_in(c[2]), .S(S[2]), .C_out(c[3]));
	 Full_adder F3(.A(A[3]), .B(B[3]), .C_in(c[3]), .S(S[3]), .C_out(C_out));
	 
endmodule
