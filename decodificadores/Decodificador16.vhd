library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DECODIFICADOR_16 is 
	Port (
			A, B, C, D : in STD_LOGIC;
			J3, K3, J2, K2, J1, K1, J0, K0 : out STD_LOGIC
			);
end DECODIFICADOR_16;

architecture Decodificador of DECODIFICADOR_16 is
begin


	--J3
	J3 <= A or (not A);
	
	
	--K3 
	K3 <= A or (not A);
	
	--J2
	J2 <= D;
	
	
	--K2
	K2 <= D;
	
	
	--J1
	J1 <= D and C;
	
	
	--K1
	K1 <= D and C;
	
	
	--J0
	J0 <= B and D and C;
	
	
	--K0
	K0 <= B and D and C;
	
	
	
end Decodificador;