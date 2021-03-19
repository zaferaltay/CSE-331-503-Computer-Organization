module AluControl_testbench();

reg AluOp1;
reg AluOp0;
reg [5:0] FunctionField;

wire [2:0] AluControl;


AluControl test(AluOp0,AluOp1,FunctionField,AluControl);

initial begin


AluOp1=1'b0;
AluOp0=1'b0;
FunctionField = 6'b100101;
#100
AluOp1=1'b0;
AluOp0=1'b0;
FunctionField = 6'b111111;
#100
AluOp1=1'b0;
AluOp0=1'b0;
FunctionField = 6'b000000;
#100
AluOp1=1'b1;
AluOp0=1'b1;
FunctionField = 6'b100101;
#100
AluOp1=1'b0;
AluOp0=1'b1;
FunctionField = 6'b100101;




#100
AluOp1=1'b1;
AluOp0=1'b0;
FunctionField = 6'b100101;
#100
AluOp1=1'b1;
AluOp0=1'b0;
FunctionField = 6'b100110;
#100
AluOp1=1'b1;
AluOp0=1'b0;
FunctionField = 6'b100000;
#100
AluOp1=1'b1;
AluOp0=1'b0;
FunctionField = 6'b100010;
#100
AluOp1=1'b1;
AluOp0=1'b0;
FunctionField = 6'b100100;

end
initial #20000 $finish;

initial begin
 $monitor("ALU OP: %b%b , Function Field: %b%b%b%b%b%b, AluControl: %b%b%b",AluOp1,AluOp0,FunctionField[5],FunctionField[4],FunctionField[3],
	FunctionField[2],FunctionField[1],FunctionField[0],AluControl[2],AluControl[1],AluControl[0]);
end


endmodule