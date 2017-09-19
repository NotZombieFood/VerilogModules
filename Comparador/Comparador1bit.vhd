----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:14:09 04/23/2017 
-- Design Name: 
-- Module Name:    Comparador1bit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Comparador1bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           > : in  STD_LOGIC;
           < : in  STD_LOGIC;
           = : in  STD_LOGIC;
           > : out  STD_LOGIC;
           < : out  STD_LOGIC;
           = : out  STD_LOGIC);
end Comparador1bit;

architecture Behavioral of Comparador1bit is

begin


end Behavioral;

