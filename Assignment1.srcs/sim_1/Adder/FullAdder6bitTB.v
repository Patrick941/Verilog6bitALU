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

module FullAdder6bitTB;
    // signal declaration
    reg  [5:0] vector0, vector1;
    wire [5:0] sumResult; 
    wire carryResult, overflow;

    FullAdder6bit adder_unit (  .inputA(vector0), .inputB(vector1), .sumOutput(sumResult),
                                .carryOut(carryResult), .overflow(overflow));
    initial
    begin
        // Nothing should be high
        vector0 = 6'b000000;
        vector1 = 6'b000000;
        # 50;
        // Overflow should be high
        vector0 = 6'b010000;
        vector1 = 6'b010000;
        # 50;
        // Carry out and overflow should be high
        vector0 = 6'b100000;
        vector1 = 6'b100000;
        # 50;
        // Carry out should be high
        vector0 = 6'b111111;
        vector1 = 6'b111111;
        # 50;
        // Overflow should be high
        vector0 = 6'b011111;
        vector1 = 6'b000001;
        # 50;
        // Output should be 110011/ -13
        vector0 = 6'b100110;
        vector1 = 6'b101101;
        # 50;
        // Output should be 010001/ 17
        vector0 = 6'b000010;
        vector1 = 6'b001111;
        # 50;
        // Output should be 011111/ 31
        vector0 = 6'b000000;
        vector1 = 6'b000000;    
        $stop;
    end

endmodule