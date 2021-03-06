module onebitalu_testbench;

reg [2:0] op;
reg a, b, Cin, xx;
wire R, Cout;

onebitalu onebittest(b,a,Cin,op,R,Cout);

initial begin
	//AND OPERATION
	op = 3'b000;
	a = 1'b0;
	b = 1'b0;
	Cin = op[2];

	#100 a = 1'b1;
	#100 a = 1'b0; b = 1'b1;
	#100 a = 1'b1;
	//OR OPERATION
	#100 op = 3'b001;
	a = 1'b0;
	b = 1'b0;
	Cin = op[2];
	
	#100 a = 1'b1;
	#100 a = 1'b0; b = 1'b1;
	#100 a = 1'b1;
	//SUM OPERATION
	#100 op = 3'b010;
	a = 1'b0;
	b = 1'b0;
	Cin = op[2];
	
	#100 a = 1'b1;
	#100 a = 1'b0; b = 1'b1;
	#100 a = 1'b1;
	//SUBSTRACTION OPERATION
	#100 op = 3'b110;
	a = 1'b0;
	b = 1'b0;
	Cin = op[2];

	#100 a = 1'b1;
	#100 a = 1'b0; b = 1'b1;
	#100 a = 1'b1;
	//XOR OPERATION
	#100 op = 3'b111;
	a = 1'b0;
	b = 1'b0;
	Cin = op[2];

	#100 a = 1'b1;
	#100 a = 1'b0; b = 1'b1;
	#100 a = 1'b1;
end
initial #2000 $finish;
initial begin
	$monitor("OPCODE: %b%b%b Input A: %b InputB: %b Result: %b, Cout:%b", op[2], op[1], op[0],a, b,R, Cout);
	#2000 $finish;
end
endmodule