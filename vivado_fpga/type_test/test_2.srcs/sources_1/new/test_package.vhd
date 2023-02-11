----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.02.2023 16:07:59
-- Design Name: 
-- Module Name: test_package - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity test_package is
    Port ( s0_i : in std_logic_vector (7 downto 0);
           s1_i : in std_logic_vector (7 downto 0);
           s_o : out STD_LOGIC);
end test_package;

architecture Behavioral of test_package is
--USAGE AS Vector
signal s0 : std_logic_vector (7 downto 0) := x"00";
begin
    s0 <= s0_i + s1_i;
    process (s0) begin
        if (s0>20) then
            s_o <= '1';
        else
            s_o <= '0';
        end if;
    end process;
end Behavioral;

--WITH TYPE CAST
--signal s0 : std_logic_vector (7 downto 0) := x"00";
--begin
--s0 <= std_logic_vector(unsigned(s0_i) + unsigned(s1_i)) ;
--process (s0) begin
--    if (unsigned(s0) > 20) then
--        s_o <= '1';
--    else
--        s_o <= '0';
--    end if;
--end process;
--end Behavioral;

--WITH UNSGINED
--signal s0 : unsigned (7 downto 0) := x"00";
--begin
--    s0 <= unsigned(s0_i) + unsigned(s1_i);
--    process (s0) begin
--        if (s0>20) then
--            s_o <= '1';
--        else
--            s_o <= '0';
--        end if;
--    end process;
--end Behavioral;