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

module ALU6bitTB;
    // signal declaration
    reg  [5:0] inputA, inputB;
    reg  [2:0] fxn;
    wire [5:0] outputVector; 

    ALU6bit ALU_unit (.inputA(inputA), .inputB(inputB), .fxn(fxn), .outputVector(outputVector));
    initial
    begin
        // Output should be 000011 / 3
        inputA = 6'b000011;
        inputB = 6'b001100;
        fxn = 3'b000;
        # 50;
        // Output should be 001100 / 12
        inputA = 6'b000011;
        inputB = 6'b001100;
        fxn = 3'b001;
        # 50;
        // Output should be 111101 / -3
        inputA = 6'b000011;
        inputB = 6'b001100;
        fxn = 3'b010;
        # 50;
        // Output should be 110100 / -12
        inputA = 6'b000011;
        inputB = 6'b001100;
        fxn = 3'b011;
        # 50;
        // Output should be 000001 / 1
        inputA = 6'b000011;
        inputB = 6'b001100;
        fxn = 3'b100;
        # 50;
        // Output should be 110000 / -16
        inputA = 6'b000011;
        inputB = 6'b001100;
        fxn = 3'b101;
        # 50;
        // Output should be 001111 / 15
        inputA = 6'b000011;
        inputB = 6'b001100;
        fxn = 3'b110;
        # 50;
        // Output should be 110111 / -9
        inputA = 6'b000011;
        inputB = 6'b001100;
        fxn = 3'b111;
        # 50;
        $stop;
    end

endmodule