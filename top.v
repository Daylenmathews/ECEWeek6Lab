module top(
input [7:0] sw,
output [5:0] led
);
light light_inst(
.downstairs (sw[0]),
.upstairs (sw[1]),
.stair_light (led[0])
);

adder adder_inst(
.A(sw[2]),
.B(sw[3]),
.Y(led[1]),
.Carry(led[2])
);
wire cout_out;
full_adder full_adder_inst1(
.cin(0),
.A(sw[4]),
.B(sw[6]),
.Y(led[3]),
.cout(cout_out)
);

full_adder full_adder_inst2(
.A(sw[5]),
.B(sw[7]),
.cin(cout_out),
.Y(led[4]),
.cout(led[5])
);


endmodule
