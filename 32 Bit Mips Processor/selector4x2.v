module selector4x2(rtype,gt,eq,lt,sel0,sel1);

input rtype,gt,eq,lt;
output sel0,sel1;

wire sel0wire,sel1wire,notgt,noteq,notlt;

not(notlt,lt);
not(notgt,gt);
not(noteq,eq);

and(wire1,noteq,gt);
and(wire2,eq,notgt);
or(sel0wire,wire1,wire2);
and(sel0,rtype,notlt,sel0wire);

and(wire3,notlt,gt);
and(wire4,notgt,lt);
or(sel1wire,wire3,wire4);
and(sel1,rtype,noteq,sel1wire);

endmodule


