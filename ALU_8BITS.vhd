-- Engineer   : Adri?n Hern?ndez
-- Create Date: 06/19/20222 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

entity ALU_8BITS is
	port(
		a_i		:	in std_logic_vector(7 downto 0);
		b_i		:	in std_logic_vector(7 downto 0);
		opcode_i :	in std_logic_vector(1 downto 0);
		d_o		:	out std_logic_vector(7 downto 0)
	);
end ALU_8BITS;

architecture RTL of ALU_8BITS is
begin
	process(a_i,b_i,opcode_i)
	begin
		case opcode_i is
			when "00" =>
				d_o <= std_logic_vector(unsigned(a_i)+ unsigned(b_i));
			when "01" =>
				d_o <= std_logic_vector(unsigned(a_i) - unsigned(b_i));
			when "10" =>
				d_o <= a_i and b_i;
			when others =>
				d_o <= a_i or b_i;
		end case;
	end process;
end architecture;


