module oneBitFullAdder_testbench();

reg inpa,inpb,cin;
wire cout,res;

oneBitFullAdder test(inpa,inpb,cin,cout,res);

initial begin
	// cout=0,res=0
	inpa=1'b0;
	inpb=1'b0;
	cin=1'b0;
	#100
	// cout=0,res=1
	inpa=1'b1;
		#100//cout=0,res=1
	inpa=1'b0;
	inpb=1'b1;
	#100 //cout 1,res 0
	inpa=1'b1;
	inpb=1'b1;
	cin=1'b0;
	#100//cout0,res=1
	inpa=1'b0;
	inpb=1'b0;
	cin=1'b1;
		
	#100	//cout=1,res=0
	inpa=1'b1;
	inpb=1'b0;
	cin=1'b1;
	
		#100//cout=1,res=0
	inpa=1'b0;
	inpb=1'b1;
	cin=1'b1;	

		#100//cout=1,res=0
	inpa=1'b1;
	inpb=1'b1;
	cin=1'b1;


	
	end
	initial #2000 $finish;
	
	initial begin
		$monitor("Input A: %b ,InputB: %b ,Carry In: %d ,Result: %b, Cout:%b", inpa, inpb, cin,res,cout);
	#2000 $finish;
	end
	endmodule
	