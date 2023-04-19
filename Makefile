COMPILER = iverilog
SIMULATOR = vvp
.PHONY: clean
%: %.v %_test.v
	$(COMPILER) -o $@.vvp $^
clean:
	rm *.vvp *.vcd
