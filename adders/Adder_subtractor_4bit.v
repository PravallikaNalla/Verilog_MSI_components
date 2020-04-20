`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:13 04/20/2020 
// Design Name: 
// Module Name:    Adder_subtractor_4bit 
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
module Adder_subtractor_4bit(
    input [3:0] A,
    input [3:0] B,
    input Mode,
    output [3:0] S_D,
    output C_B_out
    );

	 wire [3:1] c;
	 wire [3:0] BxMode;
	 
	 xor X1(BxMode[0], B[0], Mode);
	 xor X2(BxMode[1], B[1], Mode);
	 xor X3(BxMode[2], B[2], Mode);
	 xor X4(BxMode[3], B[3], Mode);
	 
	 Full_adder F0(.A(A[0]), .B(BxMode[0]), .C_in(Mode), .S(S_D[0]), .C_out(c[1]));
	 Full_adder F1(.A(A[1]), .B(BxMode[1]), .C_in(c[1]), .S(S_D[1]), .C_out(c[2]));
	 Full_adder F2(.A(A[2]), .B(BxMode[2]), .C_in(c[2]), .S(S_D[2]), .C_out(c[3]));
	 Full_adder F3(.A(A[3]), .B(BxMode[3]), .C_in(c[3]), .S(S_D[3]), .C_out(C_B_out));


endmodule
