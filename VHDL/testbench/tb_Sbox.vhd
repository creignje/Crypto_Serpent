LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY tb_Sbox IS
END tb_Sbox;

ARCHITECTURE Behavioral OF tb_Sbox IS

COMPONENT Sbox0 IS
    PORT(data_in: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        data_out: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END COMPONENT;

-- Signal Reporting

SIGNAL s_data_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL s_data_out : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

dut : Sbox0

PORT MAP(data_in => s_data_in,
         data_out => s_data_out);

PROCESS
BEGIN

-- data_in == 0

s_data_in <= "0000";
WAIT FOR 20 ns;

-- data_in == 1

s_data_in <= "0001";
WAIT FOR 20 ns;

-- data_in == 2

s_data_in <= "0010";
WAIT FOR 20 ns;

-- data_in == 3

s_data_in <= "0011";
WAIT FOR 20 ns;

-- data_in == 4

s_data_in <= "0100";
WAIT FOR 20 ns;

-- data_in == 5

s_data_in <= "0101";
WAIT FOR 20 ns;

-- data_in == 6

s_data_in <= "0110";
WAIT FOR 20 ns;

-- data_in == 7
s_data_in <= "0111";
WAIT FOR 20 ns;

-- data_in == 8

s_data_in <= "1000";
WAIT FOR 20 ns;

-- data_in == 9

s_data_in <= "1001";
WAIT FOR 20 ns;

-- data_in == 10

s_data_in <= "1010";
WAIT FOR 20 ns;

-- data_in == 11

s_data_in <= "1011";
WAIT FOR 20 ns;

-- data_in == 12
s_data_in <= "1100";
WAIT FOR 20 ns;

-- data_in == 13

s_data_in <= "1101";
WAIT FOR 20 ns;

-- data_in == 14

s_data_in <= "1110";
WAIT FOR 20 ns;

-- data_in == 15

s_data_in <= "1111";
WAIT FOR 20 ns;

END PROCESS;

END Behavioral;