module thirtyTwoBitFullAdder(inpa,inpb,out);

input [31:0]inpa;
input [31:0]inpb;
output [31:0]out;


oneBitFullAdder bit0(inpa[0],inpb[0],  1'b0,cout0,out[0]);
oneBitFullAdder bit1(inpa[1],inpb[1],cout0,cout1,out[1]);
oneBitFullAdder bit2(inpa[2],inpb[2],cout1,cout2,out[2]);
oneBitFullAdder bit3(inpa[3],inpb[3],cout2,cout3,out[3]);
oneBitFullAdder bit4(inpa[4],inpb[4],cout3,cout4,out[4]);
oneBitFullAdder bit5(inpa[5],inpb[5],cout4,cout5,out[5]);
oneBitFullAdder bit6(inpa[6],inpb[6],cout5,cout6,out[6]);
oneBitFullAdder bit7(inpa[7],inpb[7],cout6,cout7,out[7]);
oneBitFullAdder bit8(inpa[8],inpb[8],cout7,cout8,out[8]);
oneBitFullAdder bit9(inpa[9],inpb[9],cout8,cout9,out[9]);
oneBitFullAdder bit10(inpa[10],inpb[10],cout9,cout10,out[10]);
oneBitFullAdder bit11(inpa[11],inpb[11],cout10,cout11,out[11]);
oneBitFullAdder bit12(inpa[12],inpb[12],cout11,cout12,out[12]);
oneBitFullAdder bit13(inpa[13],inpb[13],cout12,cout13,out[13]);
oneBitFullAdder bit14(inpa[14],inpb[14],cout13,cout14,out[14]);
oneBitFullAdder bit15(inpa[15],inpb[15],cout14,cout15,out[15]);
oneBitFullAdder bit16(inpa[16],inpb[16],cout15,cout16,out[16]);
oneBitFullAdder bit17(inpa[17],inpb[17],cout16,cout17,out[17]);
oneBitFullAdder bit18(inpa[18],inpb[18],cout17,cout18,out[18]);
oneBitFullAdder bit19(inpa[19],inpb[19],cout18,cout19,out[19]);
oneBitFullAdder bit20(inpa[20],inpb[20],cout19,cout20,out[20]);
oneBitFullAdder bit21(inpa[21],inpb[21],cout20,cout21,out[21]);
oneBitFullAdder bit22(inpa[22],inpb[22],cout21,cout22,out[22]);
oneBitFullAdder bit23(inpa[23],inpb[23],cout22,cout23,out[23]);
oneBitFullAdder bit24(inpa[24],inpb[24],cout23,cout24,out[24]);
oneBitFullAdder bit25(inpa[25],inpb[25],cout24,cout25,out[25]);
oneBitFullAdder bit26(inpa[26],inpb[26],cout25,cout26,out[26]);
oneBitFullAdder bit27(inpa[27],inpb[27],cout26,cout27,out[27]);
oneBitFullAdder bit28(inpa[28],inpb[28],cout27,cout28,out[28]);
oneBitFullAdder bit29(inpa[29],inpb[29],cout28,cout29,out[29]);
oneBitFullAdder bit30(inpa[30],inpb[30],cout29,cout30,out[30]);
oneBitFullAdder bit31(inpa[31],inpb[31],cout30,cout31,out[31]);

endmodule