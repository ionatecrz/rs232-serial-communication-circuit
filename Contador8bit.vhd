library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Contador8bit is
    port(
        reset_n : in std_logic;
        clk : in std_logic;
        en_cnt8 : in std_logic;
        fin_cnt8: out std_logic);
end Contador8bit;

architecture behavioral of Contador8bit is
signal contador8 : unsigned(14 downto 0);
begin

    Cnt: process(reset_n, clk)
    begin
        if reset_n = '0' then
            contador8 <= (others => '0');
        elsif rising_edge(clk) then
				if en_cnt8 = '1' then
						if contador8=to_unsigned(20831,15) then
							contador8 <= (others => '0');
						else
							contador8 <= contador8 + 1;
						end if;
				else 
					contador8 <= (others => '0');
            end if;
        end if;
    end process;

fin_cnt8 <= '1' when contador8=to_unsigned(20831,15) and en_cnt8 = '1' else '0';

end behavioral;