module decoder4to16(input  bit [3:0] data_in,
					output bit [15:0] data_out
					);
					
	always @(*) begin
		case(data_in)
			4'b0000 : data_out = 16'b0000_0000_0000_0001;
			4'b0001 : data_out = 16'b0000_0000_0000_0010;
			4'b0010 : data_out = 16'b0000_0000_0000_0100;
			4'b0011 : data_out = 16'b0000_0000_0000_1000;
			4'b0100 : data_out = 16'b0000_0000_0001_0000;
			4'b0101 : data_out = 16'b0000_0000_0010_0000;
			4'b0110 : data_out = 16'b0000_0000_0100_0000;
			4'b0111 : data_out = 16'b0000_0000_1000_0000;
			4'b1000 : data_out = 16'b0000_0001_0000_0000;
			4'b1001 : data_out = 16'b0000_0010_0000_0000;
			4'b1010 : data_out = 16'b0000_0100_0000_0000;
			4'b1011 : data_out = 16'b0000_1000_0000_0000;
			4'b1100 : data_out = 16'b0001_0000_0000_0000;
			4'b1101 : data_out = 16'b0010_0000_0000_0000;
			4'b1110 : data_out = 16'b0100_0000_0000_0000;
			4'b1111 : data_out = 16'b1000_0000_0000_0000;
			default : data_out = 16'b0000_0000_0000_0000;
			
		endcase
	end
endmodule