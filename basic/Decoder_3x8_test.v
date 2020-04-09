`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:58:47 04/08/2020
// Design Name:   Decoder_3x8
// Module Name:   C:/Users/pravnall/Documents/xilinx projects/test/Decoder_3x8_test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Decoder_3x8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Decoder_3x8_test;

	// Inputs
	reg [2:0] In;

	// Outputs
	wire [7:0] O;

	// Instantiate the Unit Under Test (UUT)
	Decoder_3x8 uut (
		.In(In), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		In = 0;

		// Wait 100 ns for global reset to finish
		#10;
      #1 $monitor( "%d ns: Input1 : %d == Output:%d",
                                             $time, In, O);
		// Add stimulus here
		In = 3; #1;
		In = 7; #1;
		In = 4; #1;
		$finish;

	end
      
endmodule

