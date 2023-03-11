//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 20:25:25
// Design Name: 6 bit ALU
// Module Name: GreaterThan1bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////
module EqualTo1bit
    // I/O ports
    (
        input wire i0, i1,
        output wire EqualTo
    );

        wire bothHigh, bothLow;

    // Check if both are high and if both are low
    assign bothHigh = i0 & i1;
    assign bothLow = ~i0 & ~i1;
    
    // If both are high or if both are low write equals high
    assign EqualTo = bothHigh | bothLow;

endmodule