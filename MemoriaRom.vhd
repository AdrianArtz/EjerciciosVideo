-- Engineer   : Adrián Hernández
-- Create Date: 06/19/20222 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MemoriaRom is
	port (
		salida : out std_logic_vector(1 downto 0);
		direccion: in std_logic_vector (1 downto 0));
end MemoriaRom;

architecture arq of MemoriaRom is
	type datos is array (0 to 3) of std_logic_vector(1 downto 0);
	constant rom : datos := (
						"11", "10", "00", "01"
						);
	begin
	salida <= rom(to_integer(unsigned(direccion)));
end arq;

