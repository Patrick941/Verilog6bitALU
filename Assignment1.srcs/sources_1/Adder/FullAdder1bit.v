//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 16:32:25
// Design Name: 6 bit ALU
// Module Name: GreaterOrEqual2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module FullAdder1bit
    (
        input wire i0, i1, cin, 
        output wire sum, cout
    );

    // logic for sum and carry
    assign sum = (cin ^ i0 ^ i1) | (i0 & i1 & cin);
    //assign s = 0;
    assign cout = (i1 & cin) | (i0 & cin) | (i0 & i1); 
    //assign cout = 1;
  
endmodule
