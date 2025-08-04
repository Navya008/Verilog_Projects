module tb_demux_1to4;
  reg d;
  reg [1:0]s;
  wire [3:0]y;
  demux_1to4 uut(d,s,y);
initial begin
  $monitor( "s1=%b s0=%b d=%b =>  y0=%b y1=%b y2=%b y3=%b",s[1],s[0],d,y[0],y[1],y[2],y[3]);
  d=0;
  s=2'b00; #10;
  s=2'b01; #10;
  s=2'b10; #10;
  s=2'b11; #10;
  d=1;
  s=2'b00; #10;
  s=2'b01; #10;
  s=2'b10; #10;
  s=2'b11; #10;
  $finish;
end
endmodule
