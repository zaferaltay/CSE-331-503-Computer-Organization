module thirtyTwoBitComparator(inpa,inpb,outgt,outeq,outlt);

input [31:0] inpa;
input [31:0] inpb;
output outgt,outeq,outlt;

oneBitComparator bit31(1'b0,1'b1,1'b0,inpa[31],inpb[31],ogt31,oeq31,olt31);
oneBitComparator bit30(ogt31,oeq31,olt31,inpa[30],inpb[30],ogt30,oeq30,olt30);
oneBitComparator bit29(ogt30,oeq30,olt30,inpa[29],inpb[29],ogt29,oeq29,olt29);
oneBitComparator bit28(ogt29,oeq29,olt29,inpa[28],inpb[28],ogt28,oeq28,olt28);
oneBitComparator bit27(ogt28,oeq28,olt28,inpa[27],inpb[27],ogt27,oeq27,olt27);
oneBitComparator bit26(ogt27,oeq27,olt27,inpa[26],inpb[26],ogt26,oeq26,olt26);
oneBitComparator bit25(ogt26,oeq26,olt26,inpa[25],inpb[25],ogt25,oeq25,olt25);
oneBitComparator bit24(ogt25,oeq25,olt25,inpa[24],inpb[24],ogt24,oeq24,olt24);
oneBitComparator bit23(ogt24,oeq24,olt24,inpa[23],inpb[23],ogt23,oeq23,olt23);
oneBitComparator bit22(ogt23,oeq23,olt23,inpa[22],inpb[22],ogt22,oeq22,olt22);
oneBitComparator bit21(ogt22,oeq22,olt22,inpa[21],inpb[21],ogt21,oeq21,olt21);
oneBitComparator bit20(ogt21,oeq21,olt21,inpa[20],inpb[20],ogt20,oeq20,olt20);
oneBitComparator bit19(ogt20,oeq20,olt20,inpa[19],inpb[19],ogt19,oeq19,olt19);
oneBitComparator bit18(ogt19,oeq19,olt19,inpa[18],inpb[18],ogt18,oeq18,olt18);
oneBitComparator bit17(ogt18,oeq18,olt18,inpa[17],inpb[17],ogt17,oeq17,olt17);
oneBitComparator bit16(ogt17,oeq17,olt17,inpa[16],inpb[16],ogt16,oeq16,olt16);
oneBitComparator bit15(ogt16,oeq16,olt16,inpa[15],inpb[15],ogt15,oeq15,olt15);
oneBitComparator bit14(ogt15,oeq15,olt15,inpa[14],inpb[14],ogt14,oeq14,olt14);
oneBitComparator bit13(ogt14,oeq14,olt14,inpa[13],inpb[13],ogt13,oeq13,olt13);
oneBitComparator bit12(ogt13,oeq13,olt13,inpa[12],inpb[12],ogt12,oeq12,olt12);
oneBitComparator bit11(ogt12,oeq12,olt12,inpa[11],inpb[11],ogt11,oeq11,olt11);
oneBitComparator bit10(ogt11,oeq11,olt11,inpa[10],inpb[10],ogt10,oeq10,olt10);
oneBitComparator bit9(ogt10,oeq10,olt10,inpa[9],inpb[9],ogt9,oeq9,olt9);
oneBitComparator bit8(ogt9,oeq9,olt9,inpa[8],inpb[8],ogt8,oeq8,olt8);
oneBitComparator bit7(ogt8,oeq8,olt8,inpa[7],inpb[7],ogt7,oeq7,olt7);
oneBitComparator bit6(ogt7,oeq7,olt7,inpa[6],inpb[6],ogt6,oeq6,olt6);
oneBitComparator bit5(ogt6,oeq6,olt6,inpa[5],inpb[5],ogt5,oeq5,olt5);
oneBitComparator bit4(ogt5,oeq5,olt5,inpa[4],inpb[4],ogt4,oeq4,olt4);
oneBitComparator bit3(ogt4,oeq4,olt4,inpa[3],inpb[3],ogt3,oeq3,olt3);
oneBitComparator bit2(ogt3,oeq3,olt3,inpa[2],inpb[2],ogt2,oeq2,olt2);
oneBitComparator bit1(ogt2,oeq2,olt2,inpa[1],inpb[1],ogt1,oeq1,olt1);
oneBitComparator bit0(ogt1,oeq1,olt1,inpa[0],inpb[0],outgt,outeq,outlt);

endmodule


