module adder(
    // Declare your A/B inputs
    input A,
    input B,
    // Declare Y output
    output Y,
   
    // Declare carry output 
    output Carry
);
assign Y=A^B;
assign Carry=A&B;
    // Enter logic equation here

endmodule
