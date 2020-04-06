`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:00:27 04/07/2020 
// Design Name: 
// Module Name:    Half_adder 
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
module Half_adder(
    input a,
    input b,
    output s,
    output c_out
    );
	 
	 xor X1(s,a,b);
	 and A1(c_out, a, b);

endmodule
