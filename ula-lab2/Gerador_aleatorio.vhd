library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lfsr_generator is
    Port ( 
        clk   : in  STD_LOGIC;
        reset : in  STD_LOGIC;
        rnd   : out STD_LOGIC_VECTOR (1 downto 0) -- Gera 00, 01, 10 ou 11
    );
end lfsr_generator;

architecture Behavioral of lfsr_generator is
    signal lfsr_reg : std_logic_vector(3 downto 0) := "1011"; -- Semente inicial
    signal feedback : std_logic;
begin
    -- Lógica XOR para feedback (Polinômio x^4 + x^3 + 1)
    feedback <= lfsr_reg(3) xor lfsr_reg(2);

    process(clk, reset)
    begin
        if reset = '0' then -- Reset ativo baixo (padrão DE10)
            lfsr_reg <= "1011";
        elsif rising_edge(clk) then
            -- Desloca e insere o bit gerado
            lfsr_reg <= lfsr_reg(2 downto 0) & feedback;
        end if;
    end process;
    
    rnd <= lfsr_reg(1 downto 0); -- Saída
end Behavioral;