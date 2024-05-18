package myops is
    function "+" (a, b : BIT_VECTOR) return BIT_VECTOR
    function "+" (a : BIT_VECTOR, b : INTEGER) return BIT_VECTOR
end myops;


use work.my_package.all;
package body myops is
    -- "+"
    -- Add overload for
    -- In : two bit_vectors
    -- Return : bit_vector

    function "+" (a, b : BIT_VECTOR) return BIT_VECTOR is
        variable s     : BIT_VECTOR (a' range);
        variable carry : BIT;
        variable bi    : INTEGER;
    begin
        carry := '0';

        for i in a'low to a'high loop
            bi := b'low + (i - b'low);
            s(i) := ( a(i) xor b(i)) xor carry;
            carry := ((a(i) or b(i) and carry) or (a(i) and b(i)));
        end loop

    return (s);
end "+"

-- "+"
-- overload "+" for bit_vector plus integer
-- in : bit_vector and integer
-- result : bit_vector

function "+" (a : BIT_VECTOR, b : INTEGER) return BIT_VECTOR is 
begin
    return(a + i2bv(b, a'length))
end "+"

end myops;