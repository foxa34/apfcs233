module blackbox_test;

    reg  i, f;

    wire u, q;  

    blackbox(u, q, i, f);

    initial begin

        $dumpfile("bb.vcd");
        $dumpvars(0, blackbox_test);

        i = 0 f = 0; #10;
        i = 0 f = 1; #10;
        i = 1 f = 0; #10;
        i = 1 f = 1; #10;

        $display("test complete");

        $finish;

    end
endmodule
