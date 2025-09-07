module seven_seg_display(
	input 	logic	[3:0]s,
	output 	logic [6:0]seg
);

	logic A,B,C,D;
	
	assign A = s[3];
	assign B = s[2];
	assign C = s[1];
	assign D = s[0];
	
	/*
	assign seg[6] = (~A&~C)&(B^D) | A&(~B&C&D | B&~C);
	assign seg[5] = D&~(A^C) | B&(C&~D | A&~C&~D);
	assign seg[4] = ~A&~B&C&~D | (A&B)&( ~C&~D | C);
	assign seg[3] = (~A&D)& ~(B^C) | (A&~B)&(C^D) | B&( ~(A|C|D) | A&C&D);
	assign seg[2] = (~A&~B&D) | (~A&B&~C) | (~A&B&C&D) | (A&~B&~C&D);
	assign seg[1] = (~(A|B|C) & D) | (~A&~B&C) | (~A&B&C&D) | (A&B&~C);
	assign seg[0] = ~(A|B|C|D) | (~A&~B&~C&D) | (~A&B&C&D);
	*/
	
	always_comb
		case(s[4:0])
			/// 0
			0000: seg[6:0] = 7'b0000001;
			/// 1
			0001: seg[6:0] = 7'b1001111;
			/// 2
			0010: seg[6:0] = 7'b0010010;
			/// 3
			0011:seg[6:0] = 7'b0000110;
			/// 4
			0100:seg[6:0] = 7'b1001100;
			/// 5
			0101:seg[6:0] = 7'b0100100;
			/// 6
			0110:seg[6:0] = 7'b0100000;
			/// 7
			0111:seg[6:0] = 7'b0001111;
			/// 8
			1000:seg[6:0] = 7'b0000000;
			/// 9
			1001:seg[6:0] = 7'b0001100;
			/// A
			1010:seg[6:0] = 7'b0001000;
			/// B
			1011:seg[6:0] = 7'b1100000;
			/// C
			1100:seg[6:0] = 7'b0110001;
			/// D
			1101:seg[6:0] = 7'b1000010;
			/// E
			1110:seg[6:0] = 7'b0110000;
			/// F
			1111:seg[6:0] = 7'b0111000;
		endcase
			
	

endmodule