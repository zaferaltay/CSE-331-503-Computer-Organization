module rtyepeJR_testbench();

reg [31:0] inpa;
wire out;

rtyepeJR test(inpa,out);

initial begin

inpa = 32'b000000101010101010101010101010;

#100
inpa = 32'b000000101010101010101010001000;

#100 

inpa = 32'b000000101010101010101010001001;

end
initial #1200 $finish;

initial begin
 $monitor ("JR: %b \n",out);
 
end
endmodule 