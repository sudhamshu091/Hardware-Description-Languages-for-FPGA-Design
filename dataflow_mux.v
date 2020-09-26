module mux(y, a, b, sel);
output y;
input a, b, sel;
assign y = sel ? a : b;
endmodule
