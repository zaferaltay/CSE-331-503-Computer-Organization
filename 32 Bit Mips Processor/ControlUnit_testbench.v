module ControlUnit_testbench();

reg [5:0]opcode;
wire RegDest,SignExtend,Brn,Bne,lui,MemW,MemRead,MtoReg,AluOp1,AluOp0,AluSrc,RegWr,RegWr2,jmp,jal;

ControlUnit test(opcode,RegDest,SignExtend,Brn,Bne,lui,MemW,MemRead,MtoReg,AluOp1,AluOp0,AluSrc,RegWr,RegWr2,jmp,jal);

initial begin
opcode = 6'b100011;
#100
opcode = 6'b101011;
#100
opcode = 6'b000000;
#100
opcode = 6'b001111;
#100
opcode = 6'b001110;
#100
opcode = 6'b000010;
#100
opcode = 6'b000011;
#100
opcode = 6'b000100;
#100
opcode = 6'b000101;

end
initial #1500 $finish;
initial begin
	$monitor("opcope : %b%b%b%b%b%b ,RegDest: %b ,SignExtend: %b,Brn: %b, Bne: %b, lui: %b, MemW : %b, MemRead : %b, MemtoReg :%b,AluOp1: %b, AluOp0: %b,AluSrc: %b, RegWr: %b ,RegWr: %b,Jmp : %b,Jal : %b",
				opcode[5],opcode[4],opcode[3],opcode[2],opcode[1],opcode[0],RegDest,SignExtend,Brn,Bne,lui,MemW,MemRead,
				MtoReg,AluOp1,AluOp0,AluSrc,RegWr,RegWr2,jmp,jal);
end

endmodule