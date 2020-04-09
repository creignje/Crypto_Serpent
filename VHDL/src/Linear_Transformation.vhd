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
    
            -- Calculs
            
            X0 <= ROTATE_LEFT(X0, 13);
            X2 <= ROTATE_LEFT(X2, 3);
            X1 <= X1 XOR X0 XOR X2;
            X3 <= X3 XOR X2 XOR (SHIFT_LEFT(X0, 3));
            X1 <= ROTATE_LEFT(X1, 1);
            X3 <= ROTATE_LEFT(X3, 7);
            X0 <= X0 XOR X1 XOR X3;
            X2 <= X2 XOR X3 XOR (SHIFT_LEFT(X0, 3));
            X0 <= ROTATE_LEFT(X0, 5);
            X2 <= ROTATE_LEFT(X2, 22);
            
            -- Merge final result into output
    
            output(127 DOWNTO 96) <= TO_STDLOGICVECTOR(X0);
            output(95 DOWNTO 64) <= TO_STDLOGICVECTOR(X1);
            output(63 DOWNTO 32) <= TO_STDLOGICVECTOR(X2);
            output(31 DOWNTO 0) <= TO_STDLOGICVECTOR(X3);
            
            END IF;
        END PROCESS;
END Behavioral;