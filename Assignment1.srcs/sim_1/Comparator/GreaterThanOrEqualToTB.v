//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 12.03.2023 13:35:25
// Design Name: 6 bit ALU
// Module Name: GreaterOrEqual2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module GreaterThanOrEqualTo6bitTB;
   // signal declaration
   reg  [5:0] testVector0, testVector1;
   wire GreaterThanOrEqualToResult;

   // Call 2 bit Greater than and output the value in the waveform
   //EqualTo6bit EQComparatorUnit(.vector0(testVector0), .vector1(testVector1), .EqualTo(EqualToResult));
   GreaterThanOrEqualTo6bit GTComparatorUnit (.vector0(testVector0), .vector1(testVector1), .GreaterThanOrEqualTo(GreaterThanOrEqualToResult));
   
   initial
   begin
      // test vector 1
      testVector0 = 6'b000000;
      testVector1 = 6'b000000;
      # 50;
      // test vector 1
      testVector0 = 6'b111111;
      testVector1 = 6'b000000;
      # 50;
      // test vector 1
      testVector0 = 6'b100000;
      testVector1 = 6'b000000;
      # 50;
      // test vector 1
      testVector0 = 6'b000000;
      testVector1 = 6'b100000;
      # 50;
      // test vector 1
      testVector0 = 6'b001000;
      testVector1 = 6'b100000;
      # 50;
      // test vector 1
      testVector0 = 6'b010000;
      testVector1 = 6'b000000;
      # 50;
      // test vector 1
      testVector0 = 6'b001000;
      testVector1 = 6'b010000;
      # 50;
      // test vector 1
      testVector0 = 6'b000000;
      testVector1 = 6'b010000;
      # 50;
      // test vector 1
      testVector0 = 6'b001000;
      testVector1 = 6'b000000;
      # 50;
      // test vector 1
      testVector0 = 6'b000000;
      testVector1 = 6'b001000;
      # 50;
      // test vector 1
      testVector0 = 6'b000100;
      testVector1 = 6'b001000;
      # 50;
      // test vector 1
      testVector0 = 6'b000100;
      testVector1 = 6'b000000;
      # 50;
      // test vector 1
      testVector0 = 6'b000000;
      testVector1 = 6'b000100;
      # 50;
      // test vector 1
      testVector0 = 6'b000010;
      testVector1 = 6'b000100;
      # 50;
      // test vector 1
      testVector0 = 6'b000010;
      testVector1 = 6'b000000;
      # 50;
      // test vector 1
      testVector0 = 6'b000000;
      testVector1 = 6'b000010;
      # 50;
      // test vector 1
      testVector0 = 6'b000001;
      testVector1 = 6'b000010;
      # 50;
      // test vector 1
      testVector0 = 6'b000001;
      testVector1 = 6'b000000;
      # 50;
      // test vector 1
      testVector0 = 6'b000000;
      testVector1 = 6'b000001;
      # 50;
      // stop simulation
      $stop;
   end
endmodule