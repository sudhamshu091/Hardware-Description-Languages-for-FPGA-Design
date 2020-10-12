module add4 (              // module and name
input [3:0] Data1,Data2,   //Port declaration
input Cin,
output Cout,
output wire [3:0] Sum );

assign {Cout, Sum} = Data1 + Data2 + Cin;
endmodule
