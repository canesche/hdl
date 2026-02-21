module mux #(
    parameter BITS = 2
)(
    input  wire             sel,
    input  wire [BITS-1:0]  din_0,
    input  wire [BITS-1:0]  din_1,
    output wire [BITS-1:0]  mux_out
);

    assign mux_out = sel ? din_1 : din_0;

endmodule
