module pc_controller (/*AUTOARG*/
                      // Outputs
                      pc, last_pc,
                      // Inputs
                      j, jal, jr, old_instruction, rs_data, default_new_pc, clk
                      ) ;
   input j, jal, jr;
   input [31:0] old_instruction;
   input [31:0] rs_data;
   input [31:0] default_new_pc;
	input clk;
	output reg [31:0] last_pc = 32'b0;
	output reg [31:0] pc = 32'b0;

   wire [1:0]   pc_mux;
   wire [31:0]  new_pc;

   wire              nj, njal, njr;
   not n1(nj, j);
   not n2(njal, jal);
   not n3(njr, jr);

   and1x3_1 ad1(pc_mux[1], nj, njal, jr);

   wire              m;
   or o(m, j, jal);
   and ad2(pc_mux[0], njr, m);

   wire [31:0]       jump_data;
   assign jump_data[27:2] = old_instruction[25:0];
   assign jump_data[1:0] = 2'b00;
   assign jump_data[31:28] = default_new_pc[31:28];

   mux4_32 get_new_val(new_pc, default_new_pc, jump_data, rs_data, jump_data, pc_mux);
	
	always @ (posedge clk) begin
		pc <= new_pc;
	end
	
	always @ (negedge clk) begin
      last_pc <= pc;
   end

endmodule // pc_controller
