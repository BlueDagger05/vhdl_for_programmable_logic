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
