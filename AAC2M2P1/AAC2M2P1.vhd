LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;

entity AAC2M2P1 is port (                 	
   CP: 	in std_logic; 	-- clock
   SR:  in std_logic;  -- Active low, synchronous reset
   P:    in std_logic_vector(3 downto 0);  -- Parallel input
   PE:   in std_logic;  -- Parallel Enable (Load)
   CEP: in std_logic;  -- Count enable parallel input
   CET:  in std_logic; -- Count enable trickle input
   Q:   out std_logic_vector(3 downto 0);            			
    TC:  out std_logic  -- Terminal Count
);            		
end AAC2M2P1;

architecture  arch_AAC2M2P1 of AAC2M2P1 is 

signal count : std_logic_vector(3 downto 0);
begin

process (CP,CET,CEP)

begin
if(CP'event and CP='1') then

if(SR='0') then 

count<=(others=>'0');

elsif(PE='0') then 

count<=p;

elsif(CEP='1' and CET='1') then
 
count<=count+1;

end if;

end if;

end process;

Q <=count;
TC <=(count(3) and count(2) and count(1) and count(0)) and CET ;

end arch_AAC2M2P1;