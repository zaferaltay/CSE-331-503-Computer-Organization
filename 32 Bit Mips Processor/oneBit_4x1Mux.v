module oneBit_4x1Mux(inpa,inpb,inpc,inpd,sel1,sel0,out);

input inpa,inpb,inpc,inpd,sel1,sel0;
output out;


wire sel1not,sel0not,and0,and1,and2,and3;

not(sel1not,sel1);
not(sel0not,sel0);

and(and0,sel1not,sel0not,inpa);
and(and1,se11not,sel0,inpb);
and(and2,sel1,sel0not,inpc);
and(and3,sel1,sel0,inpd);
or(out,and0,and1,and2,and3);


endmodule 