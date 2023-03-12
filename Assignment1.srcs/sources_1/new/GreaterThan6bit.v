//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 13:06:25
// Design Name: 6 bit ALU
// Module Name: GreaterThan2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module GreaterThan6bit
    (
        input  wire[5:0] vector0, vector1,		// a adn b are the two 2-bit numbers to compare
        output wire GreaterThan    			// single bit output. Should be high if a adn b the same
    );

    // Wire declerations
    wire SignGT, SignEQ, SignLT;
    wire GreaterThan5bit, EQSignAndGreater;

    // Call to submodules
    GreaterThan5bit gt_bit0_unit (.vector0(vector0[4:0]), .vector1(vector1[4:0]), .GreaterThan(GreaterThan5bit));
    GreaterThan1bit gt_bit1_unit (.i0(vector0[5]), .i1(vector1[5]), .eq(SignGT));
    EqualTo1bit eq_bit1_unit (.i0(vector0[5]), .i1(vector1[5]), .EqualTo(SignEQ));

    assign EQSignAndGreater = SignEQ & GreaterThan5bit;
    assign SignLT = ~SignGT & ~SignEQ;
    assign GreaterThan = SignLT | EQSignAndGreater;    
endmodule