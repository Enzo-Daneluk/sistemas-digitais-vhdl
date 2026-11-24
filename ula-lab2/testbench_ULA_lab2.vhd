library IEEE;
use IEEE.std_logic_1164.all;

entity ula_tb is
end entity ula_tb;

architecture tb of ula_tb is

    component ula is
        port(
            A         : in  std_logic_vector(15 downto 0);
            B         : in  std_logic_vector(15 downto 0);
            selection : in  std_logic_vector(1 downto 0);
            O         : out std_logic_vector(15 downto 0);
            Z         : out std_logic;
            N         : out std_logic;
            V         : out std_logic;
            BLE       : out std_logic;
            BVS       : out std_logic
        );
    end component;

    signal A         : std_logic_vector(15 downto 0);
    signal B         : std_logic_vector(15 downto 0);
    signal selection : std_logic_vector(1 downto 0);

    signal O         : std_logic_vector(15 downto 0);
    signal Z         : std_logic;
    signal N         : std_logic;
    signal V         : std_logic;
    signal BLE       : std_logic;
    signal BVS       : std_logic;

begin

    dut: ula
        port map(
            A         => A,
            B         => B,
            selection => selection,
            O         => O,
            Z         => Z,
            N         => N,
            V         => V,
            BLE       => BLE,
            BVS       => BVS
        );

    stimulus: process
    begin

        A <= x"0001"; B <= x"0002"; selection <= "00";
        wait for 10 ns;

        A <= x"FFFF"; B <= x"0001"; selection <= "00";
        wait for 10 ns;

        A <= x"7FFF"; B <= x"0001"; selection <= "00";
        wait for 10 ns;

        A <= x"0005"; B <= x"0002"; selection <= "01";
        wait for 10 ns;

        A <= x"0002"; B <= x"0005"; selection <= "01";
        wait for 10 ns;

        A <= x"8000"; B <= x"0001"; selection <= "01";
        wait for 10 ns;

        A <= x"AAAA"; B <= x"5555"; selection <= "10";
        wait for 10 ns;

        A <= x"AAAA"; B <= x"0000"; selection <= "11";
        wait for 10 ns;

        wait;

    end process;

end architecture tb;