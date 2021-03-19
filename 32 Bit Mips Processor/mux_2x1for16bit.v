module mux_2x1for16bit(inp0,inp1,sel,out);

input inp0;
input inp1;
input sel;

output [15:0]out;

mux_2x1 bit0(inp0,inp1,sel,out[0]);
mux_2x1 bit1(inp0,inp1,sel,out[1]);
mux_2x1 bit2(inp0,inp1,sel,out[2]);
mux_2x1 bit3(inp0,inp1,sel,out[3]);
mux_2x1 bit4(inp0,inp1,sel,out[4]);
mux_2x1 bit5(inp0,inp1,sel,out[5]);
mux_2x1 bit6(inp0,inp1,sel,out[6]);
mux_2x1 bit7(inp0,inp1,sel,out[7]);
mux_2x1 bit8(inp0,inp1,sel,out[8]);
mux_2x1 bit9(inp0,inp1,sel,out[9]);
mux_2x1 bit10(inp0,inp1,sel,out[10]);
mux_2x1 bit11(inp0,inp1,sel,out[11]);
mux_2x1 bit12(inp0,inp1,sel,out[12]);
mux_2x1 bit13(inp0,inp1,sel,out[13]);
mux_2x1 bit14(inp0,inp1,sel,out[14]);
mux_2x1 bit15(inp0,inp1,sel,out[15]);

endmodule