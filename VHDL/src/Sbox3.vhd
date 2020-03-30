LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Sbox3 IS
    PORT(data_in: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
         data_out: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END Sbox3;

ARCHITECTURE Behavioral OF Sbox3 IS

TYPE array_Sbox IS ARRAY(15 DOWNTO 0) OF STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s_sbox : array_sbox;

BEGIN

-- Sbox initialization

s_sbox(0) <= "0000";	-- 0
s_sbox(1) <= "1111";	-- 15
s_sbox(2) <= "1011";	-- 11
s_sbox(3) <= "1000";	-- 8
s_sbox(4) <= "1100";	-- 12
s_sbox(5) <= "1001";	-- 9
s_sbox(6) <= "0110";	-- 6
s_sbox(7) <= "0011";	-- 3
s_sbox(8) <= "1101";	-- 13
s_sbox(9) <= "0001";	-- 1
s_sbox(10) <= "0010";	-- 2
s_sbox(11) <= "0100";	-- 4
s_sbox(12) <= "1010";	-- 10
s_sbox(13) <= "0111";	-- 7
s_sbox(14) <= "0101";	-- 5
s_sbox(15) <= "1110";	-- 4

-- Reading data

data_out <= s_sbox(TO_INTEGER(UNSIGNED(data_in)));

END Behavioral;
