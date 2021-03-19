module mips32(clk);

input clk;
wire [31:0] inputPc;
wire [31:0] outPc;
wire [31:0] instruc;
wire [31:0] outJmpBox;
wire RegDest,SignExtend,Brn,Bne,lui,MemW,MemRead,MtoReg,AluOp1,AluOp0,AluSrc,RegWr,RegWr2,jmp,jal;
wire [31:0]firstInp;
wire [31:0] outFirstAdder;
wire [4:0] outWr;
wire [4:0] WR2;
wire [31:0] writeData1;
wire [31:0] WD2;
wire [31:0] RD1;
wire [31:0] RD2;
wire [31:0] outsign32;
wire [31:0] outzero32;
wire [31:0] outExtends;
wire [31:0] ALU2;
wire [31:0] outSecondAdder;
wire [2:0] aluControlOut;
wire [31:0] aluOut;
wire [31:0] outMux5;
wire [31:0] outmux7;
wire [31:0] outmux8;
wire [17:0] restrictOut;
wire [31:0] RDM;
wire [31:0] outmux10;
wire [31:0] outlui;
wire outrtypejr;

ProgramCounter pc(firstInp,outPc,clk);
InstructionMemory im(outPc,instruc);
jmpBox jb(outPc,instruc,outJmpBox);
thirtyTwoBitFullAdder firstAdder(outPc,32'b00000000000000000000000000000001,outFirstAdder);
ControlUnit cu(instruc[31:26],RegDest,SignExtend,Brn,Bne,lui,MemW,MemRead,MtoReg,AluOp1,AluOp0,AluSrc,RegWr,RegWr2,jmp,jal);
mux_2x1for5Bit mux1(instruc[25:21],instruc[20:16],RegDest,outWr);
mux_2x1for5Bit mux2(instruc[15:11],5'b11111,jal,WR2);
Registers register(RegWr,instruc[25:21],instruc[20:16],outWr,writeData1,RegWr2,WR2,WD2,RD1,RD2,clk);
signExtend16to32 se16t32(instruc[15:0],outsign32);
zeroExtend16to32 ze16t32(instruc[15:0],outzero32);
mux_2x1for32Bit mux3(outzero32,outsign32,SignExtend,outExtends);
mux_2x1for32Bit mux4(RD2,outExtends,AluSrc,ALU2);
thirtyTwoBitFullAdder secondAdder(outFirstAdder,outExtends,outSecondAdder);
AluControl ac(AluOp0,AluOp1,instruc[5:0],aluControlOut);
thirtyTwoBitAlu alu(RD1,ALU2,aluControlOut,zero,aluOut);
thirtyTwoBitComparator comparator(aluOut,32'b000000000000000000000000000000,outgt,outeq,outlt);
not(rtype,AluSrc);
selector4x2 selector(rtype,outgt,outeq,outlt,sel0,sel1);
mux_4x1_32Bit mux5(writeData1,32'b00000000000000000000000000000001,32'b00000000000000000000000000000010,32'b00000000000000000000000000000011,sel0,sel1,outMux5);
mux_2x1for32Bit mux6(outMux5,outFirstAdder,jal,WD2);
rtyepeJR rtypejr(instruc,outrtypejr);
mux_2x1for32Bit mux7(outJmpBox,RD1,outrtypejr,outmux7);
and(brnchout,Brn,zero);
not(notzero,zero);
and(bneout,Bne,notzero);
or(selbrnch,brnchout,bneout);
mux_2x1for32Bit mux8(outFirstAdder,outSecondAdder,selbrnch,outmux8);
mux_2x1for32Bit mux9(outmux8,outmux7,jmp,firstInp);
restrict32to18 r32t18(aluOut,restrictOut);
DataMemory dm(restrictOut,RD2,MemW,MemRead,RDM,clk);
mux_2x1for32Bit mux10(aluOut,RDM,MtoReg,outmux10);
forlui_16to32 luii(instruc[15:0],outlui);
mux_2x1for32Bit mux11(outmux10,outlui,lui,writeData1);





endmodule