library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity two_way_switch is
    Port ( A : in  STD_LOGIC;      -- Switch 1
           B : in  STD_LOGIC;      -- Switch 2
           OP : out  STD_LOGIC     -- LED output
			);
end two_way_switch;

architecture data_flow of two_way_switch is
begin
OP <= A xor B;    -- XOR logic used for two way switch
end data_flow;