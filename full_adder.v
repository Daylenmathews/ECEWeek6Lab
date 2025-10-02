module full_adder( 
input A,
input B,
input cin,
output Y,
output cout
);
assign Y=A^B^cin;
assign cout= (A&B)|(B&cin)|(A&cin);
endmodule
