module oneBitComparator(Igt,Ieq,Ilt,a,b,ogt,oeq,olt);

input Igt,Ieq,Ilt,a,b;
output ogt,oeq,olt;

wire nota,notb,outgtwire,outltwire;


not(nota,a);
not(notb,b);

and(outgtwire,Ieq,a,notb);
or(ogt,Igt,outgtwire);

and(outltwire,Ieq,nota,b);
or(olt,Ilt,outltwire);

xnor(outeqwire,a,b);
and(oeq,outeqwire,Ieq);

endmodule