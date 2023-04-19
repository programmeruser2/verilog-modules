module add_one_test;
	reg [7:0] in;
	wire [7:0] out;
	add_one uut(
		.in(in),
		.out(out)
	);
	integer i;
	initial begin
		$dumpfile("add_one.vcd");
		$dumpvars(0, add_one_test);
		$monitor("in=%d, out=%d", in, out);
		for (i = 0; i <= 255; i = i + 1) begin
			in = i;
			#10;
		end
	end
endmodule
