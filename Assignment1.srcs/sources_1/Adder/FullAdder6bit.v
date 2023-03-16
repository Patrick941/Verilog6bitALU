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

module FullAdder6bit
    (
        input wire[5:0] inputA, inputB,
        output wire[5:0] sumOutput, 
        output wire overflow, carryOut
    );
    
  
    // Declare variables
    wire [5:0]carryOutput, carryIn;
    wire overflow, carryOut;
    
    
    //Ripple adder implementation, carry is passed from carryOutput to carryIn at each step
    assign carryIn[0] = 0;
    FullAdder1bit full_adder_unit1 ( .i0(inputA[0]), .i1(inputB[0]), .cin(carryIn[0]), 
    .cout(carryOutput[0]), .sum(sumOutput[0]));
    assign carryIn[1] = carryOutput[0];
    FullAdder1bit full_adder_unit2 ( .i0(inputA[1]), .i1(inputB[1]), .cin(carryIn[1]), 
    .cout(carryOutput[1]), .sum(sumOutput[1]));
    assign carryIn[2] = carryOutput[1];
    FullAdder1bit full_adder_unit3 ( .i0(inputA[2]), .i1(inputB[2]), .cin(carryIn[2]), 
    .cout(carryOutput[2]), .sum(sumOutput[2]));
    assign carryIn[3] = carryOutput[2];
    FullAdder1bit full_adder_unit4 ( .i0(inputA[3]), .i1(inputB[3]), .cin(carryIn[3]), 
    .cout(carryOutput[3]), .sum(sumOutput[3]));
    assign carryIn[4] = carryOutput[3];
    FullAdder1bit full_adder_unit5 ( .i0(inputA[4]), .i1(inputB[4]), .cin(carryIn[4]), 
    .cout(carryOutput[4]), .sum(sumOutput[4]));
    assign carryIn[5] = carryOutput[4];
    FullAdder1bit full_adder_unit6 ( .i0(inputA[5]), .i1(inputB[5]), .cin(carryIn[5]), 
    .cout(carryOutput[5]), .sum(sumOutput[5]));
    // Carryout and overflow is caluculated
    assign carryOut = carryOutput[5];
    assign overflow = carryOutput[4] ^ carryOutput[5];
    
endmodule
