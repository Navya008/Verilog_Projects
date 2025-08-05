module decoder_2to4(input [1:0]d,output reg[3:0]o); // Note: This design does NOT include an 'enable' input
  always @(*) begin
o=4'b0000;
    
    o[d]=1'b1;
  end
endmodule
