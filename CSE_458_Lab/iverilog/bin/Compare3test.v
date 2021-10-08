// testbench for 3 bit compare
`timescale 1ns / 1ps
module stimulus;
	// Inputs
	reg x;
	reg y;
	reg z;
	// Outputs
	wire o;
	// Instantiate the Unit Under Test (UUT)
	three uut (
		.x(x), 
		.y(y), 
		.z(z),
		.o(o)
	);
 
	initial begin
		// Initialize Inputs
	x = 0;
	y = 0;
	z = 0;
 	
	#20 z =1;
	#20 y =1;
	#20 x =1;
	#20 z =0;
	#20 y =0;
	#20 z = 1;	  
	#40;
    end  
 
		initial begin
		 $monitor($time , " x=%d,y=%d,z=%d, o=%d  \n",x,y,z,o); // time will show the execution time
		 end
 
endmodule