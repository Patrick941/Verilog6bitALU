//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 16:56:25
// Design Name: 6 bit ALU
// Module Name: GreaterThan2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////

module TwosComplementConversion6bitTB;
    // signal declaration
    reg  [5:0] inputVector;
    wire [5:0] outputVector; 
    wire errorFlag;

    TwosComplementConversion6bit twos_complement_unit (.inputVector(inputVector), .outputVector(outputVector), .errorFlag(errorFlag));

    initial
    begin
        // Test Vector 1
        inputVector = 6'b000000;
        #50
        // Test Vector 1
        inputVector = 6'b000001;
        #50
        // Test Vector 1
        inputVector = 6'b000010;
        #50
        // Test Vector 1
        inputVector = 6'b000011;
        #50
        // Test Vector 1
        inputVector = 6'b000100;
        #50
        // Test Vector 1
        inputVector = 6'b000101;
        #50
        // Test Vector 1
        inputVector = 6'b000110;
        #50
        // Test Vector 1
        inputVector = 6'b000111;
        #50
        // Test Vector 1
        inputVector = 6'b001000;
        #50
        // Test Vector 1
        inputVector = 6'b001001;
        #50
        // Test Vector 1
        inputVector = 6'b001010;
        #50
        // Test Vector 1
        inputVector = 6'b001011;
        #50
        // Test Vector 1
        inputVector = 6'b001100;
        #50
        // Test Vector 1
        inputVector = 6'b001101;
        #50
        // Test Vector 1
        inputVector = 6'b001110;
        #50
        // Test Vector 1
        inputVector = 6'b001111;
        #50
        // Test Vector 1
        inputVector = 6'b010000;
        #50
        // Test Vector 1
        inputVector = 6'b010001;
        #50
        // Test Vector 1
        inputVector = 6'b010010;
        #50
        // Test Vector 1
        inputVector = 6'b010011;
        #50
        // Test Vector 1
        inputVector = 6'b010100;
        #50
        // Test Vector 1
        inputVector = 6'b010101;
        #50
        // Test Vector 1
        inputVector = 6'b010110;
        #50
        // Test Vector 1
        inputVector = 6'b010111;
        #50
        // Test Vector 1
        inputVector = 6'b011000;
        #50
        // Test Vector 1
        inputVector = 6'b011001;
        #50
        // Test Vector 1
        inputVector = 6'b011010;
        #50
        // Test Vector 1
        inputVector = 6'b011011;
        #50
        // Test Vector 1
        inputVector = 6'b011100;
        #50
        // Test Vector 1
        inputVector = 6'b011101;
        #50
        // Test Vector 1
        inputVector = 6'b011110;
        #50
        // Test Vector 1
        inputVector = 6'b011111;
        #50
        // Test Vector 1
        inputVector = 6'b100000;
        #50
        // Test Vector 1
        inputVector = 6'b100001;
        #50
        // Test Vector 1
        inputVector = 6'b100010;
        #50
        // Test Vector 1
        inputVector = 6'b100011;
        #50
        // Test Vector 1
        inputVector = 6'b100100;
        #50
        // Test Vector 1
        inputVector = 6'b100101;
        #50
        // Test Vector 1
        inputVector = 6'b100110;
        #50
        // Test Vector 1
        inputVector = 6'b100111;
        #50
        // Test Vector 1
        inputVector = 6'b101000;
        #50
        // Test Vector 1
        inputVector = 6'b101001;
        #50
        // Test Vector 1
        inputVector = 6'b101010;
        #50
        // Test Vector 1
        inputVector = 6'b101011;
        #50
        // Test Vector 1
        inputVector = 6'b101100;
        #50
        // Test Vector 1
        inputVector = 6'b101101;
        #50
        // Test Vector 1
        inputVector = 6'b101110;
        #50
        // Test Vector 1
        inputVector = 6'b101111;
        #50
        // Test Vector 1
        inputVector = 6'b110000;
        #50
        // Test Vector 1
        inputVector = 6'b110001;
        #50
        // Test Vector 1
        inputVector = 6'b110010;
        #50
        // Test Vector 1
        inputVector = 6'b110011;
        #50
        // Test Vector 1
        inputVector = 6'b110100;
        #50
        // Test Vector 1
        inputVector = 6'b110101;
        #50
        // Test Vector 1
        inputVector = 6'b110110;
        #50
        // Test Vector 1
        inputVector = 6'b110111;
        #50
        // Test Vector 1
        inputVector = 6'b111000;
        #50
        // Test Vector 1
        inputVector = 6'b111001;
        #50
        // Test Vector 1
        inputVector = 6'b111010;
        #50
        // Test Vector 1
        inputVector = 6'b111011;
        #50
        // Test Vector 1
        inputVector = 6'b111100;
        #50
        // Test Vector 1
        inputVector = 6'b111101;
        #50
        // Test Vector 1
        inputVector = 6'b111110;
        #50
        // Test Vector 1
        inputVector = 6'b111111;
        #50

        $stop;
    end

endmodule