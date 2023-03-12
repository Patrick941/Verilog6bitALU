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

module EqualTo2bit
    (
        input  wire[5:0] vector0, vector1,		// a adn b are the two 2-bit numbers to compare
        output wire EqualTo    			        // single bit output. Should be high if a adn b the same
    );

    // Wire declerations
    wire EqualTo1, EqualTo0, EqualTo2;
    
    // Call to submodules
    EqualTo2bit eq_bit0_unit (.i0(vector0[0:1]), .i1(vector1[0:1]), .EqualTo(EqualTo0));
    EqualTo2bit eq_bit1_unit (.i0(vector0[2:3]), .i1(vector1[2:3]), .EqualTo(EqualTo1));
    EqualTo2bit eq_bit2_unit (.i0(vector0[4:5]), .i1(vector1[4:5]), .EqualTo(EqualTo2));

    // Check all dibits are equal and write answer to EqualTo wire
    assign EqualTo = EqualTo0 & EqualTo1 & EqualTo2;

endmodule