`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:24:16 04/08/2020 
// Design Name: 
// Module Name:    Encoder_8x3 
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
module Encoder_8x3(
    input [7:0] In,
    output [2:0] O
    );
	 
	 or O0(O[0], In[1], In[3], In[5], In[7]);
	 or O1(O[1], In[2], In[3], In[6], In[7]);
	 or O2(O[2], In[4], In[5], In[6], In[7]);


endmodule
