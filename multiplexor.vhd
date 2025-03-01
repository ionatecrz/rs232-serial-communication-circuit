library ieee;
use ieee.std_logic_1164.all;

entity multiplexor is
	port (
			paridad : in std_logic;
			dato_serie : in std_logic; 
			sel: in std_logic_vector(1 downto 0);
			salida_serie : out std_logic); 
end multiplexor;
			
architecture behavioral of multiplexor is
begin

with sel select
salida_serie<='0' when "00",
				  '1' when "01",
				  paridad when "10",
				  dato_serie when "11",
				  '1' when others;
end behavioral;