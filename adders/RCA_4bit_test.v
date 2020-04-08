`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:48:31 04/07/2020
// Design Name:   Ripple_carry_adder_RCA_4bit
// Module Name:   C:/Users/pravnall/Documents/xilinx projects/test/RCA_4bit_test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Ripple_carry_adder_RCA_4bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RCA_4bit_test;

	// Inputs
	reg [3:0] A;
	reg [3:0] B;
	reg C_in;

	// Outputs
	wire [3:0] S;
	wire C_out;

	// Instantiate the Unit Under Test (UUT)
	Ripple_carry_adder_RCA_4bit uut (
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
		
		#1 $monitor( "%d ns: a + b + cin = %d + %d + %b = cout sum = %b %d",
                                             $time, A, B, C_in, C_out, S );
        
		// Add stimulus here
		A = 3; B = 10; C_in = 1; #1;
		A = 12; B = 10; C_in = 1; #1;
		A = 3; B = 11; C_in = 0; #1;
		A = 13; B = 10; C_in = 1; #1;
		A = 15; B = 15; C_in = 1; #1;
		A = 0; B = 0; C_in = 0; #1;
		A = 8; B = 8; C_in = 1; #1;
		$finish;



	end
      
endmodule

