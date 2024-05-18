-- inc_bv
-- Increment bit vector
-- In : bit_vector
-- Out : bit_vector
-- Return : bit_vector

function inc_bv (a : BIT_VECTOR) return BIT_VECTOR is
    variable s     : bit_vector (a'range);
    variable carry : bit; 
begin
    carry := '1';
    for i in a'low to a'high loop
        s(i)  : a(i) xor carry;
        carry : a(i) and carry;
    end loop;
        return(s);
end inc_bv;