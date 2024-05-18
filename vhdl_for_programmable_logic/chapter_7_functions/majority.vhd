-- majority function
-- Input  : a, b, c BIT
-- Output : majority BIT

function majority (a, b, c : BIT) return BIT is
begin
    return ((a and b) or (a and c) or (b and c));
end majority;