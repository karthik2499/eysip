module TWS_tb;
reg s1;reg s2; //define input
wire X1;			//define output

TWS_Behavioral uut(.s1(s1),.s2(s2),.X1(X1)); //Map testbench ports with DUT ports

initial begin
	s1 = 0; s2 = 0;#100;  //different combinations of input
	s1 = 0; s2 = 1;#100;
	s1 = 1; s2 = 0;#100;
	s1 = 1; s2 = 1;#100;
	#100;
end
endmodule 