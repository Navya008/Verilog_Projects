module tb_encoder_8to3;
  reg [7:0]d;
  wire [2:0]o;
  encoder_8to3 uut(d,o);
initial begin
  $monitor("d=%b  => o=%b",d,o);
  d=8'b00000001; #10;
  d=8'b00000010; #10;
  d=8'b00000100; #10;
  d=8'b00001000; #10;
  d=8'b00010000; #10;
  d=8'b00100000; #10;
  d=8'b01000000; #10;
  d=8'b10000000; #10;
  $finish;
end
endmodule
