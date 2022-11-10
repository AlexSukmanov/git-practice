module adder #(
  parameter WIDTH = 32;
) (
  input logic [WIDTH-1:0] a,  
  input logic [WIDTH-1:0] b,  
  output logic [WIDTH-1:0] c  
);

  assign c = a + b;
endmodule