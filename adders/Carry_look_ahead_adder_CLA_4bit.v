`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:39 04/08/2020 
// Design Name: 
// Module Name:    Carry_look_ahead_adder_CLA_4bit 
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
module Carry_look_ahead_adder_CLA_4bit(
    input [3:0] A,
    input [3:0] B,
    input C_in,
    output [3:0] S,
    output C_out
    );
	 
	 //Level 2 and gate outputs
	 wire [9:0] L2;
	 //carry out of each bit
	 wire [3:1] c;
	 //generate and propogate
	 wire [3:0] g,p;
	 
	 //calculate generate and propogate
	 //Level-1
	 and A0(g[0], A[0], B[0]);
	 and A1(g[1], A[1], B[1]);
	 and A2(g[2], A[2], B[2]);
	 and A3(g[3], A[3], B[3]);
	 xor X0(p[0], A[0], B[0]);
	 xor X1(p[1], A[1], B[1]);
	 xor X2(p[2], A[2], B[2]);
	 xor X3(p[3], A[3], B[3]);
	 
	 //Level-2
	 //c[1]
	 and A4(L2[0], p[0], C_in);
	 //c[2]
	 and A5(L2[1], p[1], g[0]);
	 and A6(L2[2], p[1], p[0], C_in);
	 //c[3]
	 and A7(L2[3], p[2], g[1]);
	 and A8(L2[4], p[2], p[1], g[0]);
	 and A9(L2[5], p[2], p[1], p[0], C_in);
	 //c[4]
	 and A10(L2[6], p[3], g[2]);
	 and A11(L2[7], p[3], p[2], g[1]);
	 and A12(L2[8], p[3], p[2], p[1], g[0]);
	 and A13(L2[9], p[3], p[2], p[1], p[0], C_in);
	 
	 //Level-3
	 //Calculate carrys
	 or O1(c[1], g[0], L2[0]);
	 or O2(c[2], g[1], L2[1], L2[2]);
	 or O3(c[3], g[2], L2[3], L2[4], L2[5]);
	 or O4(C_out, g[3], L2[6], L2[7], L2[8], L2[9]);
	 
	 //Level-4
	 //Calculate sum using carrys above
	 xor X4(S[0], p[0], C_in);
	 xor X5(S[1], p[1], c[1]);
	 xor X6(S[2], p[2], c[2]);
	 xor X7(S[3], p[3], c[3]);


endmodule
