`timescale 1ns / 1ps
module test;
	reg [4:1] x;
	wire [3:0] pcode;

	// Instantiate the Unit Under Test (UUT)
	logic_test uut (x, pcode);
 
	initial begin
		// Initialize Inputs
x = 4'b0000;     
 
	#20 x = 4'b0001;
	#20 x = 4'b0010;
	#20 x = 4'b0011;//Ignore LSB 1; consider only MSB bit
	#20 x = 4'b0100;
	#20 x = 4'b0101;  
	#20 x = 4'b0110;
	#20 x = 4'b0111; //Ignore LSB 1; consider only MSB bit
	#20 x = 4'b1000;
	#20 x = 4'b1001;//ignore LSB 1; consider only MSB bit
	#40 ;
 
	end  
 
		initial begin
		 $monitor("t=%3d x=%4b,pcode=%3b",$time,x,pcode );
		 end
 
endmodule