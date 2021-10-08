`timescale 1ns / 1ps

module test;

	reg x;
	reg y;
	wire z;


	comparator uut (  //unit under test
	.x(x), 
	.y(y), 
	.z(z) 
	);

initial begin

x= 1; y = 1;

#20 x=0; y=0; //value will change after 20 nano second

#20 x=1; y=0; //value will change after 20 nano second

#20 x=0; y=1;

end

initial begin
$monitor ("x=%d, y=%d, z=%d", x,y,z); // monitor will show output everytime it detects a change in input
end


endmodule