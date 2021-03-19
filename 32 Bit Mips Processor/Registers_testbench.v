module Registers_testbench(); 
reg RegWrite,RegWrite2,clk;	
reg [31:0] WriteData1;
reg [31:0] WriteData2;
reg [4:0] ReadReg1;
reg [4:0] ReadReg2;
reg [4:0] WriteReg1;
reg [4:0] WriteReg2;
wire [31:0] ReadData1;
wire [31:0] ReadData2;

Registers test ( RegWrite,ReadReg1,ReadReg2,WriteReg1,WriteData1,RegWrite2,WriteReg2,WriteData2,ReadData1,ReadData2,clk );


initial begin
$readmemb("C:/altera/13.1/workspace/hw4/registers.txt", test.registers);
ReadReg1= 5'b00000 ; ReadReg2= 5'b00001; WriteReg2=5'b00111 ;RegWrite=1'b0; RegWrite2=1'b1; clk=1'b1; WriteData2= 32'b11111110111111011111101111110111;
#100;
 clk=1'b0;
#100;
ReadReg1= 5'b00000 ; ReadReg2= 5'b00001; WriteReg1=5'b00010 ; RegWrite=1'b1;RegWrite2=1'b0; clk=1'b1; WriteData1= 32'b10001110111111011111101111110111;
RegWrite2=1'b0;


end
 
initial #1200 $finish;
initial begin
$monitor("Regwrite :%b, Rgewrite2: %b, ReadReg1=%5b , ReadReg2=%5b , ReadData1=%32b , ReadData2=%32b ,WriteData=%32b , WriteReg1 =%5b, WriteReg2= %5b \n",RegWrite,RegWrite2,ReadReg1,ReadReg2, ReadData1,ReadData2,WriteData2,WriteReg1,WriteReg2);
end
 
endmodule