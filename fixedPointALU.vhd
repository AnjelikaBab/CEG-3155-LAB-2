LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ALU_Top_Level IS
    PORT(
        GClock          : IN  STD_LOGIC;                    
        GReset          : IN  STD_LOGIC;                      
        OperandA       : IN  STD_LOGIC_VECTOR(3 downto 0);    
        OperandB       : IN  STD_LOGIC_VECTOR(3 downto 0);   
        OperationSelect : IN  STD_LOGIC_VECTOR(1 downto 0);   -- Operation select (00: Add, 01: Subtract, 10: Multiply, 11: Divide)
        MuxOut          : OUT STD_LOGIC_VECTOR(7 downto 0);    
        CarryOut        : OUT STD_LOGIC;                      
        ZeroOut         : OUT STD_LOGIC;                       
        OverflowOut     : OUT STD_LOGIC                       
    );
END ALU_Top_Level;

ARCHITECTURE Structural OF ALU_Top_Level IS
    SIGNAL sum_result          : STD_LOGIC_VECTOR(3 downto 0);
    SIGNAL carry_out           : STD_LOGIC;
    SIGNAL mult_result         : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL quot_result          : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL remainder_result      : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL zero_mult           : STD_LOGIC;
    SIGNAL zero_div            : STD_LOGIC;
    SIGNAL overflow_mult       : STD_LOGIC;
    SIGNAL overflow_div        : STD_LOGIC;
    SIGNAL selected_result      : STD_LOGIC_VECTOR(7 downto 0);
    
    COMPONENT nBitAdderSubtractor
        PORT(
            i_Ai            : IN  STD_LOGIC_VECTOR(3 downto 0);
            i_Bi            : IN  STD_LOGIC_VECTOR(3 downto 0);
            operationFlag   : IN  STD_LOGIC;
            o_CarryOut      : OUT STD_LOGIC;
            o_Sum           : OUT STD_LOGIC_VECTOR(3 downto 0)
        );
    END COMPONENT;

    COMPONENT multiplierTopLevel
        PORT(
            clk             : IN  STD_LOGIC;
            reset           : IN  STD_LOGIC;
            INA             : IN  STD_LOGIC_VECTOR(3 downto 0);
            INB             : IN  STD_LOGIC_VECTOR(3 downto 0);
            zero            : OUT STD_LOGIC;
            overflow        : OUT STD_LOGIC;
            product         : OUT STD_LOGIC_VECTOR(7 downto 0)
        );
    END COMPONENT;

    COMPONENT dividerTopLevel
        PORT(
            clk             : IN  STD_LOGIC;
            reset           : IN  STD_LOGIC;
            INA             : IN  STD_LOGIC_VECTOR(3 downto 0);
            INB             : IN  STD_LOGIC_VECTOR(3 downto 0);
            quotient        : OUT STD_LOGIC_VECTOR(7 downto 0);
            remainder       : OUT STD_LOGIC_VECTOR(7 downto 0);
            zero            : OUT STD_LOGIC;
            overflow        : OUT STD_LOGIC
        );
    END COMPONENT;

BEGIN

    -- Instantiate the nBitAdderSubtractor
    adder_subtractor_inst: nBitAdderSubtractor
        PORT MAP (
            i_Ai            => OperandA,
            i_Bi            => OperandB,
            operationFlag   => OperationSelect(0), -- 0 for addition, 1 for subtraction
            o_CarryOut      => carry_out,
            o_Sum           => sum_result
        );

    -- Instantiate the multiplier
    multiplier_inst: multiplierTopLevel
        PORT MAP (
            clk             => GClock,
            reset           => GReset,
            INA             => OperandA,
            INB             => OperandB,
            zero            => zero_mult,
            overflow        => overflow_mult,
            product         => mult_result
        );

    -- Instantiate the divider
    divider_inst: dividerTopLevel
        PORT MAP (
            clk             => GClock,
            reset           => GReset,
            INA             => OperandA,
            INB             => OperandB,
            quotient        => quot_result,
            remainder       => remainder_result,
            zero            => zero_div,
            overflow        => overflow_div
        );

    PROCESS(OperationSelect, sum_result, mult_result, quot_result, remainder_result)
    BEGIN
        -- Default initialization
        selected_result <= (others => '0');  -- Set to 0 by default

        CASE OperationSelect IS
            WHEN "00" =>                     -- Add
                selected_result <= "0000" & sum_result; 
                CarryOut <= carry_out;       
            WHEN "01" =>                     -- Subtract
                selected_result <= "0000" & sum_result; 
            WHEN "10" =>                     -- Multiply
                selected_result <= mult_result;  
                CarryOut <= '0';                 
            WHEN "11" =>                     -- Divide
                selected_result <= quot_result(3 downto 0) & remainder_result(3 downto 0); 
                CarryOut <= '0';                 -
            WHEN OTHERS =>
                selected_result <= (others => '0');  
                CarryOut <= '0';                    
        END CASE;

        -- Set outputs
        MuxOut <= selected_result;  
        ZeroOut  <= NOT (selected_result(7) OR selected_result(6) OR selected_result(5) OR selected_result(4) OR selected_result(3) OR selected_result(2) OR selected_result(1) OR selected_result(0));
        OverflowOut <= '0'; 
        
    END PROCESS;

END Structural;



