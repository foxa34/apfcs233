module blackbox(j, i, h, o);
    output j;
    input  i, h, o;
    wire   w06, w10, w19, w27, w29, w30, w37, w40, w42, w43, w45, w53, w59, w60, w72, w83, w90, w91, w99;
    and a47(j, w30, w72);
    or  o18(w30, w27, w06);
    not n64(w06, w27);
    or  o32(w72, w19, w53);
    and a26(w53, w29, w90);
    not n3(w29, w90);
    and a7(w27, i, w59);
    or  o68(w59, w45, w43);
    not n13(w45, o);
    and a67(w43, h, w60);
    not n51(w60, h);
    and a75(w90, o, w83);
    or  o98(w83, w37, w40);
    not n74(w37, i);
    and a21(w40, w10, h);
    not n96(w10, h);
    and a16(w19, w91, w99);
    not n46(w91, o);
    or  o58(w99, w42, h);
    not n56(w42, i);
endmodule // blackbox
