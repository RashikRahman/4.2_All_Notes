
module addsub (a, b, addnsub, result);

        input[7:0]  a;
        input[7:0]  b;
        input       addnsub;
        output[8:0] result;

        reg[8:0]    result;

        always @(a or b or addnsub)
        begin
            if (a>b)
              result = 8'b00000010;
            else if(b>a)
              result = 8'b00000001;
	    	else 
			  result = 8'b00000000;
        end
endmodule