module mux(y, a, b, sel);
output y;
input a, b, sel;
and g1(y1, a, nsel),
    g2(y2, b, sel);
or g3(y, y1, y2);
not g4(nsel, sel);
endmodule
