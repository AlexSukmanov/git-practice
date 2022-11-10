module counter_tb();
  localparam PERIOD = 10;
  
  bit clk;
  logic rstn;
  logic counted;

  // -------------------------------------------------------
  // dut inst
  counter #(
      .COUNT_NUM    (10000)
  ) dut (
      .clk          (clk),
      .rstn         (rstn),
      .counted      (counted)
  );
  always #(PERIOD/2) clk = ~clk;

  initial begin
    rstn = 0;
    #(PERIOD * 10);
    rstn = 1;
    @(posedge counted);
    $finish(); 
  end
endmodule

