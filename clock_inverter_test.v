module clock_inverter_test;
	reg clk;
	wire out;
	clock_inverter uut(
		.clk(clk),
		.out(out)
	);
	initial begin
		$dumpfile("clock_inverter.vcd");
		$dumpvars(0, clock_inverter_test);
		clk = 1;
		#10;
		clk = 0;
		#10;
		clk = 1;
		#10;
	end
endmodule
