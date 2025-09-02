module seven_seg_display(
	input 	logic	[3:0]s,
	output 	logic [6:0]seg
);

	logic A,B,C,D;
	
	assign A = s[3];
	assign B = s[2];
	assign C = s[1];
	assign D = s[0];
	
	assign seg[6] = (~A&~C)&(B^D) | A&(~B&C&D | B&~C);
	assign seg[5] = D&~(A^C) | B&(C&~D | A&~C&~D);
	assign seg[4] = ~A&~B&C&~D | (A&B)&( ~C&~D | C);
	assign seg[3] = (~A&D)& ~(B^C) | (A&~B)&(C^D) | B&( ~(A|C|D) | A&C&D);
	assign seg[2] = (~A&~B&D) | (~A&B&~C) | (~A&B&C&D) | (A&~B&~C&D);
	assign seg[1] = (~(A|B|C) & D) | (~A&~B&C) | (~A&B&C&D) | (A&B&~C);
	assign seg[0] = ~(A|B|C|D) | (~A&~B&~C&D) | (~A&B&C&D);
	

endmodule