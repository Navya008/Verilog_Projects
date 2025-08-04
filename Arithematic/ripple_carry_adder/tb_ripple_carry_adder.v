module tb_ripple_carry_adder;
  reg [3:0]a;
  reg [3:0]b;
  reg cin;
  wire [3:0]sum;
  wire cout;
  
ripple_carry_adder uut(a,b,cin,sum,cout);
  
initial begin
  $monitor("a=%b  b=%b cin=%b |  sum=%b  cout=%b",a,b,cin,sum,cout);
  a = 4'b0000; b = 4'b0000; cin=0; #10;
  a = 4'b0011; b = 4'b0101; cin=0; #10;
  a = 4'b1010; b = 4'b0101; cin=0; #10;
  a = 4'b1111; b = 4'b1111; cin=0; #10;
  a = 4'b1111; b = 4'b1111; cin=1; #10;
   
  $finish;
end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, tb_ripple_carry_adder);
end
endmodule
