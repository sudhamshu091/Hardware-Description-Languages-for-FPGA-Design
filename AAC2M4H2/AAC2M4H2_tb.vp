/*******************************************************************************
-*                                                                            **
**                              FIFO Test Bench                               **
**                                                                            **
********************************************************************************
**
** Replace [items in brackets] with your content
** @file AAC2M4H2_tb.v
** @version: 1.0 
** Date of current revision:  @date 2019*08*17  
** Target FPGA: [Intel Altera MAX10] 
** Tools used: Sigasi for editing and synthesis checking 
**             Modeltech ModelSIM 10.4a Student Edition for simulation 
**             
**  Functional Description:  This file contains the Verilog which describes the 
**              test bench for an FPGA implementation of a 8x9 FIFO.
**              The inputs are RdPtrClr, WrPtrClr, RdInc, WrInc, DataIn, rden, wren. 
**              
**              Outputs is DataOut(9-bits)  
**  Hierarchy:  This test bench uses the AAC2M4H2_tb.v component found
**              in the Work Library.
**             The YourFPGA component is instantiated. This is the component 
**             under test.  Other devices on the board are modeled as processes 
**             which run concurrently.    The other 
**             devices are listed in the following function sections:
**                [ I.   Clock * generates XX MHz clock 
**                 II.  Reset control
**                 III. Interrupt Control
**                 IV.  Address/Data Bus
**                      etc.         ]
**
**              The FPGA is one module.  The test bench module is one
**              functional section, which compares all the possible
**              input bit vector combinations and checks to see if the
**              result is correct after a 10 ns delay.   

**   TESTS 
**   I. FIFO test
**    compare all the possible input bit vector combinations and checks to see 
**    if the result is correct after a 10 ns delay.
**  
**  Designed by:  @author Sanju Prakash Kannioth
**                Univeristy of Colorado
**                sanju.kannioth@colorado.edu 
** 
**      Copyright (c) 2018, 2019 by Tim Scherr
**
** Redistribution, modification or use of this software in source or binary
** forms is permitted as long as the files maintain this copyright. Users are
** permitted to modify this and use it to learn about the field of HDl code.
** Tim Scherr and the University of Colorado are not liable for any misuse
** of this material.
******************************************************************************
** 
*/

`timescale 1 ns / 1 ps   // set timescale to nanoseconds, ps precision
/**********************************************************************
** Libraries
**********************************************************************/
                                                        
/**********************************************************************
** Testbench entity declaration
**********************************************************************/
module AAC2M4H2_tb;  
// no external interface.....THIS IS THE TOP LEVEL


/**********************************************************************
*** constant declarations
**********************************************************************/
   parameter delay = 10;  //ns  defines the wait period.
   parameter clk_period = 10; //ns defines half clock period

/**********************************************************************                                                                      
** signal declarations 
**********************************************************************/
  reg clk_tb = 0;    // clock if needed, from generator model
  reg rst_tb = 0;    // reset if needed  
  reg RdPtrClr_tb;  // active high read ptr clear stimulus
  reg WrPtrClr_tb;  // active high write ptr clear stimulus
  reg RdInc_tb;  // data input stimulus
  reg WrInc_tb;  // data input stimulus
  reg rden_tb;  // data input stimulus
  reg wren_tb;  // data input stimulus

  reg [8:0]DataIn_tb; // data input

  wire [8:0]DataOut_tb ; // data output response
  
  integer i=0, j=0, k=0, ErrorCount=0, score = 10;  // index variables for test
  integer FirstError = 0;
  
  reg [15:0] ValidCheck = 16'h0245; // unique to this problem, to check validity
                             // of submission 
  integer testresults, vector;    //32-bit multi-channel descriptor
  reg [7:0] address;
  reg [7:0] data;
  reg [7:0] rom [0:255] ;   //storage for the rom file, 255 x 8

/**********************************************************************
** Component instances
**********************************************************************/
// instantiate the device under test
FIFO8x9 DUT (     // Device under Test
        // Inputs
       .clk(clk_tb),
       .rst(rst_tb),
       .RdPtrClr(RdPtrClr_tb),
       .WrPtrClr(WrPtrClr_tb),
       .RdInc(RdInc_tb),
       .WrInc(WrInc_tb),
       .rden(rden_tb),
       .wren(wren_tb),
       .DataIn(DataIn_tb),
        // Outputs
       .DataOut(DataOut_tb)
        );
 `pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "Model Technology", encrypt_agent_info = "10.4a"
`pragma protect data_method = "aes128-cbc"
`pragma protect key_keyowner = "Mentor Graphics Corporation" , key_keyname = "MGC-VERIF-SIM-RSA-1" , key_method = "rsa"
`pragma protect encoding = (enctype = "base64", line_length = 64, bytes = 128), key_block
D/T28w1g+4jeqXDgZiZ8aR45O7P2m6rCUOnsbuMNQoX1R/WvCVXcuN6LbOqo1ak+
fODBWfPuCs+2qvNvKCi9wnqkZi1hVY/T9uWHmb9kgufMbdV1h0ZIXkpSx8Sliold
Ts4CQ4L1ZN07beaessPZjS7l5oEeOQEuYxmNaDIHj5Y=
`pragma protect encoding = (enctype = "base64", line_length = 64, bytes = 3744), data_block
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
`pragma protect end_protected
endmodule // AAC2M4H2_tb