----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.02.2023 14:40:19
-- Design Name: 
-- Module Name: and2 - Behavioral
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

entity and2 is
    Port ( in1_i : in STD_LOGIC;
           in2_i : in STD_LOGIC;
           and_out_o : out STD_LOGIC);
end and2;

architecture Behavioral of and2 is

    begin
        and_out_o <= in1_i and in2_i;

    end Behavioral;
