module srflipflop (
    input S,      // Set input
    input R,      // Reset input
    input clk,    // Clock signal
    output reg Q, // Output
    output reg Qbar // Complement of output
);
    always @(posedge clk) begin
        case ({S, R})
            2'b00: Q <= Q;         // No change
            2'b01: Q <= 1'b0;      // Reset
            2'b10: Q <= 1'b1;      // Set
            2'b11: Q <= 1'bx;      // Invalid condition
        endcase
        Qbar <= ~Q;
    end
endmodule
