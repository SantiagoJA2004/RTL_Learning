module and_gate_tb;

reg A;
reg B;

wire out1;

// (uut) Unit Under Test
and_gate uut(   
    .a(A),
    .b(B),
    .y(out1)
);

//Aquí empieza la simulación.
initial begin
    $dumpfile("and_gate_tb.vcd"); //.vcd file which generates the waveform file for GTKWave.
    $dumpvars(0, and_gate_tb);
    A = 0; B = 0;
    #10 A = 0; B = 1;
    #10 A = 1; B = 0;
    #10 A = 1; B = 1;
    #10 $finish;

end

endmodule