//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 16:09:25
// Design Name: 6 bit ALU
// Module Name: GreaterOrEqual2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module ALU6bit
    (
        input [5:0] inputA, inputB,
        input [2:0] fxn,
        output reg [5:0] outputVector
    );
    
    wire enableA, enableB, enableNegativeA, enableNegativeB, enableLessThan, enableXNOR, enablePlus, enableMinus;
    wire [5:0] NegativeA, NegativeB, XNOR, Plus, Minus;
    wire LessThan;

    TwosComplementConversion6bit Neg_A_unit (.inputVector(inputA), .outputVector(NegativeA));
    TwosComplementConversion6bit Neg_B_unit (.inputVector(inputB), .outputVector(NegativeB));
    LessThan6bit A_LessThan_B_unit ( .vector0(inputA), .vector1(inputB), .LessThan(LessThan));
    XNOR6bit A_XNOR_B_unit (.inputA(inputA), .inputB(inputB), .sumOutput(XNOR));
    FullAdder6bit A_Plus_B_unit (.inputA(inputA), .inputB(inputB), .sumOutput(Plus));
    FullRippleSubtractor6bit A_Minus_B_unit (.inputA(inputA), .inputB(inputB), .sumOutput(Minus));

    always @ (inputA or inputB or fxn) begin
        case (fxn)
            3'b000:         outputVector = inputA;
            3'b001:         outputVector = inputB;
            3'b010:         outputVector = NegativeA;
            3'b011:         outputVector = NegativeB;
            3'b100:         outputVector = LessThan;
            3'b101:         outputVector = XNOR;
            3'b110:         outputVector = Plus;
            3'b111:         outputVector = Minus;
            default:            outputVector = 6'bXXXXXX;
        endcase
    end
    

    
endmodule
