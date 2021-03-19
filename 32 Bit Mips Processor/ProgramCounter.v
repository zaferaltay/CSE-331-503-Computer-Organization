module ProgramCounter(inpc,pc,clk);

	output reg [31:0] pc;
	input [31:0] inpc;
	input clk;
	
	always@(posedge clk) begin
		  pc <= inpc;   
	end
endmodule