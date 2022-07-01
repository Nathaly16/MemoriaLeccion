
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
Use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_MEMORIA2 IS
END TB_MEMORIA2;
 
ARCHITECTURE Behavioral OF TB_MEMORIA2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Memoria2
    PORT(
         salida : OUT  std_logic_vector(1 downto 0);
         direccion : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
signal direccion : std_logic_vector(1 downto 0) := (others => '0');

--Outputs
signal salida : std_logic_vector(1 downto 0);
-- No clocks detected in port list. Replace below with
-- appropriate port name

BEGIN

-- Instantiate the Unit Under Test (UUT)
uut: Memoria2 PORT MAP (
salida => salida,
direccion => direccion
);

-- Clock process definition

-- Stimulus process
stim_proc: process
begin
-- hold reset state for 100 ns.
wait for 100 ns;
direccion <= "01";
wait for 100 ns;
direccion <= "00";
wait for 100 ns;
direccion <= "11";
wait for 100 ns;
direccion <= "10";
wait;
end process;

END;