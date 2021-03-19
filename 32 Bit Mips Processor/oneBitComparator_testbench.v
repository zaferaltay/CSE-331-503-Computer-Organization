module oneBitComparator_testbench();

reg Igt,Ieq,Ilt,a,b;
wire outgt,outlt,outeq;

oneBitComparator test(1'b0,1'b1,1'b0,a,b,outgt,outeq,outlt);

initial begin 
 a = 1'b0;
 b = 1'b0;
#100
 a = 1'b1;
 b = 1'b0;
#100
 a = 1'b0;
 b = 1'b1;
#100
 a = 1'b1;
 b = 1'b1;
end
initial #1200 $finish;
initial begin
	$monitor("a: %b, b: %b ,gt: %b,eq: %b,lt:%b ",a,b,outgt,outeq,outlt );
end
endmodule	
