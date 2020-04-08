`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:34:04 04/08/2020
// Design Name:   Mux_2x1_1bit
// Module Name:   C:/Users/pravnall/Documents/xilinx projects/test/Mux_2x1_test.v
// Project Name:  test
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux_2x1_1bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux_2x1_test;

	// Inputs
	reg I1;
	reg I2;
	reg sel;

	// Outputs
	wire O;

	// Instantiate the Unit Under Test (UUT)
	Mux_2x1 uut (
		.I0(I1), 
		.I1(I2), 
		.sel(sel), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		I1 = 0;
		I2 = 0;

		// Wait 100 ns for global reset to finish
		#10;
      #1 $monitor( "%d ns: Input1 : Input 2: Select | %b:%b:%b == Output:%b",
                                             $time, I1, I2, sel, O);
		// Add stimulus here
		I1 = 0; I2 = 0; sel = 0; #1;
		I1 = 0; I2 = 0; sel = 1; #1;
		I1 = 0; I2 = 1; sel = 0; #1;
		I1 = 0; I2 = 1; sel = 1; #1;
		I1 = 1; I2 = 0; sel = 0; #1;
		I1 = 1; I2 = 0; sel = 1; #1;
		I1 = 1; I2 = 1; sel = 0; #1;
		I1 = 1; I2 = 1; sel = 1; #1;
		$finish;
		
	end
      
endmodule

