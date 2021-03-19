module mux_2x1for5Bit(inp0,inp1,sel,out);

input [4:0]inp0;
input [4:0]inp1;
input sel;
output [4:0]out;

mux_2x1 bit0(inp0[0],inp1[0],sel,out[0]);
mux_2x1 bit1(inp0[1],inp1[1],sel,out[1]);
mux_2x1 bit2(inp0[2],inp1[2],sel,out[2]);
mux_2x1 bit3(inp0[3],inp1[3],sel,out[3]);
mux_2x1 bit4(inp0[4],inp1[4],sel,out[4]);

endmodule