--------------------------------------------------------------------------------
--                                                                            --
--                     Full Adder(1-bit) Test Bench                           --
--                                                                            --
--------------------------------------------------------------------------------
--
--
-- @file AAC2M1H1_tb.vhd
-- @version: 1.0 
-- Date of current revision:  @date 2019-07-20  
-- Target FPGA: Intel Altera MAX10
-- Tools used: Quartus Prime 16.1 for editing and synthesis 
--              Modeltech ModelSim 10.4a Student Edition for simulation 
--             Quartus Prime 16.1  for place and route if applied 
--  Functional Description:  This file contains the VHDL which describes the 
--              test bench for an FPGA implementation of a 1-bit full adder.
--  Hierarchy:  This test bench uses the submitted AAC2M1P5.vhd component found
--              in the Work Library.
--              The FPGA is one entity.  The architecture is one
--              functional section, which compares all the possible
--              input bit vector combinations and checks to see if the
--              result is correct after a 10 ns delay.   

--	 TESTS 
--   I. Full adder test
--    compare all the possible input bit vector combinations and checks to see 
--    if the result is correct after a 10 ns delay.
--  
--  Designed by:  @author Sanju Prakash Kannioth 
--                University of Colorado at Boulder
--                sanju.kannioth@colorado.edu 
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
use ieee.std_logic_unsigned.all;                 
use ieee.numeric_std.all;
use ieee.std_logic_textio.all; 
use std.textio.all;
use work.all;

----------------------------------------------------------------------
-- Testbench entity declaration
----------------------------------------------------------------------
entity AAC2M1H1_tb is     
--  port( ); 
-- no external interface.....THIS IS THE TOP LEVEL
end AAC2M1H1_tb;

-------------------------------------------------------------------
-- Testbench architecture body
----------------------------------------------------------------------
architecture behavioral of AAC2M1H1_tb is
      
----------------------------------------------------------------------
--- constant declarations
----------------------------------------------------------------------
   constant delay:  TIME := 10.00 NS; -- defines the wait period.
   constant Points: integer := 10;   -- number of points this problem
                                    -- is worth
----------------------------------------------------------------------                                                                      
-- signal declarations 
----------------------------------------------------------------------
  signal a_tb, b_tb, cin_tb:  std_logic;  -- data inputs
  signal sum_tb, cout_tb:  std_logic;  -- data output
  signal carry_sum: std_logic_vector(1 downto 0); -- temporary variable
  
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

component FullAdd 
   port (                 
    A, B, Cin: in std_logic; 
	Sum, Cout: out std_logic        
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
-- 
DUT : FullAdd      -- Device under test instantiation
    port map( 
        -- Inputs
        A    => a_tb,
        B    => b_tb,
        Cin    => cin_tb,
         -- Outputs
        Sum    => sum_tb,
        Cout	=> cout_tb
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
CWrZLOKQ+LX+iuhnbxKlOIgVtdsKTdJusC7AZcCXRcoQG8XdAttbdYUrNQ85chN6
X1YHvKLIZNKgQPo4Y/EUhM+QrGMoPZzWVS/zr7Pkn3Ez1rmp4hpi+JEAsPsVVpJr
3PUGnxsk4I7wt56G/S2LmiTMaMG6xnLTXpGfbjjDug0=
`protect data_method = "aes128-cbc"
`protect encoding = (enctype = "base64", line_length = 64, bytes = 3403)

`protect DATA_BLOCK
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
cSCHSMfHtCJ+gSnbTpRxnw==
`protect END_PROTECTED
end behavioral; -- of AAC2M1H1_tb;