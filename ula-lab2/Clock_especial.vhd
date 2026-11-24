library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity clock_div is
    Port ( 
        clk_in    : in  STD_LOGIC; -- Clock 50MHz
        tick_out  : out STD_LOGIC  -- Pulso lento
    );
end clock_div;

architecture Behavioral of clock_div is
    -- 50.000.000 ciclos = 1 segundo.
    -- Vamos contar até 12.500.000 para ter ~4 ticks por segundo (ritmo bom)
    constant MAX_COUNT : integer := 12500000; 
    signal contador    : integer range 0 to MAX_COUNT := 0;
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if contador = MAX_COUNT then
                contador <= 0;
                tick_out <= '1'; -- Gera um pulso de 1 ciclo
            else
                contador <= contador + 1;
                tick_out <= '0';
            end if;
        end if;
    end process;
end Behavioral;