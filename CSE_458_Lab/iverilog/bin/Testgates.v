`timescale 1ns/1ps
module testbench;
reg x;
reg y;

wire o;

gate uut (x,y,o); 
//unit under test
initial begin
x=1; y=0; //Starts at 0 second
#20 x=1; y=1; //Starts at 20 second
#20 x=0; y=0; //Starts at 40 second
#20 x=0; y=1; //Starts at 60 second
end

initial begin
//$monitor ("time=%3d, x=%d, y=%d, o=%d", $time, x, y,o);
$monitor ("time=%3d, x=%d, y=%d, o=%d", $time, x, y,o);
end

endmodule


