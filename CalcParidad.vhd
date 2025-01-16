library ieee;
use ieee.std_logic_1164.all;

entity CalcParidad is
	port (
			clk : in std_logic;
			reset_n : in std_logic; 
			clear_paridad : in std_logic;
			enable_paridad : in std_logic;
			dato_serie : in std_logic; 
			paridad : out std_logic); 
end CalcParidad;
			
architecture behavioral of CalcParidad is

type t_estados is (Reposo,Par,Impar);
signal estado_sig, estado_act: t_estados;

begin

VarEstados: process(clk, reset_n,clear_paridad,enable_paridad)
begin
	if reset_n='0' or clear_paridad='1' then
		estado_act<=Reposo;
	elsif clk'event and clk='1' then
		estado_act<= estado_sig;
	end if;
end process VarEstados;

TransicionEstados: process(estado_act,dato_serie,enable_paridad)
begin
	estado_sig<=estado_act;
case estado_act is

when Reposo=> 
     if dato_serie='1' and enable_paridad='1' then
	     estado_sig<=Impar;
	  elsif dato_serie='0' and enable_paridad='1' then
	     estado_sig<=Par;
	  end if;
		  
when Par=>	
     if dato_serie='1' and enable_paridad='1' then
	     estado_sig<=Impar;
	  end if;  

when Impar=>	
     if dato_serie='1' and enable_paridad='1' then
	     estado_sig<=Par;
	  end if;		
		
when others => 
     estado_sig<= Reposo;
	end case;
end process;

Salidas: process(estado_act)
begin
paridad<='0';
	case estado_act is
	when Reposo=> null;
	when Impar=> paridad<='0';
	when Par=> paridad<='1';
	when others => null;
	end case;
end process Salidas;
end behavioral;