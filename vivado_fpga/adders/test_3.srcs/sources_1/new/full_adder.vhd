----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11.02.2023 18:23:30
-- Design Name: 
-- Module Name: full_adder - Behavioral
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

entity full_adder is
    Port ( input_1 : in STD_LOGIC;
           input_2 : in STD_LOGIC;
           carry_i : in STD_LOGIC;
           sum_o : out STD_LOGIC;
           carry_o : out STD_LOGIC);
end full_adder;

architecture Behavioral of full_adder is
--Component Decleration
component half_adder is
    Port ( 
    input_1 : in STD_LOGIC;
    input_2 : in STD_LOGIC;
    sum_o : out STD_LOGIC;
    carry_o : out STD_LOGIC
    );
end component half_adder;

--Signals
signal first_sum    : std_logic := '0';
signal first_carry  : std_logic := '0';
signal second_carry : std_logic := '0';

begin

--Component Instantiation
first_half_adder : half_adder
port map(
    input_1 => input_1,
    input_2 => input_2,
    sum_o   => first_sum,
    carry_o => first_carry
);

second_half_adder : half_adder
port map(
    input_1 => first_sum,
    input_2 => carry_i,
    sum_o   => sum_o,
    carry_o => second_carry
);

--Concurrent Signal Assignments
carry_o <= first_carry or second_carry;

end Behavioral;
