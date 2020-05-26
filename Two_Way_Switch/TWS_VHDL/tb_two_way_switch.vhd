LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY tb_two_way_switch IS  --defining the entity
END tb_two_way_switch;
ARCHITECTURE Behavioral OF tb_two_way_switch IS --defining the architecture
    COMPONENT two_way_switch --two way switch design
    PORT(
         A : IN  std_logic; --Switch 1
         B : IN  std_logic; --Switch 2
         OP : OUT  std_logic --LED Output
        );
    END COMPONENT;
    
   signal A : std_logic := '0'; --Stimulus signal for switch 1
   signal B : std_logic := '0'; --Stimulus signal for switch 2
   signal OP : std_logic;       --Output signal
BEGIN
 uut: two_way_switch PORT MAP (  --defining unit under test i.e two way switch
          A => A,
          B => B,
          OP => OP
        );
   stim_proc: process --begining stimulation process
   begin  
     
   A <= '0';             --Test condition 1
   B <= '0';

      wait for 50 ns; 
   A <= '0';             --Test condition 2
   B <= '1';

      wait for 50 ns; 
   A <= '1';             --Test condition 3
   B <= '0';

      wait for 50 ns; 
   A <= '1';             --Test condition 4
   B <= '1';

      wait for 50 ns;
		wait;
	end process;

END;
