//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: Patrick Farmer 20331828
// 
// Create Date: 11.03.2023 16:09:25
// Design Name: 6 bit ALU
// Module Name: GreaterOrEqual2bit
// Target Devices: BASYS 3
// 
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////
// For the second segment display a tutorial was followed from FPGA4Student.
// This link is as follows:
// https://www.fpga4student.com/2017/09/seven-segment-led-display-controller-basys3-fpga.html
// The code found below was created by following this tutorial then adapting the resulting
// code for the specific purpose of this assignment
//////////////////////////////////////////////////////////////////////////////////

module ALUPeripheralController(
    input clock_100Mhz,                 // 100 Mhz clock source found at port
    input reset,                        // reset
    output reg [3:0] sections,           // sections of the display representing each number
    output reg [6:0] segments,          // cathode patterns of the 7-segment LED display
    input [5:0] inputA, inputB,
    input [2:0] fxn,
    output [15:0] led
    );
    wire [5:0] SelectA, SelectB, SelectNegativeA, SelectNegativeB, AxnorB, AplusB, AminusB;
    reg [5:0] outputVector;
    wire ALessThanB;
    reg [7:0] displayed_number;         // number to be displayed
    reg [3:0] individualNumber;         // Displays a single number between 0 and 9 in one sections of the display
    reg [19:0] refresh_counter;         // 20-bit for creating 10.5ms refresh period or 380Hz refresh rate
    wire [1:0] sectionEnabler;          // Used to seperate which sections of the display should be illuminated at a given time
    wire plusOverflow, minusOverflow;
    reg overflow;

    // For future Patrick:
    ALU6bit ALU_unit (.inputA(inputA), .inputB(inputB), .fxn(fxn), .plusOverflow(plusOverflow),
    .outputSelectA(SelectA), .outputSelectB(SelectB), .outputSelectNegativeA(SelectNegativeA), 
    .outputSelectNegativeB(SelectNegativeB), .outputALessThanB(ALessThanB), .outputAxnorB(AxnorB), .outputAplusB(AplusB), 
    .outputAminusB(AminusB));

    assign led[15] = inputA[5];
    assign led[14] = inputA[4];
    assign led[13] = inputA[3];
    assign led[12] = inputA[2];
    assign led[11] = inputA[1];
    assign led[10] = inputA[0];
    assign led[9] = inputB[5];
    assign led[8] = inputB[4];
    assign led[7] = inputB[3];
    assign led[6] = inputB[2];
    assign led[5] = inputB[1];
    assign led[4] = inputB[0];
    assign led[3] = fxn[2];
    assign led[2] = fxn[1];
    assign led[1] = fxn[0];
    // Counter to refresh the display at a given interval so that each LED segment can have 
    // seperate values set to it and it will appear to the human eye as if they are all on
    // at the same time with different numbers whereas they are actually taking turns in the
    // intervals given below

    always @ (inputA or inputB or fxn) begin
        case (fxn)
            3'b000:         outputVector = inputA;
            3'b001:         outputVector = inputB;
            3'b010:         outputVector = SelectNegativeA;
            3'b011:         outputVector = SelectNegativeB;
            3'b100:         outputVector = ALessThanB;
            3'b101:         outputVector = AxnorB;
            3'b110:         outputVector = AplusB;
            3'b111:         outputVector = AminusB;
            default:            outputVector = 6'bXXXXXX;
        endcase
        case (fxn)
            3'b110:         overflow = plusOverflow;
            3'b111:         overflow = minusOverflow;
            default:        overflow = 1'b0;
        endcase
    end

    always @(posedge clock_100Mhz or posedge reset)
    begin 
        if(reset==1)
            refresh_counter <= 0;
        else
            refresh_counter <= refresh_counter + 1;
    end 
    assign sectionEnabler = refresh_counter[19:18];

    // Everytime the clock cycle updates activate this loop to show each number on the display
    always @(*)
    begin
        // Allow only one of the 4 sections of the display to be enabled at once
        case(sectionEnabler)
        2'b00: begin
            // Only light sections 1
            sections = 4'b1110;             
            if(outputVector[5] == 0) begin
                individualNumber = outputVector[4:0] % 10;
            end
            else 
                individualNumber = (64 - outputVector[5:0]) % 10;
        end
        2'b01: begin
            // Only light sections 2
            sections = 4'b1101; 
            if(outputVector[5] == 0) begin
                individualNumber = outputVector[4:0] / 10;
            end
            else 
                individualNumber = (64 - outputVector[5:0]) / 10;
        end
        2'b10: begin
            // Only light sections 3 and display sign
            if(outputVector[5] == 1) begin
                sections = 4'b1011;
                individualNumber = 4'b1111;
            end
            else 
                sections = 4'b1111;
        end
        2'b11: begin
            // Only light section 4 and display overflow value
            if(overflow == 1) begin
                sections = 4'b0111;
                individualNumber = 4'b1110;
            end         
            else sections = 4'b1111;
        end
        endcase
    end
    
    // Always block to automatically convert a number between 0-9 to light up the 
    // appropriate segments of the display to represent this number
    always @(*)
    begin
        case(individualNumber)
        4'b0000: segments = 7'b0000001; // "0"     
        4'b0001: segments = 7'b1001111; // "1" 
        4'b0010: segments = 7'b0010010; // "2" 
        4'b0011: segments = 7'b0000110; // "3" 
        4'b0100: segments = 7'b1001100; // "4" 
        4'b0101: segments = 7'b0100100; // "5" 
        4'b0110: segments = 7'b0100000; // "6" 
        4'b0111: segments = 7'b0001111; // "7" 
        4'b1000: segments = 7'b0000000; // "8"     
        4'b1001: segments = 7'b0000100; // "9" 
        4'b1111: segments = 7'b1111110; // "-"
        4'b1110: segments = 7'b0110000; // "E"
        default: segments = 7'b0000001; // "0"
        endcase
    end
 endmodule