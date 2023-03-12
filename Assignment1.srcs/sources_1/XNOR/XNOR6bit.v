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

module XNOR6bit
    (
        input wire[5:0] inputA, inputB,
        output wire[5:0] sumOutput
    );
    
  
    // s is the sum of a and b. cout is any carry out bit
    // wires since just using assign here
    
    
    //Ripple adder implementation, carry is passed from carryOutput to carryIn at each step
    XNOR1bit XNOR_unit1 ( .i0(inputA[0]), .i1(inputB[0]), .sum(sumOutput[0]));
    XNOR1bit XNOR_unit2 ( .i0(inputA[1]), .i1(inputB[1]), .sum(sumOutput[1]));
    XNOR1bit XNOR_unit3 ( .i0(inputA[2]), .i1(inputB[2]), .sum(sumOutput[2]));
    XNOR1bit XNOR_unit4 ( .i0(inputA[3]), .i1(inputB[3]), .sum(sumOutput[3]));
    XNOR1bit XNOR_unit5 ( .i0(inputA[4]), .i1(inputB[4]), .sum(sumOutput[4]));
    XNOR1bit XNOR_unit6 ( .i0(inputA[5]), .i1(inputB[5]), .sum(sumOutput[5]));
    
endmodule
