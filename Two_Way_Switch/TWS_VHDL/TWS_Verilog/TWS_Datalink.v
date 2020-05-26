module TWS_Datalink(
	input s1,s2,		//Define two Inputs pins
	output X1);		//Define one output pin
	assign X1 = (s1^s2);	//XOR the 2 input pins(s1,s2) and assign the output to the output pin(out)
endmodule
