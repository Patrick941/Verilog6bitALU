module FullAdder1bit(a, b, cin, s, cout);
    // 3C7 LabD 2010
    // a and b are the bits to add
    // cin is carry in
    input wire i0, i1, cin;
  
    // s is the sum of a and b. cout is any carry out bit
    // wires since just using assign here
    output wire sum, cout;

    // logic for sum and carry
    assign s = (cin ^ a ^ b) | (a & b & cin);
    //assign s = 0;
    assign cout = (b & cin) | (a & cin) | (a & b); 
    //assign cout = 1;
  
endmodule
