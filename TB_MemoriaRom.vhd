-- Engineer   : Adrián Hernández
-- Create Date: 06/19/20222 
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_MemoriaRom IS
END TB_MemoriaRom;

ARCHITECTURE behavior OF TB_MemoriaROM IS 

    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT MemoriaRom
    PORT(
         salida : OUT  std_logic_vector(1 downto 0);
         direccion : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;


   --Inputs
   signal direccion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(1 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 


BEGIN

	-- Instantiate the Unit Under Test (UUT)
   uut: MemoriaRom PORT MAP (
          salida => salida,
          direccion => direccion
        );

   -- Clock process definition


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		direccion <= "01";
		wait for 100 ns;
		direccion <= "00";
		wait for 100 ns;
		direccion <= "11";
		wait for 100 ns;
		direccion <= "10";
      wait;
   end process;

END;
