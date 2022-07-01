----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:21:50 07/01/2022 
-- Design Name: 
-- Module Name:    TB_MEMORYCOMPONENT - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_MEMORYCOMPONENT IS
END TB_MEMORYCOMPONENT;
 
ARCHITECTURE behavior OF TB_MEMORYCOMPONENT IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MEMORYCOMPONENT
    PORT(
         salida : OUT  std_logic_vector(1 downto 0);
         direccion : IN  std_logic_vector(1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal direccion : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal salida : std_logic_vector(1 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MEMORYCOMPONENT PORT MAP (
          salida => salida,
          direccion => direccion
        );

   -- Clock process definitions

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


      -- insert stimulus here 

      wait;
   end process;

END;

