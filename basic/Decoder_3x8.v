`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:45 04/08/2020 
// Design Name: 
// Module Name:    Decoder_3x8 
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
module Decoder_3x8(
    input [2:0] In,
    output [7:0] O
    );
	 
	 wire [2:0] In_bar;
	 
	 not N0(In_bar[0], In[0]);
	 not N1(In_bar[1], In[1]);
	 not N2(In_bar[2], In[2]);
	 
	 and A0(O[0], In_bar[2], In_bar[1], In_bar[0]);
	 and A1(O[1], In_bar[2], In_bar[1], In[0]);
	 and A2(O[2], In_bar[2], In[1], 		In_bar[0]);
	 and A3(O[3], In_bar[2], In[1], 		In[0]);

	 and A4(O[4], In[2], In_bar[1], In_bar[0]);
	 and A5(O[5], In[2], In_bar[1], In[0]);
	 and A6(O[6], In[2], In[1], 	  In_bar[0]);
	 and A7(O[7], In[2], In[1], 	  In[0]);

endmodule
