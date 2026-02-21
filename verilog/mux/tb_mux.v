`timescale 1ns/1ps

module mux_tb;

    // Parameter
    parameter BITS = 2;

    // Testbench signals (must be reg for inputs)
    reg                  sel;
    reg  [BITS-1:0]      din_0;
    reg  [BITS-1:0]      din_1;

    // Output from DUT must be wire
    wire [BITS-1:0]      mux_out;

    // Instantiate DUT
    mux #(
        .BITS(BITS)
    ) dut (
        .sel(sel),
        .din_0(din_0),
        .din_1(din_1),
        .mux_out(mux_out)
    );

    // Stimulus
    initial begin

        // Dump waveforms (for GTKWave)
        $dumpfile("mux_tb.vcd");
        $dumpvars(0, mux_tb);

        $display("Time | sel din_0 din_1 | mux_out");
        $display("--------------------------------");

        // Test case 1
        sel = 0; din_0 = 2'b00; din_1 = 2'b11;
        #10;
        $display("%4t |  %b    %b    %b   |   %b", $time, sel, din_0, din_1, mux_out);

        // Test case 2
        sel = 1;
        #10;
        $display("%4t |  %b    %b    %b   |   %b", $time, sel, din_0, din_1, mux_out);

        // Test case 3
        sel = 0; din_0 = 2'b10; din_1 = 2'b01;
        #10;
        $display("%4t |  %b    %b    %b   |   %b", $time, sel, din_0, din_1, mux_out);

        // Test case 4
        sel = 1;
        #10;
        $display("%4t |  %b    %b    %b   |   %b", $time, sel, din_0, din_1, mux_out);

        $finish;
    end

endmodule
