//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 12.03.2023 11:54:25
// Design Name: 6 bit ALU
// Module Name: GreaterThan2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module GreaterThan2bit
   (
      input  wire[1:0] vector0, vector1,		// a adn b are the two 2-bit numbers to compare
      output wire GreaterThan    			// single bit output. Should be high if a adn b the same
   );

   // Wire declerations
   wire LSBGT;
   wire GreaterThan01, GreaterThan23, GreaterThan4, EqualTo4, EqualTo23, EqualTo01;
   
   // Call to submodules
   GreaterThan1bit gt_bit0_unit (.i0(vector0[0]), .i1(vector1[0]), .eq(GreaterThan0));
   EqualTo1bit eq_bit1_unit (.i0(vector0[1]), .i1(vector1[1]), .EqualTo(EqualTo1));

   // Assign output values to calculate the 2 bit greater than value and write it
   assign LSBGT = EqualTo1 & GreaterThan0;
   assign GreaterThan = GreaterThan1 | LSBGT;   


endmodule