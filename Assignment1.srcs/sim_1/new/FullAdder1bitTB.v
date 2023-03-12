//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 14:56:25
// Design Name: 6 bit ALU
// Module Name: GreaterOrEqual2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module FullAdder1bitTB;
    // signal declaration
    reg     vector0, vector1;
    wire    sumResult, carryResult, carryInput;

    FullAdder1bit full_adder_unit (.i0(vector0), .i1(vector1), .sum(sOutput), .cout(cOutput), 
                                    .cin(carryInput));
    initial
    begin
        // test vector 1
        test_in0 = 1'b0;
        test_in1 = 1'b0;
        carryInput = 1'b0;
        # 50;
        // test vector 1
        test_in0 = 1'b0;
        test_in1 = 1'b1;
        carryInput = 1'b0;
        # 50;
        // test vector 1
        test_in0 = 1'b1;
        test_in1 = 1'b0;
        carryInput = 1'b0;
        # 50;
        // test vector 1
        test_in0 = 1'b1;
        test_in1 = 1'b1;
        carryInput = 1'b0;
        # 50;
                // test vector 1
        test_in0 = 1'b0;
        test_in1 = 1'b0;
        carryInput = 1'b1;
        # 50;
        // test vector 1
        test_in0 = 1'b0;
        test_in1 = 1'b1;
        carryInput = 1'b1;
        # 50;
        // test vector 1
        test_in0 = 1'b1;
        test_in1 = 1'b0;
        carryInput = 1'b1;
        # 50;
        // test vector 1
        test_in0 = 1'b1;
        test_in1 = 1'b1;
        carryInput = 1'b1;
        # 50;
        $stop;
    end

endmodule