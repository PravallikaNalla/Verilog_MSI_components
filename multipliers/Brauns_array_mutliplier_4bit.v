`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:05:41 04/14/2020 
// Design Name: 
// Module Name:    Brauns_array_mutliplier_4bit 
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
module Brauns_array_mutliplier_4bit(
    input [3:0] A,
    input [3:0] B,
    output [7:0] AB
    );
	
	 wire       a1b0, a2b0, a3b0;
	 wire a0b1, a1b1, a2b1, a3b1;
	 wire a0b2, a1b2, a2b2, a3b2;
	 wire a0b3, a1b3, a2b3, a3b3;
	 
	 wire [2:0] carry1, carry2, carry3, carry4;
	 wire [1:0] sum1, sum2, sum3;
	 
	 //ANDs
	 and A00(AB[0], A[0], B[0]);
	 and A10(a1b0, A[1], B[0]);
	 and A20(a2b0, A[2], B[0]);
	 and A30(a3b0, A[3], B[0]);
	 
	 and A01(a0b1, A[0], B[1]);
	 and A11(a1b1, A[1], B[1]);
	 and A21(a2b1, A[2], B[1]);
	 and A31(a3b1, A[3], B[1]);
	 
	 and A02(a0b2, A[0], B[2]);
	 and A12(a1b2, A[1], B[2]);
	 and A22(a2b2, A[2], B[2]);
	 and A32(a3b2, A[3], B[2]);
	 
	 and A03(a0b3, A[0], B[3]);
	 and A13(a1b3, A[1], B[3]);
	 and A23(a2b3, A[2], B[3]);
	 and A33(a3b3, A[3], B[3]);
	 
	 
	 //Level 1
	 Half_adder HA1(.a(a1b0), .b(a0b1), .s(AB[1]), .c_out(carry1[0]));
	 Half_adder HA2(.a(a2b0), .b(a1b1), .s(sum1[0]), .c_out(carry1[1]));
	 Half_adder HA3(.a(a3b0), .b(a2b1), .s(sum1[1]), .c_out(carry1[2]));
	 
	 //Level 2
	 Full_adder FA1(.A(sum1[0]), .B(carry1[0]), .C_in(a0b2), .S(AB[2]), .C_out(carry2[0]));
	 Full_adder FA2(.A(sum1[1]), .B(carry1[1]), .C_in(a1b2), .S(sum2[0]), .C_out(carry2[1]));
	 Full_adder FA3(.A(a3b1),    .B(carry1[2]), .C_in(a2b2), .S(sum2[1]), .C_out(carry2[2]));
	 
	 //Level 3 
	 Full_adder FA4(.A(sum2[0]), .B(carry2[0]), .C_in(a0b3), .S(AB[3]), .C_out(carry3[0]));
	 Full_adder FA5(.A(sum2[1]), .B(carry2[1]), .C_in(a1b3), .S(sum3[0]), .C_out(carry3[1]));
	 Full_adder FA6(.A(a3b2),    .B(carry2[2]), .C_in(a2b3), .S(sum3[1]), .C_out(carry3[2]));

	 //Level 4
	 Half_adder HA4(.a(sum3[0]), .b(carry3[0]), .s(AB[4]), .c_out(carry4[0]));
	 Full_adder FA7(.A(sum3[1]), .B(carry3[1]), .C_in(carry4[0]), .S(AB[5]), .C_out(carry4[1]));
	 Full_adder FA8(.A(a3b3),    .B(carry3[2]), .C_in(carry4[1]), .S(AB[6]), .C_out(AB[7]));

endmodule
