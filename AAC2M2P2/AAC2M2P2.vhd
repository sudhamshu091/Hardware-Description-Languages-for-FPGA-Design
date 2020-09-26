library ieee;

use ieee.std_logic_1164.all;

use ieee.numeric_std.all;

use ieee.numeric_bit_unsigned.all;

USE IEEE.STD_LOGIC_UNSIGNED.ALL;

use ieee.std_logic_textio.all;

use std.textio.all;

use work.all; 

ENTITY RAM128_32 IS
	PORT
	(
		address	: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END RAM128_32;


ARCHITECTURE Behavioral of RAM128_32 is

type array_type is array(0 to 2**7) of std_logic_vector (31 downto 0);

signal array_reg: array_type;

begin

process(clock)

begin

if (rising_edge(clock)) then 

if wren = '1' then    -- write and read enable = 1

array_reg(to_integer(unsigned(address))) <= data;

q <= data;

elsif wren = '0' then  -- write and read enable = 0

q <= array_reg(to_integer(unsigned(address)));

end if;

end if;

q <= array_reg(to_integer(unsigned(address)));

end process;

end ARCHITECTURE;

