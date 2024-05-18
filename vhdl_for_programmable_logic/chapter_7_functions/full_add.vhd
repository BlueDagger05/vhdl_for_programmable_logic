-- full adder using majority function
-- Input  : bit
-- Output : bit
--

entity full_add is port(
    a, b, carry_in : in bit;
    sum, carry_out : out bit
);

use work.my_package.majority
architecture full_add of full_add is 
begin
    sum <= a xor b xor carry_in;
    carry_out <= majority(a, b, carry_in);
end full_add;