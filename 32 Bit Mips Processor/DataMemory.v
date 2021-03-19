module DataMemory(address,WriteData,MemWrite,MemRead,ReadData,clk);

input [17:0] address;
input [31:0] WriteData;
output reg  [31:0] ReadData;
input MemWrite,MemRead,clk;

reg [31:0] memory [255:0];
	always @* begin
		if(MemRead==1'b1) begin
			ReadData = memory[address];
		end
	end


	always @(posedge clk) begin
			if(MemWrite==1'b1)begin
				memory[address] = WriteData;
				$writememb("C:/altera/13.1/workspace/hw4/datamemory.txt",memory);
			end
			
			end
			
endmodule