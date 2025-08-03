module tb_not_gate;
reg a ;
wire y;

not_gate uut (a, y);

initial begin
    $monitor("a=%b => y=%b", a, y);

    a = 0; #10;
    a = 1; #10;

    $finish;
end
initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_not_gate);
end

endmodule
