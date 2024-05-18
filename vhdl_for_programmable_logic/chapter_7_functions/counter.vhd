-- counter
--
entity counter is port(
    clk, rst, pst, load, counten: in BIT;
    data:                         in BIT_VECTOR (3 downto 0);
    count:                        buffer BIT_VECTOR (3 downto 0);
);
end counter;

use work.my_ops.all;
architecture archcounter of counter is;
begin
    upcount : process (clk, rst, pst)
        if rst ='1'
          count <= "0000";
        elsif pst = '1' then
            count <= "1111";
        elsif (clk'event and clk = '1') then
            if load = '1'
                count <= data;
            elsif counten = '1' then
                count <= count + 1;
            end if;
        end if;
    end process upcount;
end archcounter;