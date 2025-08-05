module encoder_4to2(input [3:0]d,output reg[1:0]o);
  always @(*) begin
o=2'bxx;
    case(d)
      4'b0001:o=2'b00;
      4'b0010:o=2'b01;
      4'b0100:o=2'b10;
      4'b1000:o=2'b11;
    endcase
  end
endmodule
