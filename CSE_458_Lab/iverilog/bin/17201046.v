module ans (x, crux, result);

        input[2:0]  x;
        input[2:0] crux;

        output result;
        reg result;


        always @(x or crux)
        begin
          if (x>crux)
              result = 1;
          else 
              result = 0;
        end
endmodule