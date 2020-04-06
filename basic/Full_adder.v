`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:16:32 04/07/2020 
// Design Name: 
// Module Name:    Full_adder 
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
module Full_adder(
    input A,
    input B,
    input C_in,
    output S,
    output C_out
    );
	 
	 wire ab, bc, ac;
	 
	 xor X1(S, A, B, C_in);
	 
	 and A1(ab, A, B);
	 and A2(ac, A, C_in);
	 and A3(bc, B, C_in);
	 or  O1(C_out, ab, bc, ac);

endmodule
