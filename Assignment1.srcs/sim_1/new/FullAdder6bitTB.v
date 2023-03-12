// Listing 1.7
// The `timescale directive specifies that
// the simulation time unit is 1 ns  and
// the simulation timestep is 10 ps
//`timescale 1 ns/10 ps

module FullAdder6bitTB;
    // signal declaration
    reg  [5:0] vector0, vector1;
    wire [5:0] sumResult, 
    wire carryResult, overflow;

    FullAdder6bit adder_unit (  .inputA(vector0), .inputB(vector1), .sumOutput(sumResult),
                                .carryOut(carryResult), .overflow(overflow));
    initial
    begin
        // test vector 1
        vector0 = 6'b000000;
        vector1 = 6'b000000;
        # 50;
        
        $stop;
    end

endmodule