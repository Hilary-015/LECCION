----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:53:24 07/01/2022 
-- Design Name: 
-- Module Name:    memoriaLeccion - Behavioral 
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
use IEEE.STD_LOGIC_unsigned.ALL;

entity memoriaLeccion is
	port(
		clk: in std_logic;
		en: in std_logic;
		we: in std_logic;
		rst: in std_logic;
		addr: in std_logic_vector(9 downto 0);
		di: in std_logic_vector(15 downto 0);
		do: out std_logic_vector(15 downto 0)
	);
end memoriaLeccion;

architecture Behavioral of memoriaLeccion is

type ram_type is array (1023 downto 0) 
of std_logic_vector(15 downto 0);

signal ram: ram_type;

begin
	process(clk)
		begin
			if (clk'event and clk = '1') then
				if en = '1' then -- 

				if we = '1' then --write

					ram(conv_integer(addr)) <=di;
				end if;
				
				if rst = '1' then --

					do<=(others => '0');
				else
					do<= ram(conv_integer(addr));
				end if;
				end if;
				end if;
	end process; 

end Behavioral;

