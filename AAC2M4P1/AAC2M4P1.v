module LS161a(
    input [3:0] D,        // Parallel Input
    input CLK,            // Clock
    input CLR_n,          // Active Low Asynchronous Reset
    input LOAD_n,         // Enable Parallel Input
    input ENP,            // Count Enable Parallel
    input ENT,            // Count Enable Trickle
    output [3:0]Q,        // Parallel Output    
    output RCO            // Ripple Carry Output (Terminal Count)
); 
reg [3:0]temp;

always @(posedge CLK)
begin
    if (CLR_n==0)
        temp<=0000;
    else if (CLR_n==1)
    begin
        if (LOAD_n == 0)

            temp<=D;
        else if (ENP==1 & ENT==1)
            temp<=temp+1;
    end 
end

assign Q=temp;
assign RCO = temp[3]& temp[2]& temp[1]& temp[0]& ENT;
endmodule

