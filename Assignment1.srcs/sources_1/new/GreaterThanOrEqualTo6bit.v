//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 12.03.2023 10:54:25
// Design Name: 6 bit ALU
// Module Name: GreaterThan2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module GreaterThanOrEqualTo6bit
    (
        input  wire[5:0] vector0, vector1,		// a adn b are the two 2-bit numbers to compare
        output wire GreaterThanOrEqualTo    			        // single bit output. Should be high if a adn b the same
    );

    // Wire declerations
    wire GreaterThan6bit, EqualTo6bit;
    
    // Call to submodules
    EqualTo6bit eq_bit06_unit (.vector0(vector0), .vector1(vector1), .EqualTo(EqualTo6bit));
    GreaterThan6bit gt_bit06_unit (.vector0(vector0), .vector1(vector1), .GreaterThan(GreaterThan6bit));

    // If Greater Than or equal to, write high to output wire
    assign GreaterThanOrEqualTo = EqualTo6bit | GreaterThan6bit;

endmodule