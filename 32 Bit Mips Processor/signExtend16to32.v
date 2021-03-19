module signExtend16to32(inp1,out1);

input [15:0]inp1;
output [31:0]out1;

wire sel =inp1[15];

mux_2x1for16bit extend(1'b0,1'b1,sel,out1[31:16]);
assign out1[15:0]=inp1;

endmodule