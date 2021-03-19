module thirtyTwoBitAlu(reg1,reg2,op,zero,result);

input [31:0] reg1;
input [31:0] reg2;
output [31:0] result;
input [2:0] op;
output zero;

wire sett,overflow;
wire r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31;
wire c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31;

onebitalu bit0(reg2[0],reg1[0],op[2],op,r0,c0);
onebitalu bit1(reg2[1],reg1[1],c0,op,r1,c1);
onebitalu bit2(reg2[2],reg1[2],c1,op,r2,c2);
onebitalu bit3(reg2[3],reg1[3],c2,op,r3,c3);
onebitalu bit4(reg2[4],reg1[4],c3,op,r4,c4);
onebitalu bit5(reg2[5],reg1[5],c4,op,r5,c5);
onebitalu bit6(reg2[6],reg1[6],c5,op,r6,c6);
onebitalu bit7(reg2[7],reg1[7],c6,op,r7,c7);
onebitalu bit8(reg2[8],reg1[8],c7,op,r8,c8);
onebitalu bit9(reg2[9],reg1[9],c8,op,r9,c9);
onebitalu bit10(reg2[10],reg1[10],c9,op,r10,c10);
onebitalu bit11(reg2[11],reg1[11],c10,op,r11,c11);
onebitalu bit12(reg2[12],reg1[12],c11,op,r12,c12);
onebitalu bit13(reg2[13],reg1[13],c12,op,r13,c13);
onebitalu bit14(reg2[14],reg1[14],c13,op,r14,c14);
onebitalu bit15(reg2[15],reg1[15],c14,op,r15,c15);
onebitalu bit16(reg2[16],reg1[16],c15,op,r16,c16);
onebitalu bit17(reg2[17],reg1[17],c16,op,r17,c17);
onebitalu bit18(reg2[18],reg1[18],c17,op,r18,c18);
onebitalu bit19(reg2[19],reg1[19],c18,op,r19,c19);
onebitalu bit20(reg2[20],reg1[20],c19,op,r20,c20);
onebitalu bit21(reg2[21],reg1[21],c20,op,r21,c21);
onebitalu bit22(reg2[22],reg1[22],c21,op,r22,c22);
onebitalu bit23(reg2[23],reg1[23],c22,op,r23,c23);
onebitalu bit24(reg2[24],reg1[24],c23,op,r24,c24);
onebitalu bit25(reg2[25],reg1[25],c24,op,r25,c25);
onebitalu bit26(reg2[26],reg1[26],c25,op,r26,c26);
onebitalu bit27(reg2[27],reg1[27],c26,op,r27,c27);
onebitalu bit28(reg2[28],reg1[28],c27,op,r28,c28);
onebitalu bit29(reg2[29],reg1[29],c28,op,r29,c29);
onebitalu bit30(reg2[30],reg1[30],c29,op,r30,c30);
onebitaluMsb bit31(reg2[31],reg1[31],c30,op,r31,c31,sett,overflow);

or(or1,r0,r1);
or(or2,r2,r3);
or(or3,r4,r5);
or(or4,r7,r6);
or(or5,r8,r9);
or(or6,r11,r10);
or(or7,r12,r13);
or(or8,r15,r14);
or(or9,r16,r17);
or(or10,r18,r19);
or(or11,r20,r21);
or(or12,r23,r22);
or(or13,r24,r25);
or(or14,r27,r26);
or(or15,r28,r29);
or(or16,r30,r31);

or(or17,or1,or2);
or(or18,or3,or4);
or(or19,or5,or6);
or(or20,or7,or8);
or(or21,or9,or10);
or(or22,or11,or12);
or(or23,or13,or14);
or(or24,or15,or16);

or(or25,or17,or18);
or(or26,or19,or20);
or(or27,or21,or22);
or(or28,or23,or24);

or(or29,or25,or26);
or(or30,or27,or28);

or(or31,or29,or30);
not(zero,or31);


assign result[0]=r0;
assign result[1]=r1;
assign result[2]=r2;
assign result[3]=r3;
assign result[4]=r4;
assign result[5]=r5;
assign result[6]=r6;
assign result[7]=r7;
assign result[8]=r8;
assign result[9]=r9;
assign result[10]=r10;
assign result[11]=r11;
assign result[12]=r12;
assign result[13]=r13;
assign result[14]=r14;
assign result[15]=r15;
assign result[16]=r16;
assign result[17]=r17;
assign result[18]=r18;
assign result[19]=r19;
assign result[20]=r20;
assign result[21]=r21;
assign result[22]=r22;
assign result[23]=r23;
assign result[24]=r24;
assign result[25]=r25;
assign result[26]=r26;
assign result[27]=r27;
assign result[28]=r28;
assign result[29]=r29;
assign result[30]=r30;
assign result[31]=r31;

endmodule






