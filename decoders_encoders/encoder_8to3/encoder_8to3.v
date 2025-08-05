module encoder_8to3(input [7:0]d,output reg[2:0]o);
  always @(*) begin
o=3'bxxx;
    case(d)
      8'b00000001:o=3'b000;
      8'b00000010:o=3'b001;
      8'b00000100:o=3'b010;
      8'b00001000:o=3'b011;
      8'b00010000:o=3'b100;
      8'b00100000:o=3'b101;
      8'b01000000:o=3'b110;
      8'b10000000:o=3'b111;
    endcase
  end
endmodule
