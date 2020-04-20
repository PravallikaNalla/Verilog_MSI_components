`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:42:03 04/20/2020
// Design Name:   Adder_subtractor_4bit
// Module Name:   C:/Users/pravnall/Documents/xilinx projects/test/Adder_subtractor_4bit_test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder_subtractor_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Adder_subtractor_4bit_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg Mode;

	// Outputs
	wire [3:0] S_D;
	wire C_B_out;

	// Instantiate the Unit Under Test (UUT)
	Adder_subtractor_4bit uut (
		.A(A), 
		.B(B), 
		.Mode(Mode), 
		.S_D(S_D), 
		.C_B_out(C_B_out)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Mode = 0;

		// Wait 100 ns for global reset to finish
		#10;
 		
		#1 $monitor( "%d ns: a + b = %d + %d Mode: %b = cout sum = %b %d",
                                             $time, A, B, Mode, C_B_out, S_D);
        
		// Add stimulus here
		A = 3; B = 10;  Mode = 0; #1;
		A = 15; B = 15; Mode = 0; #1;
		A = 3; B = 9;  Mode = 1; #1;
		A = 13; B = 10; Mode = 1; #1;
		A = 15; B = 9; Mode = 1; #1;
		A = 0; B = 0; 	 Mode = 1; #1;
		A = 9; B = 8;   Mode = 1; #1;
		$finish;       


	end
      
endmodule

