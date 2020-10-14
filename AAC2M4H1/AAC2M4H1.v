module ALU (

input [2:0] Op_code,

input [31:0] A, B,

output reg [31:0] Y);

always @(Op_code or A or B)

begin

case(Op_code)

0 : Y <= A;

1 : Y <= A+B;

2 : Y <= A-B;

3 : Y <= A&B;

4 : Y <= A|B;

5 : Y <= A+1;

6 : Y <= A-1;

7 : Y <=B;

endcase

end

endmodule
