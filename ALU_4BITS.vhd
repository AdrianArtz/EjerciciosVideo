-- Engineer   : Adrián Hernández
-- Create Date: 06/19/20222 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

entity ALU_4BITS is
	port(
	
		A,B		: in std_logic_vector(3 downto 0);
		opcode	: in std_logic_vector(2 downto 0);
		
		Cout		: out std_logic;
		Yout		: out std_logic_vector(3 downto 0)
	);
end ALU_4BITS;

architecture Behavioral of ALU_4BITS is
	signal Y_tmp: std_logic_vector(4 downto 0) := (others => '0');
begin
	with opcode(2 downto 0) select
		Y_tmp <= ('0' & A) when "000",
					('0' & B) when "001",
					('0' & A) and ('0' & B) when "010",
					('0' & A) or ('0' & B) when "011",

					('0' & A) + B  when "100",
					('0' & A) + '1' when "101",
					('0' & A) - '1' when "110",
					('0' & A) - B when others;
	Cout <= Y_tmp(4);	
	Yout <= Y_tmp(3 downto 0);
end Behavioral;

