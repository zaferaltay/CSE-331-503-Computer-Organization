module mult_4x1(input0,input1,input2,input3,sel0,sel1,out1);
input input1,input2,input3,input0,sel1,sel0;
output out1;
wire s1not,s0not,or1,or2,or3,or4;

not(s1not,sel1);
not(s0not,sel0);
and(or1,sel1,sel0,input3);
and(or2,sel1,s0not,input2);
and(or3,sel0,s1not,input1);
and(or4,s0not,s1not,input0);
or(out1,or1,or2,or3,or4);
endmodule

