`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:11:41 04/19/2020
// Design Name:   Baugh_Wooley_multiplier_4bit
// Module Name:   C:/Users/pravnall/Documents/xilinx projects/test/Baugh_Wooley_multiplier_4bit_test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Baugh_Wooley_multiplier_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Baugh_Wooley_multiplier_4bit_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;

	// Outputs
	wire [7:0] AB;

	// Instantiate the Unit Under Test (UUT)
	Baugh_Wooley_multiplier_4bit uut (
		.A(A), 
		.B(B), 
		.AB(AB)
	);
 
	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;

		// Wait 100 ns for global reset to finish
		#10;
		#1 $monitor( "%d ns: a * b = %d * %d = AB = %d",
                                             $time, $signed(A), $signed(B), $signed(AB));
        
		// Add stimulus here
		A = 3;  B = 7; #1;
		A = -2; B = 8; #1;
		A = -3;  B = 5; #1;
		A = -3; B = -7; #1;
		A = -7; B = 8; #1;
		A = 0;  B = -1;  #1;
		A = -7;  B = 7;  #1;
		$finish;        
		// Add stimulus here

	end
      
endmodule

