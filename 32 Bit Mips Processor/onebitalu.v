module onebitalu(b,a,cin,op,r,cout);
input b,a,cin;
input [2:0]op;
output r,cout;

wire fw,fw2,fw3,fw4,fw5,fw6,fw7,fw8,fw9,xx;

xor(fw,op[2],b);
or(fw2,fw,a);
and(fw3,fw,a);
not(fw4,fw3);
and(fw5,fw2,fw4);
and(fw6,fw5,cin);
or(fw7,fw5,cin);
or(cout,fw3,fw6);
not(fw8,fw6);
and(fw9,fw8,fw7);
xor(xx,a,b);
mult_4x1 res(fw3,fw2,fw9,xx,op[0],op[1],r);
endmodule
