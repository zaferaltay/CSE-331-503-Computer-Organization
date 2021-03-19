module DataMemory_testbench();

reg MemWrite,MemRead,clk;	
reg [17:0] address;
reg [31:0] WriteData;

wire [31:0] ReadData;

DataMemory test( address,WriteData,MemWrite,MemRead,ReadData,clk );


initial begin
$readmemb("C:/altera/13.1/workspace/hw4/datamemory.txt", test.memory);
address=  18'b000000000000000010;  clk=1'b1; MemWrite=1'b1;  MemRead=1'b0;
WriteData=32'b11111110111111011111101111110111;
#100 clk=1'b0;
#100
address=  18'b000000000000000010;  clk=1'b1; MemRead=1'b1; MemWrite=1'b0;
WriteData=32'b11111110111111011111101111110111;
#100 clk=1'b0;
#100
address=  18'b000000000000000100;  clk=1'b1; MemWrite=1'b1;MemRead=1'b0;
WriteData=32'b00000000000000000011111111111111;
#100 clk=1'b0;
#100
address=  18'b000000000000000100;  clk=1'b1; MemWrite=1'b0;MemRead=1'b1;
WriteData=32'b00000000000000000000000000000000;
#100 clk=1'b0;




end
 

initial begin
	$monitor("MemWrite: %b,MemRead: %b ,address : %18b,ReadData : %32b \n",MemWrite,MemRead,address,ReadData);
end


endmodule