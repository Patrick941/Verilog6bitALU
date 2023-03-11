//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 15:39:25
// Design Name: 6 bit ALU
// Module Name: GreaterOrEqual1bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////
module GreaterOrEqual1bit
   // I/O ports
   (
    input wire i0, i1,
    output wire eq
   );

   // signal declaration
   wire p0, p1;

   // body
   // sum of two product terms
   assign eq = p0 | p1;
   // product terms
   assign p0 = i0;
   assign p1 = ~i0 | ~i1;

endmodule