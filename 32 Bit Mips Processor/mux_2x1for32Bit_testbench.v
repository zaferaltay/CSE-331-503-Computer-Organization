module mux_2x1for32Bit_testbench();

reg [31:0]inp1;
reg [31:0]inp2;
reg sel;
wire [31:0]out2;

mux_2x1for32Bit test(inp1,inp2,sel,out2);

initial begin
//Desined to select always 1.
inp1 = 32'b00001111000011110000111100001111;
inp2 = 32'b11110000111100001111000011110000;
sel = 1'b0;

#100 sel = 1'b1;


end
initial #500 $finish;
initial begin
	$monitor("Select Bits: %b and Result:  Result: %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b", sel,
	out2[31],out2[30],out2[29],out2[28],out2[27],out2[26],out2[25],out2[24],out2[23],out2[22],out2[21],out2[20],out2[19],out2[18],out2[17],out2[16],
	out2[15],out2[14],out2[13],out2[12],out2[11],out2[10],out2[9],out2[8],out2[7],out2[6],out2[5],out2[4],out2[3],out2[2],out2[1],out2[0]);
end
endmodule