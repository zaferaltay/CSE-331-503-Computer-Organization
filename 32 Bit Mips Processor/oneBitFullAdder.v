module oneBitFullAdder(inpa,inpb,cin,cout,res);

input inpa,inpb,cin;
output cout,res;
wire andwire,xorwire,andwire2;

xor(res,inpa,inpb,cin);
and(andwire,inpa,inpb);
xor(xorwire,inpa,inpb);
and(andwire2,cin,xorwire);
or(cout,andwire,andwire2);

endmodule