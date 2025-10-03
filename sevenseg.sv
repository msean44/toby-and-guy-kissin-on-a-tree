module sevenseg( input logic [3:0] data,
						output logic [6:0] segments );
						
	always_comb
		case (data)
		
		0: segments =		7'b100_0000;
		1: segments =		7'b111_1001;
		2: segments =		7'b010_0100;
		3: segments =		7'b011_0000;
		4: segments =		7'b001_1001;
		5: segments =		7'b001_0010;
		6: segments =		7'b000_0010;
		7: segments =		7'b111_1000;
		8: segments =		7'b000_0000;
		9: segments =		7'b001_1000;
		4'hA: segments =		7'b000_1000;
		4'hB: segments =		7'b000_0011;
		4'hC: segments =		7'b010_0111;
		4'hD: segments =		7'b010_0001;
		4'hE: segments =		7'b000_0110;
		4'hF: segments =		7'b000_1110;
		
		default: segments = 7'bxx_xxxx;
		
	endcase	
endmodule