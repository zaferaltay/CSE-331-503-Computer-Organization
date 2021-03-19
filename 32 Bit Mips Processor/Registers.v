module Registers(RegWrite,ReadReg1,ReadReg2,WriteReg1,WriteData1,RegWrite2,WriteReg2,WriteData2,ReadData1,ReadData2,clk);

	output  reg[31:0] ReadData2;
	output reg[31:0] ReadData1;
	input [31:0] WriteData1;
	input [31:0] WriteData2;
	input [4:0]  WriteReg1;
	input [4:0]  WriteReg2;
	input [4:0]  ReadReg1;
	input [4:0]  ReadReg2;
	input RegWrite,RegWrite2, clk;
	
	reg [31:0] registers [31:0];
	
	
	
	always @(*) begin
			ReadData1 = registers[ReadReg1];
	      ReadData2 = registers[ReadReg2];
	end
	always @(posedge clk) begin
			if(RegWrite2) begin
				registers[WriteReg2] <=WriteData2;
				$writememb("C:/altera/13.1/workspace/hw4/registers.txt", registers);
			end
	end
	always @(posedge clk) begin
			if(RegWrite) begin
				registers[WriteReg1] <=WriteData1;
				$writememb("C:/altera/13.1/workspace/hw4/registers.txt", registers);
			end
	end
		
	
endmodule