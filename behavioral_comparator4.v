module comparator4
  (input [3:0] A, B, output Y);
  
  integer N;
  reg Y;
  
  always @(A or B)
    begin: compare
      Y = 0;
      if (A == B)
        Y = 1;
    end
endmodule
