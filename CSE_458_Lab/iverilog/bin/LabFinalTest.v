module tst;
	reg [2:0]  x;
	reg [2:0]  crux;

	wire result;


	comp uut(x,crux,result);
	initial
	begin	

		crux = 3'b011; //reg:17201012%7=3=011
		x = 3'b000;
		#10 x = 3'b001;
		#10 x = 3'b010;
		#10 x = 3'b011;
		#10 x = 3'b100;
		#10 x = 3'b101;
		#10 x = 3'b110;
		#10 x = 3'b111;


		
	end

	initial
	begin	
		$monitor("time = %3d, x=%d, y=%d, z=%d, crux=%d out=%d", $time, x[2], x[1], x[0], crux, result);
	end

endmodule