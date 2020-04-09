LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Serpent_128 IS
    PORT(plaintext: IN STD_LOGIC_VECTOR(0 TO 127);
         clk: IN STD_LOGIC;
         enable: IN STD_LOGIC;
         key: IN STD_LOGIC_VECTOR(0 TO 127);
         cyphertext: OUT STD_LOGIC_VECTOR(0 TO 127));
END ENTITY;

ARCHITECTURE Behavioral OF Serpent_128 IS
BEGIN
END Behavioral;
