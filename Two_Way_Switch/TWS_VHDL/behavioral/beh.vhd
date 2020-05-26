Library IEEE;
use IEEE.std_logic_1164.all;

entity two_way_switch is

Port (     A : in  STD_LOGIC;      -- Switch 1
           B : in  STD_LOGIC;      -- Switch 2
           OP : out  STD_LOGIC     -- LED output
			);

end two_way_switch;

architecture behavioral of two_way_switch is

begin

process (A, B) --used for behavioral modelling

begin

If (A/=B) then --if either one of the switches is ON

OP <= ‘1’;     --LED will glow

else           --if both the switches are ON or OFF

OP <= ‘0’;     --LED will not glow

end if;

end process;

end behavioral;