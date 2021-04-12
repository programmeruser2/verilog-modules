module clock_inverter(
  input clk,
  output reg out
);
  always @(clk) begin
        out <= ~clk;
    end
endmodule
