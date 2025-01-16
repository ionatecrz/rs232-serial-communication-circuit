library ieee;
use ieee.std_logic_1164.all;

entity RegParSer is
	port (
			clk : in std_logic;
			reset_n : in std_logic; 
			clear : in std_logic;
			en_carga : in std_logic;
			en_desp : in std_logic; 
			e_p : in std_logic_vector(7 downto 0); 
			dato_serie : out std_logic); 
end RegParSer;
			
architecture behavioral of RegParSer is

signal registro : std_logic_vector(7 downto 0);

begin

Reg: process (clk, reset_n)

begin
	if reset_n = '0' then
		registro<=(others=>'0');
	elsif clk'event and clk = '1' then
		if clear='1' then
			registro<=(others =>'0');
		elsif en_carga = '1' then
			registro <= e_p;
		elsif en_desp= '1' then
				registro(6 downto 0) <= registro(7 downto 1);
				registro(7) <= '0';
			end if;
	end if;
end process Reg;
dato_serie <= registro(0);
end behavioral;