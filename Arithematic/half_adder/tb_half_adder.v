module tb_half_adder;
reg a,b;
wire sum,carry;
  
half_adder uut(a,b,sum,carry);
  
initial begin
  $monitor("a=%b  b=%b  |  sum=%b  carry=%b",a,b,sum,carry);
    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;
  $finish;
end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, tb_half_adder);
end
endmodule
