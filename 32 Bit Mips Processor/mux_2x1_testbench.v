module mux_2x1_testbench();

reg inp1,inp2,sel;
wire out;

mux_2x1 test(inp1,inp2,sel,out);

initial begin
//Desined to select always 1.
inp1 = 1'b0;
inp2= 1'b1;
sel = 1'b0;

#100 sel = 1'b1;
#100
inp1 = 1'b1;
inp2= 1'b0;
sel = 1'b0;
#100 sel = 1'b1;
end
initial #500 $finish;
initial begin
	$monitor("Select Bits: %b and Result: %b", sel,out);
end
endmodule