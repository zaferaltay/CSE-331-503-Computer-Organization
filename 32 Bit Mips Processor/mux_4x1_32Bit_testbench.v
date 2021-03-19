module mux_4x1_32Bit_testbench();

reg [31:0]inp1;
reg [31:0]inp2;
reg [31:0]inp3;
reg [31:0]inp4;
reg sel0,sel1;
wire [31:0]out2;

mux_4x1_32Bit test(inp1,inp2,inp3,inp4,sel0,sel1,out2);

initial begin
//Desined to select always 1.
inp1 = 32'b11111111111111000000000000000000;
inp2 = 32'b00000000000000000000000000000001;
inp3 = 32'b00000000000000000000000000000010;
inp4 = 32'b00000000000000000000000000000011;

sel1 = 1'b0;sel0 = 1'b0;
#100 sel0 = 1'b1;
#100 sel1 = 1'b1;sel0 = 1'b0;
#100 sel0 = 1'b1;


end
initial #500 $finish;
initial begin
	$monitor("Select Bits: %b%b and Result:  Result: %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b", sel1,sel0,
	out2[31],out2[30],out2[29],out2[28],out2[27],out2[26],out2[25],out2[24],out2[23],out2[22],out2[21],out2[20],out2[19],out2[18],out2[17],out2[16],
	out2[15],out2[14],out2[13],out2[12],out2[11],out2[10],out2[9],out2[8],out2[7],out2[6],out2[5],out2[4],out2[3],out2[2],out2[1],out2[0]);
end
endmodule