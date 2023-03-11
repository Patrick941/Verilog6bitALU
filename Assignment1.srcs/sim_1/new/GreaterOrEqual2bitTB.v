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

module GreaterOrEqual2bitTB;
   // signal declaration
   reg  [1:0] test_in0, test_in1;
   wire  GTtest_out, GTtest_out1, GTtest_out2;

   // instantiate the circuit under test
   GreaterOrEqual2bit GTComparatorUnit
      (.a(test_in0), .b(test_in1), .aeqb(GTtest_out), .aeqb1(GTtest_out1), .aeqb2(GTtest_out2));
   
   initial
   begin
      // test vector 1
      test_in0 = 2'b00;
      test_in1 = 2'b00;
      # 200;
      // test vector 1
      test_in0 = 2'b00;
      test_in1 = 2'b01;
      # 200;
      // test vector 1
      test_in0 = 2'b00;
      test_in1 = 2'b11;
      # 200;
      // test vector 2
      test_in0 = 2'b01;
      test_in1 = 2'b01;
      # 200;
      // test vector 2
      test_in0 = 2'b01;
      test_in1 = 2'b10;
      # 200;
      // test vector 3
      test_in0 = 2'b01;
      test_in1 = 2'b11;
      # 200;
      // test vector 4
      test_in0 = 2'b10;
      test_in1 = 2'b10;
      # 200;
       // test vector 5
      test_in0 = 2'b10;
      test_in1 = 2'b11;
      # 200;
       // test vector 5
      test_in0 = 2'b10;
      test_in1 = 2'b01;
      # 200;
      // test vector 6
      test_in0 = 2'b11;
      test_in1 = 2'b11;
      # 200;
      // test vector 7
      test_in0 = 2'b11;
      test_in1 = 2'b01;
      # 200;
      // test vector 7
      test_in0 = 2'b11;
      test_in1 = 2'b00;
      // test vector 7
      test_in0 = 2'b11;
      test_in1 = 2'b00;
      # 200;
      // stop simulation
      $stop;
   end
   /*
   initial begin
    $monitor("t=%3d x=%d,y=%d,z=%d \n",$time,x,y,z, );
   end*/

endmodule