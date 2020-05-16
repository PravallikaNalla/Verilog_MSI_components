`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:37:56 04/30/2020 
// Design Name: 
// Module Name:    Dff 
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
module Dff(
    input D,
    input clk,
    input sync_reset,
    output reg Q
    );
	 
	 always @(posedge clk)
	 begin
		if (sync_reset == 1'b1)
			Q <= 1'b0;
		else
			Q <= D;
	 end

endmodule
