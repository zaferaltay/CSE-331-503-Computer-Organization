module thirtyTwoBitFullAdder_testbench();

reg [31:0]reg1;
reg[31:0]reg2;

wire [31:0]result;

thirtyTwoBitFullAdder test(reg1,reg2,result);

initial begin 
	//  out 32 bit 1
	reg1=32'b00000000000000000000000000000000;
	reg2=32'b11111111111111111111111111111111;
	
	#100
	// out 32 bit 0
	reg1=32'b11111111111111111111111111111111;
	
	#100
	//out 32 bit 1
	reg1=32'b01010101010101010101010101010101;
	reg2=32'b10101010101010101010101010101010;
	
	#100
	//out msb 1 diğerleri 0
	reg1=32'b01111111111111111111111111111111;
	reg2=32'b00000000000000000000000000000001;
	
end
initial #2000 $finish;

initial begin
	$monitor("reg1: %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b\nB: %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b\nResult: %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b",
	reg1[31],reg1[30],reg1[29], reg1[28],reg1[27],reg1[26],reg1[25], reg1[24],reg1[23],reg1[22],reg1[21], reg1[20],reg1[19],reg1[18],reg1[17], reg1[16],reg1[15],reg1[14],reg1[13], reg1[12],reg1[11],reg1[10],reg1[9], reg1[8],reg1[7],reg1[6],reg1[5], reg1[4],reg1[3],reg1[2],reg1[1], reg1[0],
	reg2[31],reg2[30],reg2[29], reg2[28],reg2[27],reg2[26],reg2[25], reg2[24],reg2[23],reg2[22],reg2[21],reg2[20],reg2[19],reg2[18],reg2[17], reg2[16],reg2[15],reg2[14],reg2[13], reg2[12],reg2[11],reg2[10],reg2[9], reg2[8],reg2[7],reg2[6],reg2[5], reg2[4],reg2[3],reg2[2],reg2[1], reg2[0],
	result[31],result[30],result[29], result[28],result[27],result[26],result[25], result[24],result[23],result[22],result[21], result[20],result[19],result[18],result[17], result[16],result[15],result[14],result[13], result[12],result[11],result[10],result[9], result[8],result[7],result[6],result[5], result[4],result[3],result[2],result[1], result[0]);

#2000 $finish;
end
endmodule	
	
	
	
	
	
	
	
	