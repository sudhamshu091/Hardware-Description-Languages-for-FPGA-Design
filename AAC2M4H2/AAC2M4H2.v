module FIFO8x9(

input clk, rst,

input RdPtrClr, WrPtrClr,

input RdInc, WrInc,

input [8:0] DataIn,

output [8:0] DataOut,

input rden, wren

);

//signal declarations

reg [8:0] fifo_array[255:0];

reg [7:0] wrptr, rdptr;

wire [7:0] wr_cnt, rd_cnt;

reg[8:0]mem1;

always@(posedge clk)

begin

if(rst)

mem1 <=9'b000000000;

if(RdPtrClr)

rdptr <=0;

if(WrPtrClr)

wrptr<=0;

if(wren)

begin

fifo_array[wrptr] <=DataIn;

wrptr=wrptr+WrInc;

//wr_cnt=wr_cnt +1;

end

if(rden)

begin

mem1 <=fifo_array[rdptr];

rdptr <=rdptr +RdInc;

//rd_cnt=rd_cnt +1;

end

else

mem1 <=9'bzzzzzzzzz;

end

assign wr_cnt= wrptr;

assign rd_cnt= rdptr;

endmodule
