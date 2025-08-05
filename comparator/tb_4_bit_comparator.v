module tb_comparator_4bit;
  reg [3:0] a, b;
  wire lt, eq, gt;
  comparator_4bit uut (a,b,lt,eq,gt);

  initial begin
    $display(" a    | b    | a<b |a=b |a>b |");
    $monitor(" %b | %b | %b   | %b  |  %b |", a, b, lt, eq, gt);

    a = 4'b0001; b = 4'b0010; #10; // a < b
    a = 4'b1010; b = 4'b0011; #10; // a > b
    a = 4'b0110; b = 4'b0110; #10; // a == b
    a = 4'b1111; b = 4'b1110; #10; // a > b
    a = 4'b0000; b = 4'b0000; #10; // a == b

    $finish;
  end
endmodule
