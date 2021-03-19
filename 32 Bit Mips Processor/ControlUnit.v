module ControlUnit(opcode,RegDest,SignExtend,Brn,Bne,lui,MemW,MemRead,MtoReg,AluOp1,AluOp0,AluSrc,RegWr,RegWr2,jmp,jal);

input [5:0]opcode;
output RegDest,SignExtend,Brn,Bne,lui,MemW,MemRead,MtoReg,AluOp1,AluOp0,AluSrc,RegWr,RegWr2,jmp,jal;

wire not5,not4,not3,not2,not1,not0;
wire rtype,lw,sw,ori,Lui,J,Jal,beq,bne;

not(not5,opcode[5]);
not(not4,opcode[4]);
not(not3,opcode[3]);
not(not2,opcode[2]);
not(not1,opcode[1]);
not(not0,opcode[0]);

and(rtype,not5,not4,not3,not2,not1,not0);
and(lw,opcode[5],not4,not3,not2,opcode[1],opcode[0]);
and(sw,opcode[5],not4,opcode[3],not2,opcode[1],opcode[0]);
and(ori,not5,not4,opcode[3],opcode[2],opcode[1],not0);
and(Lui,not5,not4,opcode[3],opcode[2],opcode[1],opcode[0]);
and(J,not5,not4,not3,not2,opcode[1],not0);
and(Jal,not5,not4,not3,not2,opcode[1],opcode[0]);
and(beq,not5,not4,not3,opcode[2],not1,not0);
and(bne,not5,not4,not3,opcode[2],not1,opcode[0]);


or(RegDest,lw,ori,lui);
or(SignExtend,lw,sw,beq,bne);
or(Brn,beq,1'b0);
or(Bne,bne,1'b0);
or(lui,Lui,1'b0);
or(MemW,sw,1'b0);
or(MemRead,lw,1'b0);
or(MtoReg,lw,1'b0);
or(AluOp1,rtype,1'b0);
or(AluOp0,beq,bne);
or(AluSrc,lw,sw,ori);
or(RegWr,rtype,lw,ori,lui);
or(RegWr2,rtype,Jal);
or(jal,Jal,1'b0);
or(jmp,J,Jal);









endmodule