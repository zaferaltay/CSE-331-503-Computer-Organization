module ProgramCounter_testbench();

reg clk;
reg [31:0] inpc;
wire [31:0] pc;
ProgramCounter test(inpc,pc,clk);



initial begin
	inpc = 32'b00000000000000000000000000000001; clk = 1'b1;
	#200 clk = 1'b0;
	#200
	clk = 1'b1;
	inpc = 32'b00000000000000000000000011000001;
	#200 clk = 1'b0;
	#200
	clk = 1'b1;
	inpc = 32'b00000000000000000000001111000001;
	#200 clk = 1'b0;
	#200
	clk = 1'b1;
	inpc = 32'b00000000000000000000000011111111;
	#200 clk = 1'b0;
	#200
	clk = 1'b1;
	inpc = 32'b00000000000000000000000000000000;
end
 
 
initial
begin
$monitor("clk =%1b, inpc=%32b, pc=%32b ",clk,inpc,pc);
end

endmodule