
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use IEEE.NUMERIC_STD.ALL;

entity Memoria2 is
    Port ( salida : out  STD_LOGIC_VECTOR (1 downto 0);
           direccion : in  STD_LOGIC_VECTOR (1 downto 0));
end Memoria2;
architecture Behavioral of Memoria2 is
type datos is array (0 to 3) of std_logic_vector(1 downto 0);
		constant memo: datos := ("00","01", "10", "11");
		begin
		salida <= memo(to_integer(unsigned(direccion)));

end Behavioral;

