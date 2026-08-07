module boolean_examples(
    input wire a,
    input wire b,
    input wire c,
    
    output wire y1,
    output wire y2,
    output wire y3,
    output wire y4,
    output wire y5  
);
    assign y1 = a & b; // A AND B
    assign y2 = (a & b) | c; // (A AND B) OR C
    assign y3 = ~(a | b); // NOT(A OR B)
    assign y4 = (a ^ b) & c; // (A XOR B) AND C
    assign y5 = (~a & b) | (a & ~b); // (NOT A AND B) OR (A AND NOT B)  XOR gate

endmodule