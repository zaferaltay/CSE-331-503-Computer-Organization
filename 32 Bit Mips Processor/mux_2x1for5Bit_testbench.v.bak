module mux_2x1for5Bit_testbench();

reg [4:0]inp1;
reg [4:0]inp2;
reg sel;
wire [4:0]out2;

mux_2x1for5Bit test(inp1,inp2,sel,out2);

initial begin
//Desined to select always 1.
inp1 = 32'b00001;
inp2 = 32'b11110;
sel = 1'b0;

#100 sel = 1'b1;


end
initial #500 $finish;
initial begin
	$monitor("Select Bits: %b and Result:  Result: %b%b%b%b%b", sel,out2[4],out2[3],out2[2],out2[1],out2[0]);
end
endmodule