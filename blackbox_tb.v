module blackbox_test;

    reg  i, h, o;

    wire j;  

    blackbox b1(j, i, h, o);

    initial begin

        $dumpfile("blackbox.vcd");
        $dumpvars(0, blackbox_test);

        i = 0; h = 0; o = 0; #10;
        i = 0; h = 0; o = 1; #10;
        i = 0; h = 1; o = 0; #10;
        i = 0; h = 1; o = 1; #10;
        i = 1; h = 0; o = 0; #10;
        i = 1; h = 0; o = 1; #10;
        i = 1; h = 1; o = 0; #10;
        i = 1; h = 1; o = 1; #10;

        $display("test complete");

        $finish;

    end
endmodule
