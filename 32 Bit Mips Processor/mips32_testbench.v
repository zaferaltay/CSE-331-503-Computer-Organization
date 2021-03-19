module mips32_testbench();

  reg clock;
  reg firstin;
  mips32 test(clock);
  

  initial begin 
		$readmemb("C:/altera/13.1/workspace/hw4/registers.txt", test.register.registers);
		$readmemb("C:/altera/13.1/workspace/hw4/datamemory.txt", test.dm.memory);
		$readmemb("C:/altera/13.1/workspace/hw4/instructionmemory.txt", test.im.instructions);
		clock=0;
		#50 clock=~clock; 
		#50 clock=~clock;
		
  end
endmodule