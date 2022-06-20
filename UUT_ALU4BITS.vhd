-- Engineer: Adrián Hernández
-- Create Date:    06/19/2022
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;

ENTITY UUT_ALU4BITS IS
END UUT_ALU4BITS;
 
ARCHITECTURE behavior OF UUT_ALU4BITS IS 
 

 
    COMPONENT ALU_4BITS
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         opcode : IN  std_logic_vector(2 downto 0);
         Cout : OUT  std_logic;
         Yout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := "1011";
   signal B : std_logic_vector(3 downto 0) := "1001";
   signal opcode : std_logic_vector(2 downto 0) := (OTHERS => '0');
 	--Outputs
   signal Cout : std_logic := '0';
   signal Resul : std_logic_vector(3 downto 0) := (OTHERS => '0');

 
BEGIN

   uut: ALU_4BITS PORT MAP (A,B,opcode,Cout,Resul);
          A <= "1100" after 80 ns;
			 B <= "1010" after 80 ns;
			 opcode <= opcode + '1' after 10 ns;
        

END ARCHITECTURE;
