LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY Linear_Transformation IS
PORT(clk: IN STD_LOGIC;
     rst: IN STD_LOGIC;
     input: IN STD_LOGIC_VECTOR(127 DOWNTO 0);
     output: OUT STD_LOGIC_VECTOR(127 DOWNTO 0));    
END Linear_Transformation;

ARCHITECTURE Behavioral OF Linear_Transformation IS

SIGNAL X0: BIT_VECTOR(31 DOWNTO 0);
SIGNAL X1: BIT_VECTOR(31 DOWNTO 0);
SIGNAL X2: BIT_VECTOR(31 DOWNTO 0);
SIGNAL X3: BIT_VECTOR(31 DOWNTO 0);

BEGIN
    PROCESS(rst, clk)
        BEGIN
        IF rst = '0' THEN
            -- Split input (plaintext) into 4 words
    
            X0 <= TO_BITVECTOR(input(127 DOWNTO 96));
            X1 <= TO_BITVECTOR(input(95 DOWNTO 64));
            X2 <= TO_BITVECTOR(input(63 DOWNTO 32));
            X3 <= TO_BITVECTOR(input(31 DOWNTO 0));
    
            -- Bitslice Calcul
            
            
            
            -- Merge final result into output
    
            output(127 DOWNTO 96) <= TO_STDLOGICVECTOR(X0);
            output(95 DOWNTO 64) <= TO_STDLOGICVECTOR(X1);
            output(63 DOWNTO 32) <= TO_STDLOGICVECTOR(X2);
            output(31 DOWNTO 0) <= TO_STDLOGICVECTOR(X3);
            
            END IF;
        END PROCESS;
END Behavioral;