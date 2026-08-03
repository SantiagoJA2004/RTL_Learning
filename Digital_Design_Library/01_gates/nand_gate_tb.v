module nand_gate_tb;

reg A;
reg B;

wire out1; //wire just observes

// (uut) Unit Under Test
nand_gate uut(
    .a(A),
    .b(B),
    .y(out1)
);

//Aquí empieza la simulación.
initial begin
    $dumpfile("nand_gate_tb.vcd"); //.vcd file which generates the waveform file for GTKWave.
    $dumpvars(0, nand_gate_tb);
    A = 0; B = 0;
    #10 A = 0; B = 1;
    #10 A = 1; B = 0;
    #10 A = 1; B = 1;
    #10 $finish;

end
endmodule