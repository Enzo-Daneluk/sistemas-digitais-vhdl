# Sistemas digitais em VHDL

Laboratórios de Sistemas Digitais (UTFPR) desenvolvidos no Intel Quartus para FPGAs Intel MAX 10.

## Conteúdo

| Pasta | Assunto |
|---|---|
| `lab07-memorias/` | projeto `Memorias` (10M50DAF484C7G): duas ROMs de 256x8 lidas em sequência por um contador, registrador PISO, multiplexador, detector de sequência e exibição em display de 7 segmentos; inclui os diagramas `.bdf`/`.bsf` e as formas de onda `.vwf` |
| `decodificadores/` | decodificador de 4 para 16, decodificador com flip-flop JK e decodificador hexadecimal para display |
| `ula-lab2/` | ULA do laboratório 2 com testbench, clock dividido e gerador pseudoaleatório |

Os arquivos de inicialização das ROMs (`ROM_256_8.hex`, `ROM_256_8_2.hex`) não foram versionados. Para sintetizar o lab 7, gere novos arquivos `.hex` ou `.mif` com o conteúdo desejado e aponte para eles nos IPs `ROM1` e `ROM2`.

## Tecnologias

VHDL, diagramas esquemáticos do Quartus (`.bdf`), Intel Quartus Prime Lite, ModelSim/Questa e FPGA MAX 10.

## Como abrir

1. Abra `lab07-memorias/Memorias.qpf` no Quartus Prime Lite.
2. Compile (Processing > Start Compilation) e grave com o Programmer.
3. Para simular, abra um dos `Waveform*.vwf` no editor de formas de onda.

Os arquivos de `decodificadores/` e `ula-lab2/` podem ser simulados com o GHDL, analisando a entidade e o testbench correspondente.
