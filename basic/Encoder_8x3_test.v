`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:53:27 04/09/2020
// Design Name:   Encoder_8x3
// Module Name:   C:/Users/pravnall/Documents/xilinx projects/test/Encoder_8x3_test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Encoder_8x3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Encoder_8x3_test;

	// Inputs
	reg [7:0] In;

	// Outputs
	wire [2:0] O;

	// Instantiate the Unit Under Test (UUT)
	Encoder_8x3 uut (
		.In(In), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		In = 0;

		// Wait 100 ns for global reset to finish
		#10;
      #1 $monitor( "%d ns: Input1 : %d | Output: %d | %b %b %b",
                                             $time, In, O, O[2], O[1], O[0]);
		// Add stimulus here
		In = 8'b00000001; #1;
		In = 8'b00000010; #1;
		In = 8'b00000100; #1;
		In = 8'b00001000; #1;
		In = 8'b00010000; #1;
		In = 8'b00100000; #1;
		In = 8'b01000000; #1;
		In = 8'b10000000; #1;
		$finish;

        
		// Add stimulus here

	end
      
endmodule

