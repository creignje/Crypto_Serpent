LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY tb_Initial_Permutation IS
END tb_Initial_Permutation;

ARCHITECTURE Behavioral OF tb_Initial_Permutation IS

COMPONENT Initial_Permutation
    PORT(data_in: IN STD_LOGIC_VECTOR(127 DOWNTO 0);
         data_out: OUT STD_LOGIC_VECTOR(127 DOWNTO 0));
END COMPONENT;

-- Signal Reporting

SIGNAL s_data_in: STD_LOGIC_VECTOR(127 DOWNTO 0);
SIGNAL s_data_out: STD_LOGIC_VECTOR(127 DOWNTO 0);

BEGIN

dut : Initial_Permutation

PORT MAP(
    data_in => s_data_in,
    data_out => s_data_out
);

PROCESS
BEGIN
    
END PROCESS;
END Behavioral;