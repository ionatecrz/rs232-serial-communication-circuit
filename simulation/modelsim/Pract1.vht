library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;      
use ieee.numeric_std.all;               

entity Pract1_vhd_tst is
end Pract1_vhd_tst;

architecture Pract1_vhd_tst_arc of Pract1_vhd_tst is
signal clk : std_logic := '0';
signal reset_n : std_logic;
signal KEY3 : std_logic;
signal paridad : std_logic;
signal e_p : std_logic_vector(7 downto 0);
signal salida_serie : std_logic;


component Pract1 

	port (
		clk : in std_logic;
		reset_n : in std_logic;
		KEY3 : in std_logic;
		e_p : in std_logic_vector(7 downto 0);
		salida_serie : out std_logic
		);
end component;

begin
clk <= not clk after 10 ns;
	
	i1: Pract1
	port map (
		clk => clk,
		reset_n => reset_n,
		KEY3 => KEY3,
		e_p => e_p,
		salida_serie => salida_serie);


	always : process
	 begin
		reset_n <= '0';
		KEY3 <= '1';
		e_p <= (others => '0');
		paridad <= '0';
		
		wait for 105 ns;  
		
		reset_n <= '1';
		
		wait for 100 ns;


		for i in 0 to 255 loop  --Bucle de las 256 combinaciones al ser 8 bits
		
			e_p <= std_logic_vector(to_unsigned(i,8));   
			
			wait for 20831 ns;  -- Se carga la entrada en paralelo
			
			paridad <= '0';
			KEY3 <= '0';
			
			wait for 100 ns;
			
			KEY3 <= '1';
			
			wait for 26 us;
			
			assert salida_serie ='0'
				report "Ha habido un fallo en el bit de start"
				severity failure; 
			
			for j in 0 to 7 loop   -- Bucle de las 8 salidas en serie del dato de entrada
				wait for 52 us;
				paridad <= paridad xor e_p(j);
				assert salida_serie = e_p(j)  -- Compruebo que la carga va siendo correcta
					report "Error de registro"
					severity failure;
			end loop;	
			
			wait for 52 us;
			
			paridad <= paridad xor salida_serie;
		
			wait for 20 ns;  -- Espero 1 ciclo de reloj 50 MHZ
			
			assert  paridad = '1'
				report "Error de paridad"
				severity failure;

			wait for  52 us;
			assert salida_serie='1'
				report "Error en el bit de stop"
				severity failure;
			
		end loop;

		assert false    -- Forzar simulación y no entre en bucle
			report "Fin de la simulacion"
			severity failure;



	end process always;
end Pract1_vhd_tst_arc;