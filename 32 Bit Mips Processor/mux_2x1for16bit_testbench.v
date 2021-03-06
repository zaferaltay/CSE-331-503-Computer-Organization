module mux_2x1for16bit_testbench();

reg inp1,inp2,sel;
wire [15:0]out;

mux_2x1for16bit test(inp1,inp2,sel,out);

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
	$monitor("Select Bits: %b and Result: %b%b%b%b%b%b%b%b%b%b%b%b%b%b%b%b", sel ,out[15],out[14],out[13],out[12],out[11],out[10],out[9],out[8],out[7],out[6],out[5],out[4],out[3],out[2],out[1],out[0]);
end
endmodule