module mux2tb;
	reg [7:0] a;
	reg [7:0] b;
	reg addnsub;
	wire [8:0] result;


	addsub uut(a,b,addnsub,result);
	initial
	begin	

		addnsub=1;
		
		a=8'b10111100;b=8'b10010000;
		#10a=8'b10001100;b=8'b11110000;
		#10 a=8'b10101100;b=8'b10101100;
		
	end

	initial
	begin	
		$monitor("time = %3d, in1=%d,in2=%d, out=%d", $time, a,b, result);
	end

endmodule