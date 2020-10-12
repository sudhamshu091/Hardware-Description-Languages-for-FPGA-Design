/*//////////////////////////////////////////////////////////////////////////////
//                                                                            //
//               Application Assignment Problem 2 Module 3 Course 2           //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
//
// [Replace [items in brackets] with your content]
// @file AAC2M1P2.vhd
// @brief Application Assignment 2-007 Example code with errors to be found
// @version: 1.0 
// Date of current revision:  @date 2019-06-20  
// Target FPGA: [Intel Altera MAX10] 
// Tools used: [Quartus Prime 16.1 or Sigasi] for editing and/or synthesis 
//             [Modeltech ModelSIM 10.4a Student Edition] for simulation 
//             [Quartus Prime 16.1]  for place and route if applied
//             
//  Functional Description:  This file contains the Verilog which describes the 
//               FPGA implementation of a fixed/variable 4-bit mux. The inputs 
//               are a, a 4-bit vector, a fixed 4-bit vector, and c, a 6-bit
//               selector, with b, a 4-bit vector as the output.  

//  Hierarchy:  There is only one level in this simple design.
//  
//  Designed by:  @author [your name] 
//                [Organization]
//                [email] 
// 
//      Copyright (c) 2019 by Tim Scherr
//
// Redistribution, modification or use of this software in source or binary
// forms is permitted as long as the files maintain this copyright. Users are
// permitted to modify this and use it to learn about the field of HDl code.
// Tim Scherr and the University of Colorado are not liable for any misuse
// of this material.
//////////////////////////////////////////////////////////////////////////////
// 
*/
module find_errors (

input [0:3]a,

output [3:0]b,

input [5:0]c );

reg [3:0]bw;

wire [5:0]creg;

assign b = bw;

assign creg = c;

always@(creg)

begin

if (creg == 6'b111111)

bw <= a;

else

bw <= 4'b0101;

end

endmodule                                        // line 21   

    