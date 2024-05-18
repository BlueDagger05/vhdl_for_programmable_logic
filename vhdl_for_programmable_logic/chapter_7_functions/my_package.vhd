package my_package is 
    function majority (a, b, c : BIT) return BIT;
    function incr_bv (a : BIT_VECTOR) return BIT_VECTOR;
    function i2bv (val, width : INTEGER) return BIT_VECTOR;
end my_package;

package body my_package is 
-- majority function
-- Input  : a, b, c BIT
-- Output : majority BIT

    function majority (a, b, c : BIT) return bit is
        return ((a and b) or (a and c) or (b and c));
    end majority;

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
-- i2bv
-- integer to bit vector
-- In : integer, value and width
-- Return : bit_vector , with right bit and most significant

    function i2bv (VALD, width : INTEGER) return BIT_VECTOR is
        variable result: BIT_VECTOR (0 to width -1) := (others => '0');
        variable   bits: INTEGER := width;
      
      begin
          if(bits > 32)
            bits := 32;
          else
              ASSERT 2**bits > VAL
              REPORT "value too big for BIT_VECTOR width"
              SEVERITY WARNING;
          end if;
      
          for i in 0 to bits -1 loop
              if((val/(2**i)) MOD 2 = '1') then
                  result(i) := 1;
              end if;
          end loop
      
              return result;
      end i2bv;
end my_package;

