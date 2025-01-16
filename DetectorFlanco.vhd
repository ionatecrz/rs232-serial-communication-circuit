library ieee;
use ieee.std_logic_1164.all;

entity DetectorFlanco is
	port (
		e : in std_logic; -- entrada
		reset_n : in std_logic; -- reset
		clk : in std_logic; -- reloj
		s : out std_logic); -- salida
end DetectorFlanco;

architecture behavioral of DetectorFlanco is
type t_estados is (Esp1 , Pulso , Esp0);
signal estado_act , estado_sig : t_estados;

begin

VarEstado : process(clk, reset_n)

begin

if reset_n = '0' then 
	estado_act <= Esp1; 
elsif clk'event and clk = '1' then
	estado_act <= estado_sig;
end if;
end process VarEstado;

TransicionEstados : process(estado_act, e)
begin

estado_sig <= estado_act;
case estado_act is

	when Esp1 =>
		if e = '0' then
			estado_sig <= Pulso;
		end if;
		
	when Pulso =>
		if e = '0' then
			estado_sig <= Esp0;
		elsif e = '1' then
			estado_sig <= Esp1;
		end if;
		
	when Esp0 =>
		if e = '1' then
			estado_sig <= Esp1;
		end if;
	
	when others =>
	estado_sig <= Esp1;

end case;
end process TransicionEstados;
Salidas: process(estado_act)
begin
	s<='0';
	case estado_act is
		when Pulso =>
			s<='1';
		when others=>
		null;
end case;
end process Salidas;
end behavioral;
