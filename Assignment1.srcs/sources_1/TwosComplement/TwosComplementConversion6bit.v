//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 16:48:25
// Design Name: 6 bit ALU
// Module Name: GreaterThan2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module TwosComplementConversion6bit
    (
        input  wire[5:0] inputVector,		        // a adn b are the two 2-bit numbers to compare
        output wire[5:0] outputVector,    			// single bit output. Should be high if a adn b the same
        output wire errorFlag
    );

    // Wire declerations
    wire [5:0] inversedVector, oneValueVector;
    assign oneValueVector[0] = 1;
    assign oneValueVector[1] = 0;
    assign oneValueVector[2] = 0;
    assign oneValueVector[3] = 0;
    assign oneValueVector[4] = 0;
    assign oneValueVector[5] = 0;

    assign inversedVector[0] = ~inputVector[0];
    assign inversedVector[1] = ~inputVector[1];
    assign inversedVector[2] = ~inputVector[2];
    assign inversedVector[3] = ~inputVector[3];
    assign inversedVector[4] = ~inputVector[4];
    assign inversedVector[5] = ~inputVector[5];
    
    // Determine whether input Vector is equal to -32 as -32 cannot have its sign flipped so it will need to be identified
    assign errorFlag = inputVector[5] & ~inputVector[4] & ~inputVector[3] & ~inputVector[2] & ~inputVector[1] & ~inputVector[0];

    // Call to submodules
    FullAdder6bit adder_unit (.inputA(inversedVector), .inputB(6'b000001), .sumOutput(outputVector));

endmodule