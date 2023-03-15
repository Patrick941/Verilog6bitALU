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
        output wire [5:0] outputSelectA, outputSelectB, outputSelectNegativeA, outputSelectNegativeB, 
        output wire [5:0] outputALessThanB, outputAxnorB, outputAplusB, outputAminusB,
        output wire plusOverflow, minusOverflow
    );
    
    wire enableA, enableB, enableNegativeA, enableNegativeB, enableLessThan, enableXNOR, enablePlus, enableMinus;
    wire [5:0] NegativeA, NegativeB, XNOR, Plus, Minus;
    wire LessThan, plusOverflow, minusOverflow;

    assign outputSelectA = inputA;
    assign outputSelectB = inputB;
    TwosComplementConversion6bit Neg_A_unit (.inputVector(inputA), .outputVector(outputSelectNegativeA));
    TwosComplementConversion6bit Neg_B_unit (.inputVector(inputB), .outputVector(outputSelectNegativeB));
    LessThan6bit A_LessThan_B_unit ( .vector0(inputA), .vector1(inputB), .LessThan(outputALessThanB));
    XNOR6bit A_XNOR_B_unit (.inputA(inputA), .inputB(inputB), .sumOutput(outputAxnorB));
    FullAdder6bit A_Plus_B_unit (.inputA(inputA), .inputB(inputB), .sumOutput(outputAplusB), .overflow(plusOverflow));
    FullRippleSubtractor6bit A_Minus_B_unit (.inputA(inputA), .inputB(inputB), .sumOutput(outputAminusB), .overflow(minusOverflow));
    

    
endmodule
