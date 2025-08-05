module tb_decoder_2to4;
  reg [1:0]d;
  wire [3:0]o;
  decoder_2to4 uut(d,o);
initial begin
  $monitor("d=%b  => o=%b",d,o);
  d=2'b00; #10;
  d=2'b01; #10;
  d=2'b10; #10;
  d=2'b11; #10;
  $finish;
end
endmodule
