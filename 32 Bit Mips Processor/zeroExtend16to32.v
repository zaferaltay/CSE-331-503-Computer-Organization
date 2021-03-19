module zeroExtend16to32(inp1,out1);

input [15:0] inp1;
output [31:0] out1;

assign out1[15:0]=inp1;
assign out1[31:16]=16'b0;

endmodule