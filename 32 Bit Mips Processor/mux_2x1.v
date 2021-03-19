module mux_2x1(input0,input1,select,out);
input input1;
input input0;
input select;
output out;

wire selNot,nand1,nand2;

not(selNot,select);
nand(nand1,input0,selNot);
nand(nand2,input1,select);
nand(out,nand1,nand2);

endmodule

