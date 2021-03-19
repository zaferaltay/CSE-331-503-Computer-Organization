module InstructionMemory_testbench();

reg [31:0] ReadAddress;
wire [31:0] instruction;

InstructionMemory test(ReadAddress,instruction);
initial begin
$readmemb("C:/altera/13.1/workspace/hw4/instructionmemory.txt", test.instructions);
ReadAddress= 32'b00000000000000000000000000000001 ; 
#100;
ReadAddress= 32'b00000000000000000000000000000010 ;
#100
ReadAddress= 32'b00000000000000000000000000000011 ;  


end
initial #1000 $finish;
initial begin
$monitor(" ReadAddress=%32b instruction=%32b",ReadAddress,instruction);
end
endmodule