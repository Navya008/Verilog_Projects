module tb_mux_4to1;
  reg [1:0]s;
  reg [3:0]I;
  wire y;
  
  mux_4to1 uut(s,I, y);
  
initial begin
  $monitor( "s=%b |  I=%b => y=%b",s,I,y);
  s=2'b00;I=4'b0001; #10;
  s=2'b01;I=4'b0010; #10;
  s=2'b10;I=4'b0100; #10;
  s=2'b11;I=4'b1000; #10;
  
  s=2'b00;I=4'b0101; #10;
  s=2'b01;I=4'b0101; #10;
  s=2'b10;I=4'b0110; #10;
  s=2'b11;I=4'b0110; #10;
  
  $finish;
end
endmodule

