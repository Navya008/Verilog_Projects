module mux_2to1(input s,I0,I1, output y);
 assign y= (~s&I0) | (s&I1) ;
endmodule
