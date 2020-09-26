module mux(y, a, b, sel);
output y;
input a, b, sel;
reg y;
always @(a or b or sel)
  if (sel) y = b;
  else y = a;
endmodule
