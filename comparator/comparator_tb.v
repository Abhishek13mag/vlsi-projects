
`timescale 1ns/1ps

module comparator_tb;

    reg  [3:0] A, B;
    wire A_gt_B, A_lt_B, A_eq_B;

    integer i, j;
    integer errors = 0;

    comparator dut (
        .A(A),
        .B(B),
        .A_gt_B(A_gt_B),
        .A_lt_B(A_lt_B),
        .A_eq_B(A_eq_B)
    );

    initial begin
        $dumpfile("comparator.vcd");
        $dumpvars(0, comparator_tb);

        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i;
                B = j;
                #10;

                if ((A_gt_B !== (A > B)) ||
                    (A_lt_B !== (A < B)) ||
                    (A_eq_B !== (A == B))) begin
                    $display("FAIL: A=%0d B=%0d", A, B);
                    errors = errors + 1;
                end
            end
        end

        if (errors == 0)
            $display("PASS: All 256 test cases passed!");
        else
            $display("FAIL: %0d errors found.", errors);

        $finish;
    end

endmodule
