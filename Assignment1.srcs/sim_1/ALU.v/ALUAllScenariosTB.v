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

module ALUAllScenarios;
    // signal declaration
    reg  [5:0] inputA, inputB;
    wire [5:0] outputSelectA, outputSelectB, outputSelectNegativeA, outputSelectNegativeB; 
    wire [5:0] outputAxnorB, outputAplusB, outputAminusB;
    wire plusOverflow, minusOverflow, outputALessThanB;
    reg ALessThanBReal;
    

    ALU6bit ALU_unit (.inputA(inputA), .inputB(inputB), .outputSelectA(outputSelectA), .outputSelectB(outputSelectB), 
    .outputSelectNegativeA(outputSelectNegativeA), .outputSelectNegativeB(outputSelectNegativeB), .outputALessThanB(outputALessThanB), 
    .outputAxnorB(outputAxnorB), .outputAplusB(outputAplusB), .outputAminusB(outputAminusB), .plusOverflow(plusOverflow),
    .minusOverflow(minusOverflow));
   
   integer count1 = -32;
   integer count2 = -32;
   integer pollFlag = 0;
   integer error = 0;
   integer signedA, signedB;
   
   always @(pollFlag) begin
        if(inputA >= 32) signedA = -(64 - inputA);
        else signedA = inputA;
        if(inputB >= 32) signedB = -(64 - inputB);
        else signedB = inputB;
        if(outputSelectA != inputA) begin $monitor("SelectA should be: %d, SelectA is actually %d. For A = %d, B = %d", inputA, outputSelectA, inputA, inputB); error = 1; end
        else if (outputSelectB != inputB) begin $monitor("SelectB should be: %d, SelectB is actually %d. For A = %d, B = %d", inputB, outputSelectB, inputA, inputB); error = 1; end
        else if (outputSelectNegativeA != -inputA) begin $monitor("NegativeA should be: %d, NegativeA is actually %d. For A = %d, B = %d", -inputA, outputSelectNegativeA, inputA, inputB); error = 1; end
        else if (outputSelectNegativeB != -inputB) begin $monitor("NegativeB should be: %d, NegativeB is actually %d. For A = %d, B = %d", -inputB, outputSelectNegativeB, inputA, inputB); error = 1; end
        else if (signedA < signedB && (outputALessThanB == 0)) begin $monitor("A < B should be: 1, A < B is actually %b. For A = %d, B = %d", outputALessThanB, inputA, inputB); error = 1; end
        else if (signedA >= signedB && (outputALessThanB == 1)) begin $monitor("A < B should be: 0, A < B is actually %b. For A = %d, B = %d", outputALessThanB, inputA, inputB); error = 1; end
        else if (outputAxnorB != (inputA ~^ inputB)) begin $monitor("XNOR vector should be: %b, XNOR vector is actually %b. For A = %d, B = %d", (inputA ~^ inputB), outputAxnorB, inputA, inputB); error = 1; end
        else if (outputAplusB != (inputA + inputB)) begin $monitor("A + B should be %d, A + B is: %d, A is : %d, B is: %d", inputA +inputB, outputAplusB, inputA, inputB); error = 1; end
        else if (outputAminusB != (inputA - inputB)) begin $monitor("A - B should be %d, A - B is: %d, A is : %d, B is: %d", inputA -inputB, outputAminusB, inputA, inputB); error = 1; end
        else if (count1 == 31 && count2 == 32 && error == 0) $monitor("No errors occured at any point in the code");
   end
   
    initial 
    begin
       while(count1 <= 31) begin
            //test_in1 = count1;
            inputA = count1;
            while(count2 <= 31) begin
                inputB = count2;
                count2 = count2 + 1;
                #50;
                pollFlag = pollFlag + 1;
                #50;
                
            end
            count1 = count1 + 1;
            count2 = -32;
        end
                    
      
      
      // stop simulation
      $stop;
   end

endmodule