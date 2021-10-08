module mux2tb;
wire out;
reg Select,in1,in2;

Mux2_1 uut(out,Select,in1,in2);
initial
begin	
     Select=0;in1=0;in2=0;
     #10 in1=1;in2=0;
     #10 in1=0;in2=1;
     #10 in1=1; in2=1;
     
     #10 Select=1;
     #10 in1=0;in2=0;
     #10 in1=1;in2=0;
     #10 in1=0;in2=1;
     #10 in1=1; in2=1;
     #10 $finish;
end

initial
begin	
     $monitor("time = %3d, Select=%d,in1=%d,in2=%d, out=%d", $time, Select,in1,in2, out);
end

endmodule