library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity FIFO8x9 is 
  port(
    clk, rst : in std_logic;
    RdPtrClr, WrPtrClr: in std_logic;
    RdInc, WrInc: in std_logic;
    DataIn : in std_logic_vector(8 downto 0);
    DataOut : out std_logic_vector(8 downto 0);
    rden, wren : in std_logic);
end entity FIFO8x9;

architecture Arch_FIFO8x9 of FIFO8x9 is 
  type fifo_array is array(7 downto 0) of std_logic_vector(8 downto 0);
  signal fifo : fifo_array := (others => (others => '0'));
  signal wrptr, rdptr : unsigned(2 downto 0);
  signal en : std_logic_vector(7 downto 0);
  signal dmxout : std_logic_vector(8 downto 0);

begin

wrptr <= "000" when rising_edge(clk) and WrPtrClr ='1'
else
wrptr + 1 when rising_edge(clk) and WrInc = '1'
else
wrptr;

rdptr <= "000" when rising_edge(clk) and RdPtrClr = '1'
else
rdptr + 1 when rising_edge(clk) and RdInc = '1'
else
rdptr;

DataOut <= dmxout when rden = '1'
else
"ZZZZZZZZZ" when rden = '0';

fifo(to_integer(wrptr)) <= DataIn when rising_edge(clk) and wren = '1'
else
fifo(to_integer(wrptr));

dmxout <= fifo(to_integer(rdptr));

end architecture Arch_FIFO8x9;


 
