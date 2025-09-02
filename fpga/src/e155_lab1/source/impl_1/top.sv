module top(
	input 	logic	[3:0]s,
	output 	logic [2:0]led,
	output logic [6:0]seg
);

	three_led three(s, led);
	seven_seg_display seven(s,seg);
	
	

endmodule