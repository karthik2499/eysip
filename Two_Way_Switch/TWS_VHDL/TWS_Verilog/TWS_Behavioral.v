module TWS_Behavioral(
	input s1,s2,  	 //Define two inputs(switches)
	output reg X1	 //Define the output pin
	);
	
	
always @ (s1,s2)    //Everytime the input changes, the output 
						//is to be updated
begin
	if (s1==s2) //if both switches are in same position, output is LOW
		X1 = 0;
	else
		X1=1;				//if the position of switches are not equal, 
							//outout is HIGH
end
endmodule
