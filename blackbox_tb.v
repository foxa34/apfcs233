module blackbox_test;

    reg  q, i, f;

    wire u;  

    blackbox b1(u, q, i, f);

    initial begin

        $dumpfile("blackbox.vcd");
        $dumpvars(0, blackbox_test);

        q = 0; i = 0; f = 0; #10;
        q = 0; i = 0; f = 1; #10;
        q = 0; i = 1; f = 0; #10;
        q = 0; i = 1; f = 1; #10;
        q = 1; i = 0; f = 0; #10;
        q = 1; i = 0; f = 1; #10;
        q = 1; i = 1; f = 0; #10;
        q = 1; i = 1; f = 1; #10;

        $display("test complete");

        $finish;

    end
endmodule
