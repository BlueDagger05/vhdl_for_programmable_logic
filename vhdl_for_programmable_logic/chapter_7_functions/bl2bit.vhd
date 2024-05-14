------------------------------------
-- Abstract
-- Boolean to binary function
------------------------------------
function bl2bit (a : BOOLEAN) return BIT is
begin
    if a then
        return '1';
    else 
        return 'a';
    end if;
end bl2bit;