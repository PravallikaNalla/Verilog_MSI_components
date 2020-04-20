`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:38:50 04/14/2020
// Design Name:   Brauns_array_mutliplier_4bit
// Module Name:   C:/Users/pravnall/Documents/xilinx projects/test/Brauns_array_multiplier_4bit_test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Brauns_array_mutliplier_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Brauns_array_multiplier_4bit_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
 
	// Outputs
	wire [7:0] AB;

	// Instantiate the Unit Under Test (UUT)
	Brauns_array_mutliplier_4bit uut (
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
                                             $time, A, B, AB);
        
		// Add stimulus here
		A = 3;  B = 10; #1;
		A = 12; B = 10; #1;
		A = 3;  B = 11; #1;
		A = 13; B = 10; #1;
		A = 15; B = 15; #1;
		A = 0;  B = 0;  #1;
		A = 8;  B = 8;  #1;
		$finish;

	end
      
endmodule

