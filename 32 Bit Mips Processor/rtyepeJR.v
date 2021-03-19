module rtyepeJR(inpa,out);

input [31:0] inpa;
output out;

wire not31,not30,not29,not28,not27,not26,not5,not4,not2,not1,not0,and0,and1,and2;

not(not31,inpa[31]);
not(not30,inpa[30]);
not(not29,inpa[29]);
not(not28,inpa[28]);
not(not27,inpa[27]);
not(not26,inpa[26]);
not(not5,inpa[5]);
not(not4,inpa[4]);
not(not2,inpa[2]);
not(not1,inpa[1]);
not(not0,inpa[0]);

and(and0,not31,not30,not29,not28);
and(and1,not27,not26,not5,not4);
and(and2,not2,not1,not0);

and(out,and0,and1,and2);

endmodule
