module AluControl(AluOp0,AluOp1,FunctionField,AluControl);

input AluOp0,AluOp1;
input [5:0] FunctionField;

output [2:0] AluControl;

wire and1,and2,and3,and4,and5,and6,and7,and8,and9,and10,and11,and12,or1,or2;
wire notop1,notop0,notf2,notf1,notf0;

not(notop1,AluOp1);
not(notop0,AluOp0);
not(notf2,FunctionField[2]);
not(notf1,FunctionField[1]);
not(notf0,FunctionField[0]);
//AluControl  2
and(and1,notop1,AluOp0);
and(and2,AluOp1,FunctionField[1],notop0);
or(AluControl[2],and1,and2);

//AluControl  1
and(and3,AluOp1,notop0);
and(and4,FunctionField[2],FunctionField[1],notf0);
and(and5,notf2,notf1,notf0);
and(and6,notf2,FunctionField[1],notf0);
or(or1,and4,and5,and6);
and(and11,and3,or1);
or(AluControl[1],notop1,and11);

//AluControl 0
and(and7,AluOp1,AluOp0);
and(and8,AluOp1,notop0);
and(and9,FunctionField[2],notf1,FunctionField[0]);
and(and10,FunctionField[2],notf0,FunctionField[1]);
or(or2,and9,and10);
and(and12,and8,or2);
or(AluControl[0],and7,and12);
 





endmodule
