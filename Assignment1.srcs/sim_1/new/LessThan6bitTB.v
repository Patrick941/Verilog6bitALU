//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 12.03.2023 13:48:25
// Design Name: 6 bit ALU
// Module Name: LessThan2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module LessThan6bitTB;
   // signal declaration
   reg  [5:0] testVector0, testVector1;
   wire LessThan6bitResult;

   // Call 2 bit Greater than and output the value in the waveform
   //EqualTo6bit EQComparatorUnit(.vector0(testVector0), .vector1(testVector1), .EqualTo(EqualToResult));
   LessThan6bit GTComparatorUnit (.vector0(testVector0), .vector1(testVector1), .LessThan(LessThan6bitResult));
   
   initial
   begin
      // test vector 1
      testVector0 = 6'b000000;
      testVector1 = 6'b000000;
      # 50;
      // test vector 1
      testVector0 = 6'b111110;
      testVector1 = 6'b000000;
      # 50;
      // test vector 1
      testVector0 = 6'b000000;
      testVector1 = 6'b111110;
      # 50;
      // test vector 1
      testVector0 = 6'b011110;
      testVector1 = 6'b111110;
      # 50;
      // test vector 1
      testVector0 = 6'b111110;
      testVector1 = 6'b011110;
      # 50;
      // test vector 1
      testVector0 = 6'b001110;
      testVector1 = 6'b011110;
      # 50;
      // test vector 1
      testVector0 = 6'b011100;
      testVector1 = 6'b011110;
      # 50;
      // test vector 1
      testVector0 = 6'b011110;
      testVector1 = 6'b101110;
      # 50;
      // test vector 1
      testVector0 = 6'b111100;
      testVector1 = 6'b111110;
      # 50;
      // test vector 1
      testVector0 = 6'b111110;
      testVector1 = 6'b111100;
      # 50;
      // test vector 1
      testVector0 = 6'b000100;
      testVector1 = 6'b000010;
      # 50;
      // test vector 1
      testVector0 = 6'b010000;
      testVector1 = 6'b001000;
      # 50;
      // test vector 1
      testVector0 = 6'b010000;
      testVector1 = 6'b000100;
      # 50;
      // stop simulation
      $stop;
   end
endmodule