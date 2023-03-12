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

module GreaterThan5bit
   (
      input  wire[4:0] vector0, vector1,		// a adn b are the two 2-bit numbers to compare
      output wire GreaterThan    			// single bit output. Should be high if a adn b the same
   );

   // Wire declerations
   wire MSBGT, SecondMSBGT, ThirdMSBGT;
   wire GreaterThan01, GreaterThan23, GreaterThan4, EqualTo4, EqualTo23, EqualTo01;
   
   // Call to submodules
   GreaterThan1bit gt_bit4_unit (.i0(vector0[4]), .i1(vector1[4]), .eq(GreaterThan4));
   GreaterThan2bit gt_bit23_unit (.vector0(vector0[3:2]), .vector1(vector1[3:2]), .GreaterThan(GreaterThan23));
   GreaterThan2bit gt_bit01_unit (.vector0(vector0[1:0]), .vector1(vector1[1:0]), .GreaterThan(GreaterThan01));
   EqualTo1bit eq_bit4_unit (.i0(vector0[4]), .i1(vector1[4]), .EqualTo(EqualTo4));
   EqualTo2bit eq_bit23_unit (.a(vector0[3:2]), .b(vector1[3:2]), .EqualTo(EqualTo23));
   EqualTo2bit eq_bit01_unit (.a(vector0[1:0]), .b(vector1[1:0]), .EqualTo(EqualTo01));

   // Check if the vectors are greater than or less than for three different submodule calls
   assign MSBGT = GreaterThan4;
   assign SecondMSBGT = EqualTo4 & GreaterThan23;
   assign ThirdMSBGT = EqualTo4 & EqualTo23 & GreaterThan01;

   // If any of the aboves wires produce a high then the output should be a high
   assign GreaterThan = MSBGT | SecondMSBGT | ThirdMSBGT;

endmodule