`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:18:27 04/08/2020 
// Design Name: 
// Module Name:    conditional_sum_1bit 
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
module conditional_sum(
    input A,
    input B,
    output S_0,
    output C_0,
    output S_1,
    output C_1
    );
	 
	 xor X1(S_0, A, B);
	 and A1(C_0, A, B);
	 xnor XN1(S_1, A, B);
	 or    O1(C_1, A, B);

endmodule
