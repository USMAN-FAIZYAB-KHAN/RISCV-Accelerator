module register_map (
    input logic clk, reg_write, 
    input logic [5:0] read_reg1, read_reg2, write_reg,
    input logic [31:0] write_data,
    output logic [31:0] read_data1, read_data2
);
    logic [31:0] registers [0:47];
       
	always_ff @(posedge clk) begin
		if (reg_write)
			registers[write_reg] <= write_data;
	end
        
	assign read_data1 = registers[read_reg1];
	assign read_data2 = registers[read_reg2];
endmodule
