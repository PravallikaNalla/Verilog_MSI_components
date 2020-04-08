`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:52:02 04/08/2020 
// Design Name: 
// Module Name:    Conditional_sum_adder_4bit 
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
module Conditional_sum_adder_4bit(
    input [3:0] A,
    input [3:0] B,
    input C_in,
    output [3:0] S,
    output C_out
    );
	 
	 wire [1:0] c;
	 wire [1:0] s10,c10, s21,c21, s32,c32,  s31,c31;
	 
	 //Bit 0
	 Full_adder FA0(.A(A[0]), .B(B[0]), .C_in(C_in), .S(S[0]), .C_out(c[0]));
	 
	 //Bit 1 - input: c[0] , output: S[1], c[1]
	 conditional_sum CS0(.A(A[1]), .B(B[1]), .S_0(s10[0]), .C_0(c10[0]), .S_1(s10[1]), .C_1(c10[1]));
	 Mux_2x1 MUX10_S(.I0(s10[0]), .I1(s10[1]), .sel(c[0]), .O(S[1]));
	 Mux_2x1 MUX10_C(.I0(c10[0]), .I1(c10[1]), .sel(c[0]), .O(c[1]));
	 
	 //Bit 2,3 - input: c[1] , output: S[2],S[3], C_out
	 conditional_sum CS1(.A(A[2]), .B(B[2]), .S_0(s21[0]), .C_0(c21[0]), .S_1(s21[1]), .C_1(c21[1]));
	 conditional_sum CS2(.A(A[3]), .B(B[3]), .S_0(s32[0]), .C_0(c32[0]), .S_1(s32[1]), .C_1(c32[1]));
	 Mux_2x1 MUX32_S0(.I0(s32[0]), .I1(s32[1]), .sel(c21[0]), .O(s31[0]));
	 Mux_2x1 MUX32_S1(.I0(s32[0]), .I1(s32[1]), .sel(c21[1]), .O(s31[1]));
	 Mux_2x1 MUX32_C0(.I0(c32[0]), .I1(c32[1]), .sel(c21[0]), .O(c31[0]));
	 Mux_2x1 MUX32_C1(.I0(c32[0]), .I1(c32[1]), .sel(c21[1]), .O(c31[1]));
	 
	 Mux_2x1 MUX31_C(.I0(c31[0]), .I1(c31[1]), .sel(c[1]), .O(C_out));
	 Mux_2x1 MUX31_S(.I0(s31[0]), .I1(s31[1]), .sel(c[1]), .O(S[3]));
	 Mux_2x1 MUX21_S(.I0(s21[0]), .I1(s21[1]), .sel(c[1]), .O(S[2]));




endmodule
