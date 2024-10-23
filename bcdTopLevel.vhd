LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bcdtoplevel IS
    PORT(
        GClock          : IN  STD_LOGIC;                    
        GReset          : IN  STD_LOGIC;                      
        OperandA        : IN  STD_LOGIC_VECTOR(3 downto 0);    
        OperandB        : IN  STD_LOGIC_VECTOR(3 downto 0);    
        OperationSelect : IN  STD_LOGIC_VECTOR(1 downto 0);    
        BCDOutA         : OUT STD_LOGIC_VECTOR(6 downto 0);     
        BCDOutB         : OUT STD_LOGIC_VECTOR(6 downto 0)      
    );

END bcdtoplevel;

ARCHITECTURE Structural OF bcdtoplevel IS
    SIGNAL ALU_Output     : STD_LOGIC_VECTOR(7 downto 0); 
    SIGNAL CarryOut       : STD_LOGIC;
    SIGNAL ZeroOut        : STD_LOGIC;
    SIGNAL OverflowOut     : STD_LOGIC;

    COMPONENT ALU_Top_Level
        PORT(
            GClock          : IN  STD_LOGIC;                    
            GReset          : IN  STD_LOGIC;                      
            OperandA        : IN  STD_LOGIC_VECTOR(3 downto 0);    
            OperandB        : IN  STD_LOGIC_VECTOR(3 downto 0);   
            OperationSelect : IN  STD_LOGIC_VECTOR(1 downto 0);   
            MuxOut          : OUT STD_LOGIC_VECTOR(7 downto 0);  
            CarryOut        : OUT STD_LOGIC;                      
            ZeroOut         : OUT STD_LOGIC;                       
            OverflowOut     : OUT STD_LOGIC                        
        );
    END COMPONENT;

    COMPONENT dec_7seg
        PORT(
            i_hexDigit : IN  STD_LOGIC_VECTOR(3 downto 0);
            o_segment_a, o_segment_b, o_segment_c, o_segment_d,
            o_segment_e, o_segment_f, o_segment_g : OUT STD_LOGIC
        );
    END COMPONENT;

BEGIN

    ALU_Inst: ALU_Top_Level
        PORT MAP (
            GClock          => GClock,
            GReset          => GReset,
            OperandA        => OperandA,
            OperandB        => OperandB,
            OperationSelect => OperationSelect,
            MuxOut          => ALU_Output,
            CarryOut        => CarryOut,
            ZeroOut         => ZeroOut,
            OverflowOut     => OverflowOut
        );

    bcd_decoder_A: dec_7seg
        PORT MAP (
            i_hexDigit => ALU_Output(3 downto 0),  -- 4 LSB
            o_segment_a => BCDOutA(0),
            o_segment_b => BCDOutA(1),
            o_segment_c => BCDOutA(2),
            o_segment_d => BCDOutA(3),
            o_segment_e => BCDOutA(4),
            o_segment_f => BCDOutA(5),
            o_segment_g => BCDOutA(6)
        );

    bcd_decoder_B: dec_7seg
        PORT MAP (
            i_hexDigit => ALU_Output(7 downto 4),  -- 4 MSB
            o_segment_a => BCDOutB(0),
            o_segment_b => BCDOutB(1),
            o_segment_c => BCDOutB(2),
            o_segment_d => BCDOutB(3),
            o_segment_e => BCDOutB(4),
            o_segment_f => BCDOutB(5),
            o_segment_g => BCDOutB(6)
        );

END Structural;
