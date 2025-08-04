module tb_demux_1to2;
  reg d,s;
  wire [1:0]y;
  demux_1to2 uut(d,s,y);
initial begin
  $monitor( "s=%b d=%b =>  y0=%b y1=%b",s,d,y[0],y[1]);
  d=0;
  s=1'b0; #10;
  s=1'b1; #10;
  d=1;
  s=1'b0; #10;
  s=1'b1; #10;
  $finish;
end
endmodule
