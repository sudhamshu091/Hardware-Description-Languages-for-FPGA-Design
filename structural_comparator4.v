module comparator (
input[3:0] A,B,output Out);

wire n0, n1, n2, n3;
xnor xnor0(n0, a[0], b[0]);
xnor xnor1(n1, a[1], b[1]);
xnor xnor2(n2, a[2], b[2]);
xnor xnor3(n3, a[3], b[3]);
and and0( Out, n0, n1, n2, n3);
endmodule
