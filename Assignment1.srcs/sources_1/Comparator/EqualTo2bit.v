//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 15:54:25
// Design Name: 6 bit ALU
// Module Name: GreaterThan2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module EqualTo2bit
    (
        input  wire[1:0] a, b,		// a adn b are the two 2-bit numbers to compare
        output wire EqualTo    			// single bit output. Should be high if a adn b the same
    );

    // Wire declerations
    wire EqualTo1, EqualTo0;
    
    // Call to submodules
    EqualTo1bit eq_bit0_unit (.i0(a[0]), .i1(b[0]), .EqualTo(EqualTo0));
    EqualTo1bit eq_bit1_unit (.i0(a[1]), .i1(b[1]), .EqualTo(EqualTo1));

    // Check both bits are equal and write answer to EqualTo wire
    assign EqualTo = EqualTo0 & EqualTo1;

endmodule