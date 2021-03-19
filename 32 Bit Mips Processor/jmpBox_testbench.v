module jmpBox_testbench();

reg [31:0]inp1;
reg [31:0] pc;
wire [31:0] out2;

jmpBox jb(inp1,pc,out2);

initial begin

inp1 =32'b00000011111111111111111111111111;
pc= 	32'b11111100000000000000000000000000;

#100

inp1 =32'b11111100000000000000000000000000;
pc= 	32'b00000000000000000000000000000000;

end
initial #1000 $finish;
initial begin 

$monitor("OUTput : %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b \n",
			out2[31],out2[30],out2[29],out2[28],out2[27],out2[26],out2[25],out2[24],out2[23],out2[22],out2[21],out2[20],out2[19],out2[18],out2[17],out2[16],
	out2[15],out2[14],out2[13],out2[12],out2[11],out2[10],out2[9],out2[8],out2[7],out2[6],out2[5],out2[4],out2[3],out2[2],out2[1],out2[0]);

end
endmodule