library ieee;
use ieee.std_logic_1164.all;

entity Pract1 is
	port (
			clk : in std_logic;
			reset_n : in std_logic; 
			KEY3 : in std_logic; 
			e_p : in std_logic_vector(7 downto 0); 
			salida_serie : out std_logic); 
end Pract1;
			
architecture behavioral of Pract1 is

signal en_cnt1, en_cnt8,dato_serie,fin_cnt1,fin_cnt8,enable_paridad,paridad,clear_paridad,en_carga,en_desp,clear: std_logic;
signal sel: std_logic_vector(1 downto 0);


begin

i1: entity work.RegParSer
port map(
			clk=>clk,
			reset_n=>reset_n,
			en_desp=>en_desp,
			en_carga=>en_carga,
			clear=>clear,
			e_p=>e_p,
			dato_serie=>dato_serie);
			
i2: entity work.CalcParidad
port map(
			clk=>clk,
			reset_n=>reset_n,
			enable_paridad=>enable_paridad,
			dato_serie=>dato_serie,
			clear_paridad=>clear_paridad,
			paridad=>paridad);
			
i3: entity work.multiplexor
port map(
			paridad=>paridad,
			dato_serie=>dato_serie,
			sel=>sel,
			salida_serie=>salida_serie);
			
i4: entity work.Contador8bit
port map(
			clk=>clk,
			reset_n=>reset_n,
			en_cnt8=>en_cnt8,
			fin_cnt8=>fin_cnt8);
			
i5: entity work.Contador1Bit
port map(
			clk=>clk,
			reset_n=>reset_n,
			en_cnt1=>en_cnt1,
			fin_cnt1=>fin_cnt1);
			
UnidadControl: entity work.UnidadControl
port map(
			clk=>clk,
			reset_n=>reset_n,
			fin_cnt1=>fin_cnt1,
			fin_cnt8=>fin_cnt8,
			en_cnt1=>en_cnt1,
			KEY3=>KEY3,
			en_cnt8=>en_cnt8,
			sel=>sel,
			enable_paridad=>enable_paridad,
			clear_paridad=>clear_paridad,
			en_desp=>en_desp,
			en_carga=>en_carga,
			clear=>clear);
end behavioral;