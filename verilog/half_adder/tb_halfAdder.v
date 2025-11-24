`timescale 1ns/1ps

module halfAdder_tb;

    reg A;
    reg B;
    wire Cout;
    wire S;

    // Instantiate the DUT (Device Under Test)
    halfAdder dut (
        .A(A),
        .B(B),
        .Cout(Cout),
        .S(S)
    );

    initial begin
        $display("Time | A B | Cout S");
        $display("---------------------");

        // Test all combinations
        A = 0; B = 0; #10;
        $display("%4t | %b %b |   %b   %b", $time, A, B, Cout, S);

        A = 0; B = 1; #10;
        $display("%4t | %b %b |   %b   %b", $time, A, B, Cout, S);

        A = 1; B = 0; #10;
        $display("%4t | %b %b |   %b   %b", $time, A, B, Cout, S);

        A = 1; B = 1; #10;
        $display("%4t | %b %b |   %b   %b", $time, A, B, Cout, S);

        $finish;
    end

endmodule