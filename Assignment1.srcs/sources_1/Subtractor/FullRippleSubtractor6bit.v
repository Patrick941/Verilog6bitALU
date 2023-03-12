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

module FullRippleSubtractor6bit
    (
        input wire[5:0] inputA, inputB,
        output wire[5:0] sumOutput, 
        output wire overflow, carryOut
    );
    
  
    // Input B is subtracted from input A
    wire [5:0] negativeVectorB;
    wire overflow, carryOut;
    
    
    TwosComplementConversion6bit twos_complement_unit ( .inputVector(inputB), .outputVector(negativeVectorB));
    FullAdder6bit full_adder_unit (.inputA(inputA), .inputB(negativeVectorB), .sumOutput(sumOutput), .overflow(overflow), .carryOut(carryOut));
    
endmodule
