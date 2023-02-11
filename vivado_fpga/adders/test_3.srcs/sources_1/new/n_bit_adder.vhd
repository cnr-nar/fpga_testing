----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.02.2023 18:14:13
-- Design Name: 
-- Module Name: n_bit_adder - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity n_bit_adder is
    generic(
        N : integer := 8
    );
    Port ( input_1 : in std_logic_vector (N-1 downto 0);
           input_2 : in std_logic_vector (N-1 downto 0);
           carry_i : in STD_LOGIC;
           sum_o   : out std_logic_vector (N-1 downto 0);
           carry_o : out STD_LOGIC);
end n_bit_adder;

architecture Behavioral of n_bit_adder is
--COMPONENT DECLARATION
component full_adder is
    Port ( 
    input_1 : in STD_LOGIC;
    input_2 : in STD_LOGIC;
    carry_i : in STD_LOGIC;
    sum_o : out STD_LOGIC;
    carry_o : out STD_LOGIC);
end component full_adder;

signal temp : std_logic_vector (N downto 0) := (others => '0');

begin
temp(0) <= carry_i;
carry_o <= temp(N);
FULL_ADDER_GEN: for count in 0 to N-1 generate
    full_adder_count : full_adder
    port map(
        input_1 =>  input_1(count),
        input_2 =>  input_2(count),
        carry_i =>  temp(count),
        sum_o   =>  sum_o(count),
        carry_o =>  temp(k+1)
    );
end generate;

end Behavioral;
