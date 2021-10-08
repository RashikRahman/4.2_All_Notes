module three(
    input x,y,z,
    
    output o
    );
 

assign o = (x & y & z ) | (~x & ~y & ~z ) ;
 
endmodule