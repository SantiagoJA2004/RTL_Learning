module not_gate_tb;

reg A;
wire out1;

not_gate uut(
    .a(A),
    .y(out1)
);

initial begin
    $dumpfile("not_gate_tb.vcd");
    $dumpvars(0, not_gate_tb);
    A = 0;
    #10 A = 1;
    #10 $finish;
end

endmodule