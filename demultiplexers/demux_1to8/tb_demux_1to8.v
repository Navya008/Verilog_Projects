module tb_demux_1to8;
  reg d;
  reg [2:0]s;
  wire [7:0]y;
  demux_1to8 uut(d,s,y);
initial begin
  $monitor( "s=%b d=%b =>  y=%b ",s,d,y);
  d=0;
  s=3'b000; #10;
  s=3'b001; #10;
  s=3'b010; #10;
  s=3'b011; #10;
  s=3'b100; #10;
  s=3'b101; #10;
  s=3'b110; #10;
  s=3'b111; #10;
  d=1;
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
