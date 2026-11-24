library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity HEX_DECODER is
    Port (
        Z, Y, X, W : in  STD_LOGIC;  
        a, b, c, d, e, f, g : out STD_LOGIC  
    );
end HEX_DECODER;

architecture Primitive of HEX_DECODER is
begin

    -- a
    a <= (not W and not X and not Y and Z) or
         (not W and X and not Y and not Z) or
         (W and not X and Y and Z) or
         (W and X and not Y and Z);

    -- b
    b <= (not W and X and not Y and Z) or
         (X and Y and not Z) or
         (W and Y and Z) or
         (W and X and not Z);

    -- c
    c <= (not W and not X and Y and not Z) or
         (W and X and not Z) or
         (W and X and Y);

    -- d
    d <= (not W and not X and not Y and Z) or
         (not W and X and not Y and not Z) or
         (X and Y and Z) or
         (W and not X and Y and not Z);

    -- e
    e <= (not W and Z) or
         (not W and X and not Y) or
         (not X and not Y and Z);

    -- f
    f <= (not W and not X and Z) or
         (not W and not X and Y) or
         (not W and Y and Z) or
         (W and X and not Y and Z);

    -- g
    g <= (not W and not X and not Y) or
         (not W and X and Y and Z) or
         (W and X and not Y and not Z);

end Primitive;