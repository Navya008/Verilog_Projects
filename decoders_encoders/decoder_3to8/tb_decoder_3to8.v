module tb_decoder_3to8;
  reg [2:0]d;
  wire [7:0]o;
  decoder_3to8 uut(d,o);
initial begin
  $monitor("d=%b  => o=%b",d,o);
  d=3'b000; #10;
  d=3'b001; #10;
  d=3'b010; #10;
  d=3'b011; #10;
  d=3'b100; #10;
  d=3'b101; #10;
  d=3'b110; #10;
  d=3'b111; #10;
  $finish;
end
endmodule
