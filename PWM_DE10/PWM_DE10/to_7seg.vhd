 library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity to_7seg is
    Port ( A : in  integer;
          seg7 : out  STD_LOGIC_VECTOR (6 downto 0)
             );
end to_7seg;

architecture Behavioral of to_7seg is

begin

--'a' corresponds to MSB of seg7 and 'g' corresponds to LSB of seg7.
process (A)
BEGIN
    case A is
        when 0 => seg7 <="1000000";  -- '0'
        when 1 => seg7 <="1111001";  -- '1'
        when 2 => seg7 <="0100100";  -- '2'
        when 3 => seg7 <="0110000";  -- '3'
        when 4 => seg7 <="0011001";  -- '4'
        when 5 => seg7 <="0010010";  -- '5'
        when 6 => seg7 <="0000010";  -- '6'
        when 7 => seg7 <="1111000";  -- '7'
        when 8 => seg7 <="0000000";  -- '8'
        when 9 => seg7 <="0010000";  -- '9'
        when others =>  NULL;
    end case;
end process;

end Behavioral;