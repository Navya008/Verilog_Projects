module tb_mux_8to1;
  reg [2:0]s;
  reg [7:0]I;
  wire y;
  
  mux_8to1 uut(s,I, y);
  
initial begin
  $monitor( "s=%b |  I=%b => y=%b",s,I,y);
  I=8'b01010101;
  s=3'b000; #10;
  s=3'b001; #10;
  s=3'b010; #10;
  s=3'b011; #10; 
  s=3'b100; #10;
  s=3'b101; #10;
  s=3'b110; #10;
  s=3'b111; #10;
  
  $finish;
end
endmodule

