module demux_1to2 (input d,s,output reg [1:0] y);
  always @(*) begin
    y[0]=0;y[1]=0;
    case(s)
      1'b0:y[0]=d;
      1'b1:y[1]=d;
    endcase
  end
endmodule
