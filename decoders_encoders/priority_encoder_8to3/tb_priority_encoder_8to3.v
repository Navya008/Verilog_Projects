module tb_priority_encoder_8to3;
  reg [7:0]d;
  wire [2:0]o;
  priority_encoder_8to3 uut(d,o);
initial begin
  $monitor("d=%b  => o=%b",d,o);
  d=8'b00000001; #10;
  d=8'b00000010; #10;
  d=8'b00000101; #10;
  d=8'b00001011; #10;
  d=8'b00010100; #10;
  d=8'b00100110; #10;
  d=8'b01000101; #10;
  d=8'b10000010; #10;
  $finish;
end
endmodule
