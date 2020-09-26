module comparator4
  (A, B, Y);             // Verilog 1995 Syntax
  input[3:0] A, B, output Y;
  
  assign Y = &((A~^B));
endmodule
