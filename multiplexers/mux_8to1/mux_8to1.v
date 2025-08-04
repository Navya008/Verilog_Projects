module mux_8to1(input [2:0]s,input [7:0]I, output y);
  assign y= (s==3'b000) ? I[0]: (s==3'b001) ? I[1]: (s==3'b010) ? I[2]: (s==3'b011) ? I[3]: (s==3'b100) ? I[4]: (s==3'b101) ? I[5]: (s==3'b110) ? I[6]: I[7] ;
endmodule
