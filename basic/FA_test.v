`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:21:37 04/07/2020
// Design Name:   Full_adder
// Module Name:   C:/Users/pravnall/Documents/xilinx projects/test/FA_test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Full_adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module FA_test;

	// Inputs
	reg A;
	reg B;
	reg C_in;

	// Outputs
	wire S;
	wire C_out;

	// Instantiate the Unit Under Test (UUT)
	Full_adder uut (
		.A(A), 
		.B(B), 
		.C_in(C_in), 
		.S(S), 
		.C_out(C_out)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		C_in = 0;

		// Wait 100 ns for global reset to finish
		#10;
		
		#1 $monitor( "%d ns: a + b + cin = %b + %b + %b = cout sum = %b %b",
                                             $time, A, B, C_in, C_out, S );
        
		// Add stimulus here
		A = 0; B = 0; C_in = 0; #1;
		A = 0; B = 0; C_in = 1; #1;
		A = 0; B = 1; C_in = 0; #1;
		A = 0; B = 1; C_in = 1; #1;
		A = 1; B = 0; C_in = 0; #1;
		A = 1; B = 0; C_in = 1; #1;
		A = 1; B = 1; C_in = 0; #1;
		A = 1; B = 1; C_in = 1; #1;
		$finish;


		
	end
      
endmodule

