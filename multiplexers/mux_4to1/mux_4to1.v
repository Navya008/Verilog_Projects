module mux_4to1(input [1:0]s,input [3:0]I, output y);
  assign y= (s==2'b00) ? I[0]: (s==2'b01) ? I[1]: (s==2'b10) ? I[2]: I[3] ;
endmodule
