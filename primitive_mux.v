primitive mux(y, a, b, sel);
output y;
input a, b, sel;

table 
  1?0 :1;
  0?0 :0;
  ?11 :1;
  ?01 :0;
  11? :1;
  00? :0;
endtable
endmodule
