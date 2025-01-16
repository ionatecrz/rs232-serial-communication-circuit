library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contador1bit is
    port(
        reset_n : in std_logic;
        clk : in std_logic;
        en_cnt1 : in std_logic;
        fin_cnt1: out std_logic);
end Contador1bit;

architecture behavioral of Contador1bit is
signal contador1 : unsigned(14 downto 0);
begin

    Cnt: process(reset_n, clk)
    begin
        if reset_n = '0' then
            contador1 <= (others => '0');
        elsif rising_edge(clk) then
            if en_cnt1 = '1' then
						if contador1=to_unsigned(2602,15) then
							contador1 <= (others => '0');
						else
							contador1 <= contador1 + 1;
						end if;
				else 
					contador1 <= (others => '0');
            end if;
        end if;
    end process;

fin_cnt1 <= '1' when contador1=to_unsigned(2602,15) and en_cnt1 = '1' else '0';
end behavioral;