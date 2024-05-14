------------------------------------
-- Abstract
-- Bit Vector to Integer function
-- In  : bit_vector
-- Out : integer
------------------------------------

function bv2i (bv : BIT_VECTOR) return INTEGER is 
    variable result, abit : integer := 0;
    variable count        : intger  := 0;

begin
    bits : for I in bv'low to bv'high loop
        abit:= 0;
        if(bv(I) = '1') then
            abit := 2**(I - bv'low);
        end if;

        result := result + abit;
        count  := count + 1;
        exit bits when count = 32;
    end loop bits;
        return (result);
    end bv2i;