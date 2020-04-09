LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Round IS
    PORT(clk: IN STD_LOGIC;
         rst: IN STD_LOGIC);
END ENTITY;

ARCHITECTURE Behavioral OF Round IS

-- Finite Machine State Reporting

TYPE State IS (Load_Key, Busy, Load_Cypher);

-- Signal State Reporting

SIGNAL s_current_State : State;
SIGNAL s_future_State : State;

BEGIN
    PROCESS(clk, rst)
    -- Counter Variable     
    -- Initial Value of i is 0
    
    VARIABLE i : INTEGER RANGE 0 TO 31 := 0;
    
    BEGIN
        IF rst = '1' THEN
            i := 0;
        ELSIF RISING_EDGE(clk) THEN
            
            -- Verification Final Round
            IF i = 31 THEN
                
            ELSE
                    
            END IF;
        END IF;
    END PROCESS;
END Behavioral;