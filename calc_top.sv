module calc_top( input logic [9:0] SW,
						input logic [1:0] KEY,
						output logic [9:0] LEDR,
						output logic [6:0] HEX5,
						output logic [6:0] HEX4,
						output logic [6:0] HEX3,
						output logic [6:0] HEX2,
						output logic [6:0] HEX1,
						output logic [6:0] HEX0 );
						
						
logic [3:0] A,B;
logic [7:0] sum;

logic clk, reset;

assign HEX4 = 7'b1111111;
assign HEX2 = 7'b1111111;


assign clk = KEY[1];
assign reset = KEY[0];

assign LEDR = SW;
						
//Always block:
always_ff @(posedge clk)
	begin
	
	if (reset==0) begin
		A <= 4'b0;
		B <= 4'b0;
		end
	
	else
	begin
	
	if (SW[9] == 1) 
	begin
	A <= SW[3:0];
	end
	
	if (SW[8] == 1) 
	begin
	B <= SW[3:0];
	end
	
	end
	
	end
	
		
assign sum = A+B;
	
sevenseg output_hex5 (
.data (A),
.segments (HEX5)	
);					

sevenseg output_hex3 (
.data (B),
.segments (HEX3)
);

sevenseg output_hex0 (
.data (sum[3:0]),
.segments (HEX0)
);

sevenseg output_hex1(
.data (sum[7:4]),
.segments (HEX1)
);	
	
endmodule
	