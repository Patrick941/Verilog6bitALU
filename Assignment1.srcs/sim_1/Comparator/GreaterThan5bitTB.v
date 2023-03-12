//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 12.03.2023 12:56:25
// Design Name: 6 bit ALU
// Module Name: GreaterOrEqual2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module GreaterThan5bitTB;
   // signal declaration
   reg  [4:0] testVector0, testVector1;
   wire GreaterThanResult;

   // Call 2 bit Greater than and output the value in the waveform
   //EqualTo6bit EQComparatorUnit(.vector0(testVector0), .vector1(testVector1), .EqualTo(EqualToResult));
   GreaterThan5bit GTComparatorUnit (.vector0(testVector0), .vector1(testVector1), .GreaterThan(GreaterThanResult));
   
   initial
   begin
      // test vector 1
      testVector0 = 5'b00000;
      testVector1 = 5'b00000;
      # 50;
      // test vector 1
      testVector0 = 5'b11111;
      testVector1 = 5'b00000;
      # 50;
      // test vector 1
      testVector0 = 5'b00000;
      testVector1 = 5'b11111;
      # 50;
      // test vector 1
      testVector0 = 5'b01111;
      testVector1 = 5'b11111;
      # 50;
      // test vector 1
      testVector0 = 5'b11111;
      testVector1 = 5'b01111;
      # 50;
      // test vector 1
      testVector0 = 5'b00111;
      testVector1 = 5'b01111;
      # 50;
      // test vector 1
      testVector0 = 5'b01110;
      testVector1 = 5'b01111;
      # 50;
      // test vector 1
      testVector0 = 5'b01111;
      testVector1 = 5'b10111;
      # 50;
      // test vector 1
      testVector0 = 5'b11110;
      testVector1 = 5'b11111;
      # 50;
      // test vector 1
      testVector0 = 5'b11111;
      testVector1 = 5'b11110;
      # 50;
      // test vector 1
      testVector0 = 5'b00010;
      testVector1 = 5'b00001;
      # 50;
      // test vector 1
      testVector0 = 5'b01000;
      testVector1 = 5'b00100;
      # 50;
      // test vector 1
      testVector0 = 5'b01000;
      testVector1 = 5'b00010;
      # 50;
      // stop simulation
      $stop;
   end
endmodule