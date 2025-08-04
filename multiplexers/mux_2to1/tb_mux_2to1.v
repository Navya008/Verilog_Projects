module tb_mux_2to1;
  reg s,I0,I1;
  wire y;
  
  mux_2to1 uut(s, I0, I1, y);
  
initial begin
  $monitor( "s=%b |  I0=%b, I1=%b => y=%b",s,I0,I1,y);
  s=0;I0=0;I1=0; #10;
  s=0;I0=0;I1=1; #10;
  s=0;I0=1;I1=0; #10;
  s=0;I0=1;I1=1; #10;
  
  
   s=1;I0=0;I1=0; #10;
   s=1;I0=0;I1=1; #10;
   s=1;I0=1;I1=0; #10;
   s=1;I0=1;I1=1; #10;
  $finish;
end
endmodule
