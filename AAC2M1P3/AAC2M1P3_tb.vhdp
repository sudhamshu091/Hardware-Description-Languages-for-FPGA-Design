--------------------------------------------------------------------------------
--                                                                            --
--                     Mux(4-bit) Test Bench                                  --
--                                                                            --
--------------------------------------------------------------------------------
--
--
-- @file AAC2M1P3_tb.vhd
-- @version: 2.0 
-- Date of current revision:  @date 2019-07-21  
-- Target FPGA: Intel Altera 
-- Tools used: Quartus Prime 16.1 for editing and synthesis 
--              Modeltech ModelSIM 10.4a Student Edition for simulation 
--             Quartus Prime 16.1  for place and route if applied 
--  Functional Description:  This file contains the VHDL which describes the 
--              test bench for an FPGA implementation of a 4-bit mux
--  Hierarchy:  This test bench uses the submitted AAC2M1P3.vhd component found
--              in the Work Library.
--              The FPGA is one entity.  The architecture is one
--              functional section, which compares all the possible
--              input bit vector combinations and checks to see if the
--              result is correct after a 10 ns delay.   

--	 TESTS 
--   I. Mux test
--    compare all the possible input bit vector combinations and checks to see 
--    if the result is correct after a 10 ns delay.
--  
--  Designed by:  @author Tim Scherr 
--                @author Sanju Prakash Kannioth
--                University of Colorado at Boulder
--                timothy.scherr@colorado.edu 
-- 
--      Copyright (c) 2019, University of Colorado   All rights reserved.
------------------------------------------------------------------------------
-- 
--

----------------------------------------------------------------------
-- Libraries
----------------------------------------------------------------------

library ieee;                                
use ieee.std_logic_1164.all;                 
use ieee.numeric_std.all; 
use ieee.numeric_bit_unsigned.all;
use ieee.std_logic_textio.all; 
use std.textio.all;
use work.all;

----------------------------------------------------------------------
-- Testbench entity declaration
----------------------------------------------------------------------
entity AAC2M1P3_tb is 
--  port( ); 
-- no external interface.....THIS IS THE TOP LEVEL
end AAC2M1P3_tb;

-------------------------------------------------------------------
-- Testbench architecture body
----------------------------------------------------------------------
architecture behavioral of AAC2M1P3_tb is      
----------------------------------------------------------------------
--- constant declarations
----------------------------------------------------------------------
   constant delay:  TIME := 10.00 NS; -- defines the wait period.
   constant Points: integer := 10;   -- number of points this problem
                                    -- is worth
----------------------------------------------------------------------                                                                      
-- signal declarations 
----------------------------------------------------------------------
--  signal clock:  std_logic := '0';
  signal a_tb:  bit_vector(0 to 3);  -- data input
  signal c_tb:  bit_vector(5 downto 0);  -- data input
  signal b_tb:  std_logic_vector(3 downto 0);    -- data output  

  signal ValidCheck: std_logic_vector(15 downto 0);  
            -- unique to this problem, to check validity of submission
  type mem is array (integer range <>) of std_logic_vector(7 downto 0);
  signal ROM: mem(0 to 255);        

--------------------------------------------------
-- component declarations before instantiation 
--------------------------------------------------
---------------------------------------------------------------------
-- Component declarations
----------------------------------------------------------------------
-- Mux
component find_errors 
   port (                 
    a: in bit_vector(0 to 3);                   
    b: out std_logic_vector(3 downto 0);         
    c: in bit_vector(5 downto 0)
    );  
end component;

----------------------------------------------------------------------
--- Procedures
----------------------------------------------------------------------

  procedure Load_ROM(signal data_word : inout mem) is
     file ROMfile : text open read_mode is "vectorh.out";
     variable lbuf: line;
     variable i: integer :=0;
     variable fdata: std_logic_vector(7 downto 0);
 --
   begin
     while not(endfile(ROMfile))  loop
     -- read digital data from input file
     readline(ROMfile, lbuf);
     hread(lbuf, fdata);
     data_word(i) <= fdata;
     i := i + 1;
     end loop;
  end procedure; 

 procedure Write_ROM (signal data_word : inout mem) is
     file ROMfileOut : text open write_mode is "myvectorh.out";
     variable row: line;
     variable i : integer :=0;
     variable fdata: std_logic_vector (7 downto 0);
 --
   begin
     while (i<256) loop
     fdata := data_word(i);
     hwrite(row, fdata, left,4);
     writeline(RomfileOut, row);
     i := i + 1;
     end loop;
  end procedure;

----------------------------------------------------------------------
-- Top level output port assignments
----------------------------------------------------------------------

begin
 ----------------------------------------------------------------------
-- Component instances
----------------------------------------------------------------------
-- find_errors
Mux4 : find_errors
    port map( 
        -- Inputs
        a    => a_tb,
        c    => c_tb,
         -- Outputs
        b    => b_tb
        );  
----------------------------------------------------------------------
-- Test Stimulation
----------------------------------------------------------------------                                       
  `protect BEGIN_PROTECTED
`protect version = 1
`protect encrypt_agent = "ModelSim", encrypt_agent_info = "10.4a"
`protect key_keyowner = "Mentor Graphics Corporation" , key_keyname = "MGC-VERIF-SIM-RSA-1" , key_method = "rsa"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 128)
`protect KEY_BLOCK
NnUfaBelNBMQog4u+5H+wgPl/pWjdTH8frXn5J05gS+kxsBefE69murHzPiJuQyR
m+psFv4aM/561bapWJAwnGn9oHTMVz+UFE55haTJlIWAuxZ6dTtUNhcb3FlaeIVy
ZU/iuo5c2kor+QejVblRiOFqt/uOm74oTcgXxywKcxI=
`protect data_method = "aes128-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 3555)

`protect DATA_BLOCK
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
`protect END_PROTECTED             
end behavioral; -- of AAC2M1P3_tb;     
