module decoder_3to8(input [2:0]d,output reg[7:0]o);// Note: This design does NOT include an 'enable' input
  always @(*) begin
o=8'b00000000;
    
    o[d]=1'b1;
  end
endmodule
