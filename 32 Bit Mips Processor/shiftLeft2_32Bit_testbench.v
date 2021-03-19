module shiftLeft2_32Bit_testbench();

reg [31:0]inp1;
wire [31:0]out2;

shiftLeft2_32Bit deneme(inp1,out2);

initial begin
//Desined to select always 1.
inp1 = 32'b00111111111111111100000000000000;


#100 
#100
inp1 = 32'b11000000000000000000000000000000;

end
initial #500 $finish;
initial begin
	$monitor("Input Bits: %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b and Result: %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b",
		inp1[31],inp1[30],inp1[29],inp1[28],inp1[27],inp1[26],inp1[25],inp1[24],inp1[23],inp1[22],inp1[21],inp1[20],inp1[19],inp1[18],inp1[17],inp1[16],
		inp1[15],inp1[14],inp1[13],inp1[12],inp1[11],inp1[10],inp1[9],inp1[8],inp1[7],inp1[6],inp1[5],inp1[4],inp1[3],inp1[2],inp1[1],inp1[0],
		out2[31],out2[30],out2[29],out2[28],out2[27],out2[26],out2[25],out2[24],out2[23],out2[22],out2[21],out2[20],out2[19],out2[18],out2[17],out2[16],
		out2[15],out2[14],out2[13],out2[12],out2[11],out2[10],out2[9],out2[8],out2[7],out2[6],out2[5],out2[4],out2[3],out2[2],out2[1],out2[0]);
end
endmodule