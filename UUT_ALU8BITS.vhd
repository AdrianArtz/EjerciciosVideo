-- Engineer: Adrián Hernández
-- Create Date:    16:52:42 06/19/2022
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY UUT_ALU8BITS IS
END UUT_ALU8BITS;
 
ARCHITECTURE behavior OF UUT_ALU8BITS IS 
 
    COMPONENT ALU_8BITS IS
    PORT(
         a_i : IN  std_logic_vector(7 downto 0);
         b_i : IN  std_logic_vector(7 downto 0);
         opcode_i : IN  std_logic_vector(1 downto 0);
         d_o : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a_s 		 : std_logic_vector(7 downto 0);
   signal b_s 		 : std_logic_vector(7 downto 0); 
   signal opcode_s : std_logic_vector(1 downto 0); 
 	--Outputs
   signal d_s 		 : std_logic_vector(7 downto 0);

 
BEGIN
 
   uut: ALU_8BITS PORT MAP (a_s, b_s, opcode_s, d_s); 
          a_s <= "00010001", "01100101" after 5 ns;
          b_s <= "00100011", "00000010" after 5 ns, "00111001" after 20 ns;
          opcode_s <= "00", "01" after 5 ns;
     

END ARCHITECTURE;
