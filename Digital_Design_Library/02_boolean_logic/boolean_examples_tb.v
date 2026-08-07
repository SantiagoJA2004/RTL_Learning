module boolean_examples_tb;
    reg A;
    reg B;
    reg C;

    wire out1;
    wire out2;
    wire out3;
    wire out4;
    wire out5;

    //UUT (Unit Under Test)
    boolean_examples uut(
        .a(A),
        .b(B),
        .c(C),
        .y1(out1),
        .y2(out2),
        .y3(out3),
        .y4(out4),
        .y5(out5)
    );

//Test stimulus
initial begin
    $dumpfile("boolean_examples_tb.vcd"); //.vcd file which generates the waveform file for GTKWave.
    $dumpvars(0, boolean_examples_tb);
    A = 0; B = 0; C = 0;
    #10 A = 0; B = 1; C = 0;
    #10 A = 1; B = 0; C = 0;
    #10 A = 1; B = 1; C = 0;
    #10 A = 0; B = 0; C = 1;
    #10 A = 0; B = 1; C = 1;
    #10 A = 1; B = 0; C = 1;
    #10 A = 1; B = 1; C = 1;
    #10 $finish;

end 

//Simulation
// initial begin
//     $dumpfile("boolean_examples_tb.vcd"); 
//     $dumpvars(0, boolean_examples_tb);

//     // Bucle que cuenta de 0 a 7 (las 8 combinaciones)
//     for (i = 0; i < 8; i = i + 1) begin
//         {A, B, C} = i; // Asigna el valor binario de 'i' directamente a los 3 registros
//         #10;
//     end
    
//     #10 $finish;
// end

endmodule