//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 16:56:25
// Design Name: 6 bit ALU
// Module Name: GreaterThan2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module TwosComplementConversion6bitTB;
    // signal declaration
    reg  [5:0] inputVector;
    wire [5:0] outputVector; 

    TwosComplementConversion6bit twos_complement_unit (.inputVector(inputVector), .outputVector(outputVector));

    initial
    begin
        // Test Vector 1
        inputVector = 6'b000000;
        #50
        // Test Vector 1
        inputVector = 6'b111111;
        #50
        // Test Vector 1
        inputVector = 6'b011011;
        #50
        // Test Vector 1
        inputVector = 6'b001111;
        #50
        // Test Vector 1
        inputVector = 6'b000011;
        #50
        // Test Vector 1
        inputVector = 6'b001000;
        #50
        // Test Vector 1
        inputVector = 6'b100000;
        #50
        // Test Vector 1
        inputVector = 6'b000110;
        #50
        // Test Vector 1
        inputVector = 6'b011000;
        #50
        $stop;
    end

endmodule