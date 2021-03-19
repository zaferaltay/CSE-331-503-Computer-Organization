module restrict32to18(inp,out);

input [31:0]inp;
output [17:0] out;

assign out=inp[17:0];

endmodule