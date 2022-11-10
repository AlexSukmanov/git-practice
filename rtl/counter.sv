module counter #(
  parameter int COUNT_NUM = 10000
) (
  input logic clk,
  input logic rstn,
  output logic counted
);

  logic [$clog2(COUNT_NUM)-1:0] cnt;
  always_ff @(posedge clk) begin
    if (!rstn) begin
      cnt <= '0;
    end else begin
      cnt <= cnt + 1;
    end
  end
  // TODO
  // documentation
  assign counted = (cnt == COUNT_NUM) ? 1 : 0; 
endmodule