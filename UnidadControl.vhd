library ieee;
use ieee.std_logic_1164.all;

entity UnidadControl is
	port (
			clk : in std_logic;
			reset_n : in std_logic; 
			KEY3 : in std_logic;
			fin_cnt8 : in std_logic;
			en_cnt8 : out std_logic;
			fin_cnt1 : in std_logic;
			en_cnt1 : out std_logic;
			clear : out std_logic;
			enable_paridad : out std_logic;
			clear_paridad : out std_logic;
			sel : out std_logic_vector(1 downto 0);
			en_carga : out std_logic;
			en_desp : out std_logic); 
end UnidadControl;
			
architecture behavioral of UnidadControl is
signal boton: std_logic;
type t_estados is (Reposo,Start1,Start2,Start3,Mensaje,Mensaje2,E_Paridad,Fin);
signal estado_sig, estado_act: t_estados;

begin

i1:entity work.DetectorFlanco
port map(
		e=>KEY3,
		clk=>clk,
		reset_n=>reset_n,
		s=>boton);
		
VarEstados: process(clk, reset_n)
begin
	if reset_n='0' then
		estado_act<=Reposo;
	elsif boton ='1' then
		estado_act<=Start1;
	elsif clk'event and clk='1' then
		estado_act<= estado_sig;
	end if;
end process VarEstados;

TransicionEstados: process(estado_act,boton,fin_cnt8,fin_cnt1)
begin
	estado_sig<=estado_act;
case estado_act is

when Reposo=> 
     if boton='1' then
	     estado_sig<=Start1;
	  end if;
		  
when Start1=>
			estado_sig<=Start2;

when Start2=>
	     if fin_cnt1='1' then
			estado_sig<=Mensaje;
		  end if;

when Mensaje=>	
     if fin_cnt1='1' then
	     estado_sig<=Mensaje2;
	  end if;
	  
when Mensaje2=>
		if fin_cnt8='1' then
	     estado_sig<=E_Paridad;
		else
	     estado_sig<=Mensaje;
		end if;


when E_Paridad=>	
	     if fin_cnt1='1' then
	     estado_sig<=Fin;
		  end if;
when Fin=>	
	     if fin_cnt1='1' then
	     estado_sig<=Reposo;
		  end if;
	  
when others => 
     estado_sig<= Reposo;
	end case;
end process;

Salidas: process(estado_act)
begin
en_cnt1<='0';
en_cnt8<='0';
enable_paridad<='0';
en_carga<='0';
en_desp<='0';
clear_paridad<='0';
clear<='0';
sel<="01";
	case estado_act is
	when Reposo=> sel<="01";
	when Start1=> en_carga<='1';sel<="00";clear_paridad<='1';
	when Start2=> en_cnt1<='1';sel<="00";
	when Mensaje=> en_cnt1<='1';sel<="11";en_cnt8<='1';
	when Mensaje2=>en_desp<='1';sel<="11";enable_paridad<='1';en_cnt8<='1';
	when E_Paridad=> sel<="10";clear<='1';en_cnt1<='1';
	when Fin=> sel<="01";en_cnt1<='1';
	when others => null;
	end case;
end process Salidas;
end behavioral;

	 