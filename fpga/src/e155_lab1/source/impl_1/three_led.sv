module three_led(
	input 	logic	[3:0]s,
	output 	logic [2:0]led
);

	logic int_osc;
	logic pulse;
	logic led_state = 0;
	logic [31:0] counter = 0;
	logic [31:0] P;
	
	assign P = 32'b00000000000000000000000011010111;
	
	// Internal high-speed oscillator
	HSOSC hf_osc (.CLKHFPU(1'b1), .CLKHFEN(1'b1), .CLKHF(int_osc));
	
	// Simple clock divider
	always_ff @(posedge int_osc)
		begin
			counter <= counter + P;
		end
	
	xor x1(led[0],s[1],s[0]);
	and a1(led[1],s[3],s[2]);
	
	assign led[2] = counter[31];
	

endmodule