module mux_4x1_32Bit(inpa,inpb,inpc,inpd,sel0,sel1,out);

input sel1,sel0;
input [31:0] inpa;
input [31:0] inpb;
input [31:0] inpc;
input [31:0] inpd;
output [31:0] out;

mult_4x1 bit0(inpa[0],inpb[0],inpc[0],inpd[0],sel0,sel1,out[0]);
mult_4x1 bit1(inpa[1],inpb[1],inpc[1],inpd[1],sel0,sel1,out[1]);
mult_4x1 bit2(inpa[2],inpb[2],inpc[2],inpd[2],sel0,sel1,out[2]);
mult_4x1 bit3(inpa[3],inpb[3],inpc[3],inpd[3],sel0,sel1,out[3]);
mult_4x1 bit4(inpa[4],inpb[4],inpc[4],inpd[4],sel0,sel1,out[4]);
mult_4x1 bit5(inpa[5],inpb[5],inpc[5],inpd[5],sel0,sel1,out[5]);
mult_4x1 bit6(inpa[6],inpb[6],inpc[6],inpd[6],sel0,sel1,out[6]);
mult_4x1 bit7(inpa[7],inpb[7],inpc[7],inpd[7],sel0,sel1,out[7]);
mult_4x1 bit8(inpa[8],inpb[8],inpc[8],inpd[8],sel0,sel1,out[8]);
mult_4x1 bit9(inpa[9],inpb[9],inpc[9],inpd[9],sel0,sel1,out[9]);
mult_4x1 bit10(inpa[10],inpb[10],inpc[10],inpd[10],sel0,sel1,out[10]);
mult_4x1 bit11(inpa[11],inpb[11],inpc[11],inpd[11],sel0,sel1,out[11]);
mult_4x1 bit12(inpa[12],inpb[12],inpc[12],inpd[12],sel0,sel1,out[12]);
mult_4x1 bit13(inpa[13],inpb[13],inpc[13],inpd[13],sel0,sel1,out[13]);
mult_4x1 bit14(inpa[14],inpb[14],inpc[14],inpd[14],sel0,sel1,out[14]);
mult_4x1 bit15(inpa[15],inpb[15],inpc[15],inpd[15],sel0,sel1,out[15]);
mult_4x1 bit16(inpa[16],inpb[16],inpc[16],inpd[16],sel0,sel1,out[16]);
mult_4x1 bit17(inpa[17],inpb[17],inpc[17],inpd[17],sel0,sel1,out[17]);
mult_4x1 bit18(inpa[18],inpb[18],inpc[18],inpd[18],sel0,sel1,out[18]);
mult_4x1 bit19(inpa[19],inpb[19],inpc[19],inpd[19],sel0,sel1,out[19]);
mult_4x1 bit20(inpa[20],inpb[20],inpc[20],inpd[20],sel0,sel1,out[20]);
mult_4x1 bit21(inpa[21],inpb[21],inpc[21],inpd[21],sel0,sel1,out[21]);
mult_4x1 bit22(inpa[22],inpb[22],inpc[22],inpd[22],sel0,sel1,out[22]);
mult_4x1 bit23(inpa[23],inpb[23],inpc[23],inpd[23],sel0,sel1,out[23]);
mult_4x1 bit24(inpa[24],inpb[24],inpc[24],inpd[24],sel0,sel1,out[24]);
mult_4x1 bit25(inpa[25],inpb[25],inpc[25],inpd[25],sel0,sel1,out[25]);
mult_4x1 bit26(inpa[26],inpb[26],inpc[26],inpd[26],sel0,sel1,out[26]);
mult_4x1 bit27(inpa[27],inpb[27],inpc[27],inpd[27],sel0,sel1,out[27]);
mult_4x1 bit28(inpa[28],inpb[28],inpc[28],inpd[28],sel0,sel1,out[28]);
mult_4x1 bit29(inpa[29],inpb[29],inpc[29],inpd[29],sel0,sel1,out[29]);
mult_4x1 bit30(inpa[30],inpb[30],inpc[30],inpd[30],sel0,sel1,out[30]);
mult_4x1 bit31(inpa[31],inpb[31],inpc[31],inpd[31],sel0,sel1,out[31]);



endmodule