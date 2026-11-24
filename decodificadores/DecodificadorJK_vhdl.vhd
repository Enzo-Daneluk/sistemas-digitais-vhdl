library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODIFICADOR_JK is 
	Port (
			A, B, C, D : in STD_LOGIC;
			J3, K3, J2, K2, J1, K1, J0, K0 : out STD_LOGIC
			);
end DECODIFICADOR_JK;

architecture Decodificador of DECODIFICADOR_JK is
begin


	--J3
	J3 <= (B and not C and not D) or (B and C and D);
	
	
	--K3 
	K3 <= (not B and not C and D) or (B and C and D);
	
	
	--J2
	J2 <= (not A and not D) or (C);
	
	
	--K2
	K2 <= (not A and not C) or (A and C) or (C and D);
	
	
	--J1
	J1 <= (not A and not B and D) or (A and B) or (A and not D);
	
	
	--K1
	K1 <= (not A and B) or (A and not B);
	
	
	--J0
	J0 <= (B and C);
	
	
	--K0
	K0 <= (A and not B and not C) or (A and B and C);
	
	
	
end Decodificador;