module thirtyTwoBitComparator_testbench();

reg [31:0] reg1;
reg [31:0] reg2;

wire gt,eq,lt;

thirtyTwoBitComparator test(reg1,reg2,gt,eq,lt);

initial begin

reg1= 32'b01000000000000000000000000000000;
reg2= 32'b00111111111111111111111111111111;

#100

reg1= 32'b01000000000000000000000000000000;
reg2= 32'b01111111111111111111111111111111;
#100

reg1= 32'b01111111000000000000000110000010;
reg2= 32'b01111111000000000000000110000100;
#100

reg1= 32'b01111111000000000000000110000001;
reg2= 32'b01111111000000000000000110000000;

end

initial #1200 $finish;
initial begin
	$monitor("gt %b, eq: %b , lt: %b\nA: %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b\nB: %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b\n", gt,eq,lt,
	reg1[31],reg1[30],reg1[29], reg1[28],reg1[27],reg1[26],reg1[25], reg1[24],reg1[23],reg1[22],reg1[21], reg1[20],reg1[19],reg1[18],reg1[17], reg1[16],reg1[15],reg1[14],reg1[13], reg1[12],reg1[11],reg1[10],reg1[9], reg1[8],reg1[7],reg1[6],reg1[5], reg1[4],reg1[3],reg1[2],reg1[1], reg1[0],
	reg2[31],reg2[30],reg2[29], reg2[28],reg2[27],reg2[26],reg2[25], reg2[24],reg2[23],reg2[22],reg2[21],reg2[20],reg2[19],reg2[18],reg2[17], reg2[16],reg2[15],reg2[14],reg2[13], reg2[12],reg2[11],reg2[10],reg2[9], reg2[8],reg2[7],reg2[6],reg2[5], reg2[4],reg2[3],reg2[2],reg2[1], reg2[0]);
end
endmodule



