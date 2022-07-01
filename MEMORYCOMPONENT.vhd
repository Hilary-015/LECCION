----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:15:38 07/01/2022 
-- Design Name: 
-- Module Name:    MEMORYCOMPONENT - Behavioral 
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
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MEMORYCOMPONENT is

port(
	salida: out std_logic_vector(1 downto 0);
	direccion: in std_logic_vector(1 downto 0)
);
end MEMORYCOMPONENT;

architecture Behavioral of MEMORYCOMPONENT is

type datos is array(0 to 3) of std_logic_vector(1 downto 0);
constant rom: datos :=( "11", "10", "00", "01");

begin

salida <= rom(to_integer(unsigned(direccion)));


end Behavioral;

