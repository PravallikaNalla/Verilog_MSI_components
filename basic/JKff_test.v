`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:12:37 05/01/2020
// Design Name:   JKff
// Module Name:   C:/Users/pravnall/Documents/xilinx projects/test/JKff_test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: JKff
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module JKff_test;

	// Inputs
	reg J;
	reg K;
	reg clk;
	reg sync_reset;

	// Outputs
	wire Q;
	wire Qnot;

	// Instantiate the Unit Under Test (UUT)
	JKff uut (
		.J(J), 
		.K(K), 
		.clk(clk), 
		.sync_reset(sync_reset), 
		.Q(Q), 
		.Qnot(Qnot)
	);
	
	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end
	
	initial begin
		// Initialize Inputs
		J = 1;
		K = 0;
		clk = 0;
		sync_reset = 1;

		// Wait 100 ns for global reset to finish
		#40;
		#1 $monitor( "%d ns: J|k %b|%b -- Q: %b",
                                             $time, J, K, Q);
      sync_reset = 0;
		// Add stimulus here
		#20; J=1; K=1;
		#20; J=0; K=1;
		#20; J=1; K=0;
		#20; J=0; K=0;
		#20; J=1; K=1;
		#20; J=0; K=0;

	end
      
endmodule

