module InstructionMemory(ReadAddress,Instruction);


input [31:0]ReadAddress;
output reg[31:0] Instruction;

reg [31:0] instructions [255:0];

always@(*)begin 
		Instruction = instructions[ReadAddress];
	end


endmodule