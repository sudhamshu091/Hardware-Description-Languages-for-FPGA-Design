library ieee;
use ieee.std_logic_1164.all;

entity FSM is
port (In1: in std_logic;
   RST: in std_logic; 
   CLK: in std_logic;
   Out1 : inout std_logic);
end FSM;

architecture FSM_arch of FSM is
signal State: std_logic_vector(1 downto 0);

begin Finite_state_machine : process(CLK, RST)
begin
	if (RST = '1') then 
		State <= "00";
		Out1 <= '0';
	end if;
	if (State = "10") then 
		Out1 <= '1';
	else 
		Out1 <= '0';
	end if;
	if (rising_edge(CLK)) then
		case State is
			when "00" =>	                        --A Condition
				if (In1 = '1') then
					State <= "01";
				else
					State <= "00";
				end if;
			when "01" =>	                         --B Condition
				if (In1 = '1') then
					State <= "01";
				else
					State <= "10";
				end if;
			when "10" =>	                         --C Condition
				if (In1 = '1') then
					State <= "00";
				else
					State <= "10";
				end if;
			when others =>	                         --D Condition
				State <= "00";
		end case;			
	end if;
end process;
end architecture;
