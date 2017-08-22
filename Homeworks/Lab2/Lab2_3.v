module Lab2_3(

	input [3:0] a,  //a son los switches 3-0
	input [3:0] b,  //b son los switches 15-11
	input ci,		 //cin es el switch 10
	output [3:0] s,
	output cout
);

wire co1,co2,co3;

FullAdder fa1 (
	.ci(ci),
	.a(a[0]),
	.b(b[0]),
	.s(s[0]),
	.co(co1)
);

FullAdder fa2 (
	.ci(co1),
	.a(a[1]),
	.b(b[1]),
	.s(s[1]),
	.co(co2)
);

FullAdder fa3 (
	.ci(co2),
	.a(a[2]),
	.b(b[2]),
	.s(s[2]),
	.co(co3)
);

FullAdder fa4 (
	.ci(co3),
	.a(a[3]),
	.b(b[3]),
	.s(s[3]),
	.co(cout)
);

	
endmodule