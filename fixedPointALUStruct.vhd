LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ALU_Top_Level IS
    PORT(
        GClock          : IN  STD_LOGIC;                    
        GReset          : IN  STD_LOGIC;                      
        OperandA        : IN  STD_LOGIC_VECTOR(3 downto 0);    
        OperandB        : IN  STD_LOGIC_VECTOR(3 downto 0);   
        OperationSelect : IN  STD_LOGIC_VECTOR(1 downto 0);   -- Operation select (00: Add, 01: Subtract, 10: Multiply, 11: Divide)
        MuxOut          : OUT STD_LOGIC_VECTOR(7 downto 0);  
        CarryOut        : OUT STD_LOGIC;                      
        ZeroOut         : OUT STD_LOGIC;                       
        OverflowOut     : OUT STD_LOGIC                       
    );

END ALU_Top_Level;

ARCHITECTURE Structural OF ALU_Top_Level IS
    SIGNAL sum_result      : STD_LOGIC_VECTOR(3 downto 0);
    SIGNAL carry_out       : STD_LOGIC;
    SIGNAL mult_result     : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL quot_result     : STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL remainder_result: STD_LOGIC_VECTOR(7 downto 0);
    SIGNAL zero_mult           : STD_LOGIC;
    SIGNAL zero_div            : STD_LOGIC;
    SIGNAL overflow_mult       : STD_LOGIC;
    SIGNAL overflow_div        : STD_LOGIC;
    SIGNAL selected_result : STD_LOGIC_VECTOR(7 downto 0); 
    
BEGIN

        COMPONENT nBitAdderSubtractor
        GENERIC (n: INTEGER := 8);
        PORT(
            i_Ai, i_Bi: IN  STD_LOGIC_VECTOR(n-1 downto 0);
            operationFlag: IN  STD_LOGIC;
            o_CarryOut: OUT STD_LOGIC;
            o_Sum: OUT STD_LOGIC_VECTOR(n-1 downto 0)
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

    COMPONENT dec_7seg
        PORT(
            i_hexDigit : IN  STD_LOGIC_VECTOR(3 downto 0);
            o_segment_a, o_segment_b, o_segment_c, o_segment_d,
            o_segment_e, o_segment_f, o_segment_g : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT nBitMux41
        GENERIC (n: INTEGER := 8);  -- 4-bit inputs and outputs
        PORT ( s0, s1: IN STD_LOGIC;
            x0, x1, x2, x3: IN STD_LOGIC_VECTOR(n-1 downto 0);
            y: OUT STD_LOGIC_VECTOR(n-1 downto 0));
    END COMPONENT;


    -- Instantiate the adder/subtractor
    adder_subtractor_inst: nBitAdderSubtractor
     GENERIC MAP (n => 8)
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


    mux_inst: nBitMux41
        GENERIC MAP (n => 8)
        PORT MAP (
            s0 => OperationSelect(0),
            s1 => OperationSelect(1),
            x0 => "0000" & sum_result,   -- 4-bit sum with leading zeros
            x1 => "0000" & sum_result,   
            x2 => mult_result,           -
            x3 => quot_result(3 downto 0) & remainder_result(3 downto 0), 
            y  => selected_result        
        );

    -- Outputs
    MuxOut <= selected_result;
    CarryOut <= carry_out WHEN OperationSelect = "00" OR OperationSelect = "01" ELSE '0';
    ZeroOut <= NOT (selected_result(7) OR selected_result(6) OR selected_result(5) OR selected_result(4) OR 
                    selected_result(3) OR selected_result(2) OR selected_result(1) OR selected_result(0));
    OverflowOut <= overflow_mult WHEN OperationSelect = "10" ELSE overflow_div WHEN OperationSelect = "11" ELSE '0';
               

END Structural;
