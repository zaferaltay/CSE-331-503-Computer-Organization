module selector4x2_testbench();

reg rtype,lt,eq,gt;
wire sel1,sel0;

selector4x2 test(rtype,gt,eq,lt,sel0,sel1);

initial begin

rtype=1'b0;
gt=1'b0;
lt=1'b0;
eq=1'b0;

#100
rtype=1'b1;
gt=1'b1;
lt=1'b0;
eq=1'b0;
#100
rtype=1'b1;
gt=1'b0;
lt=1'b0;
eq=1'b1;
#100
rtype=1'b1;
gt=1'b0;
lt=1'b1;
eq=1'b0;

end
initial #1200 $finish;
initial begin
    $monitor(" Rtype : %b,Gt : %b,eq %b,lt %b,sel1: %b,sel0: %b \n",rtype,gt,eq,lt,sel1,sel0);
end
endmodule	 