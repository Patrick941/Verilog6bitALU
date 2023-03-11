//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 15:39:25
// Design Name: 6 bit ALU
// Module Name: GreaterThan1bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////
module GreaterThan1bit
   // I/O ports
   (
      input wire i0, i1,
      output wire eq
   );

   // Only scnearion where there is a 1bit greater than is when i0 is high and i1 is low
   assign eq = i0 & ~i1;

endmodule