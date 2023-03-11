//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 15:47:25
// Design Name: 6 bit ALU
// Module Name: GreaterOrEqual2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module EqualTo2bitTB;
   // signal declaration
   reg  [1:0] testVector0, testVector1;
   wire EqualToResult;

   // Call 2 bit Greater than and output the value in the waveform
   EqualTo2bit EQComparatorUnit(.a(testVector0), .b(testVector1), .GreaterThan(EqualToResult));
   
   initial
   begin
      // test vector 1
      testVector0 = 2'b00;
      testVector1 = 2'b00;
      # 50;
      // test vector 2
      testVector0 = 2'b00;
      testVector1 = 2'b01;
      # 50;
      // test vector 3
      testVector0 = 2'b00;
      testVector1 = 2'b11;
      # 50;
      // test vector 4
      testVector0 = 2'b01;
      testVector1 = 2'b01;
      # 50;
      // test vector 5
      testVector0 = 2'b01;
      testVector1 = 2'b10;
      # 50;
      // test vector 6
      testVector0 = 2'b01;
      testVector1 = 2'b11;
      # 50;
      // test vector 7
      testVector0 = 2'b10;
      testVector1 = 2'b10;
      # 50;
      // test vector 8
      testVector0 = 2'b10;
      testVector1 = 2'b11;
      # 50;
      // test vector 9
      testVector0 = 2'b10;
      testVector1 = 2'b01;
      # 50;
      // test vector 10
      testVector0 = 2'b11;
      testVector1 = 2'b11;
      # 50;
      // test vector 11
      testVector0 = 2'b11;
      testVector1 = 2'b01;
      # 50;
      // test vector 12
      testVector0 = 2'b11;
      testVector1 = 2'b00;
      # 50
      // test vector 13
      testVector0 = 2'b11;
      testVector1 = 2'b00;
      # 50;
      // stop simulation
      $stop;
   end
endmodule