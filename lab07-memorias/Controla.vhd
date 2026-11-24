library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PISO_Controller is
    port(
        clk_rapido  : in  std_logic;   -- clock rápido (ex: 100 Hz)
        pulso_load  : in  std_logic;   -- 1 pulso por byte (gerado pelo clock lento)
        LS          : out std_logic    -- 1 = load, 0 = shift
    );
end entity;

architecture simple of PISO_Controller is
    signal counter : unsigned(2 downto 0) := (others => '0');  -- conta 0 a 7
    signal load_reg : std_logic := '1';
begin

    process(clk_rapido)
    begin
        if rising_edge(clk_rapido) then
            
            -- Se chegou o pulso de LOAD
            if pulso_load = '1' then
                counter  <= (others => '0'); -- Reinicia a contagem
                load_reg <= '1';             -- LOAD ativado por 1 ciclo

            else

                -- Após o LOAD, começam os 7 shifts
                if counter < 7 then
                    counter  <= counter + 1;
                    load_reg <= '0';         -- SHIFT nos ciclos 1..7
                else
                    load_reg <= '0';         -- Espera pelo próximo LOAD
                end if;

            end if;
        end if;
    end process;

    -- saída L/S
    LS <= load_reg;

end architecture;