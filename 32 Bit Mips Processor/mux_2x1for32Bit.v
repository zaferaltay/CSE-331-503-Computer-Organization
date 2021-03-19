module mux_2x1for32Bit(inp0,inp1,select,out);

input [31:0]inp0;
input [31:0]inp1;
input select;
output [31:0] out;


mux_2x1 bit0(inp0[0],inp1[0],select,out[0]);
mux_2x1 bit1(inp0[1],inp1[1],select,out[1]);
mux_2x1 bit2(inp0[2],inp1[2],select,out[2]);
mux_2x1 bit3(inp0[3],inp1[3],select,out[3]);
mux_2x1 bit4(inp0[4],inp1[4],select,out[4]);
mux_2x1 bit5(inp0[5],inp1[5],select,out[5]);
mux_2x1 bit6(inp0[6],inp1[6],select,out[6]);
mux_2x1 bit7(inp0[7],inp1[7],select,out[7]);
mux_2x1 bit8(inp0[8],inp1[8],select,out[8]);
mux_2x1 bit9(inp0[9],inp1[9],select,out[9]);
mux_2x1 bit10(inp0[10],inp1[10],select,out[10]);
mux_2x1 bit11(inp0[11],inp1[11],select,out[11]);
mux_2x1 bit12(inp0[12],inp1[12],select,out[12]);
mux_2x1 bit13(inp0[13],inp1[13],select,out[13]);
mux_2x1 bit14(inp0[14],inp1[14],select,out[14]);
mux_2x1 bit15(inp0[15],inp1[15],select,out[15]);
mux_2x1 bit16(inp0[16],inp1[16],select,out[16]);
mux_2x1 bit17(inp0[17],inp1[17],select,out[17]);
mux_2x1 bit18(inp0[18],inp1[18],select,out[18]);
mux_2x1 bit19(inp0[19],inp1[19],select,out[19]);
mux_2x1 bit20(inp0[20],inp1[20],select,out[20]);
mux_2x1 bit21(inp0[21],inp1[21],select,out[21]);
mux_2x1 bit22(inp0[22],inp1[22],select,out[22]);
mux_2x1 bit23(inp0[23],inp1[23],select,out[23]);
mux_2x1 bit24(inp0[24],inp1[24],select,out[24]);
mux_2x1 bit25(inp0[25],inp1[25],select,out[25]);
mux_2x1 bit26(inp0[26],inp1[26],select,out[26]);
mux_2x1 bit27(inp0[27],inp1[27],select,out[27]);
mux_2x1 bit28(inp0[28],inp1[28],select,out[28]);
mux_2x1 bit29(inp0[29],inp1[29],select,out[29]);
mux_2x1 bit30(inp0[30],inp1[30],select,out[30]);
mux_2x1 bit31(inp0[31],inp1[31],select,out[31]);

endmodule