module mips32 (pc, clk);

	input clk;
	
	// If there was no output, synthesizer gives
	// warning about there is no dependent output
	// for clk.
	output [31:0] pc;
	
	wire          sig_beq, sig_bne, sig_zero;
   wire          sig_success_brnch, t0, t1, nsig_zero;
	not get_not_sig_zero(nsig_zero, sig_zero);
   and get_success_beq(t0, sig_beq, sig_zero);
	and get_success_bne(t1, sig_bne, nsig_zero);
	or is_a_branch(sig_success_brnch, t0, t1);
	
	
   wire [31:0] instruction;
	wire [31:0] read_data1;
   wire [31:0] def_next_pc;
	wire        sig_j, sig_jal, sig_jr;
	wire [31:0]	  last_pc;
   pc_controller get_next_pc(pc, last_pc, sig_j, sig_jal, sig_jr, instruction, read_data1, def_next_pc, clk);

   wire [31:0] new_pc_plus_4;
   adder2x32_32 get_new_pc_plus_4(new_pc_plus_4, pc, 32'b100);

   wire [31:0] branch_next_pc;
   wire [31:0] left_2shifted_immediate;
   adder2x32_32 get_next_pc_for_branch(branch_next_pc, new_pc_plus_4, left_2shifted_immediate);

   mux2_32 get_def_next_pc(def_next_pc, new_pc_plus_4, branch_next_pc, sig_success_brnch);

   instruction instruction_block(instruction, pc, clk);

   wire        sig_bad_r_type, sig_alu_src, sig_mem_to_reg, sig_bad_reg_write, sig_bad_reg_write2;
   wire        sig_mem_read, sig_mem_write, sig_ori, sig_lui;
   wire [1:0]  sig_alu_op;
   big_controller get_controller_signals(sig_bad_r_type, sig_alu_src,
                                         sig_mem_to_reg, sig_bad_reg_write,
                                         sig_bad_reg_write2, sig_mem_read,
                                         sig_mem_write, sig_j, sig_jal,
                                         sig_beq, sig_bne, sig_ori, sig_lui,
                                         sig_alu_op,
                                         instruction[31:26]);

   wire        sig_r_type, sig_reg_write, sig_reg_write2;
   rtype_controller adjust_controller_signals(sig_r_type, sig_reg_write,
                                              sig_reg_write2, sig_jr,
                                              sig_bad_r_type, sig_bad_reg_write,
                                              sig_bad_reg_write2,
                                              instruction[5:0]);

   wire [2:0]  alu_code;
   alu_controller get_alu_code(alu_code, sig_alu_op, instruction[5:0]);

   wire [4:0]      write_reg;
   mux2_5 is_rt_or_rd(write_reg, instruction[20:16], instruction[15:11], sig_r_type);

   wire [4:0]  write_reg2;
   mux2_5 is_rs_or_31(write_reg2, instruction[25:21], 5'b11111, sig_jal);

   wire [31:0] read_data2;
   wire [31:0] write_data;
   wire [31:0] write_data2;
   registers register_block(read_data1, read_data2, write_data, write_data2,
                               instruction[25:21], instruction[20:16],
                               write_reg, write_reg2,
                               sig_reg_write, sig_reg_write2, clk);

   wire [31:0] alu_b;
   wire [31:0] extended_immediate;
   mux2_32 which_alu_b(alu_b, read_data2, extended_immediate, sig_alu_src);

   wire [31:0] alu_result;
   alu32 alu(alu_result, sig_zero, read_data1, alu_b, alu_code);

   wire [31:0] mem_data;
   memory memory_block(mem_data, read_data2, alu_result[17:0], sig_mem_write, sig_mem_read, clk);

   wire [31:0] final_value;
   mux2_32 get_final_value(final_value, alu_result, mem_data, sig_mem_to_reg);

	//solves delay slot problems
	wire [31:0] old_pc_plus_4;
   adder2x32_32 get_old_pc_plus_4(old_pc_plus_4, last_pc, 32'b100);
   mux2_32 get_write_data2(write_data2, alu_result, old_pc_plus_4, sig_jal);

   wire        lt, eq, gt;
   comparator32x2 compare_for_rd(lt, eq, gt, alu_result, 32'b0);

   wire [31:0] rd_rtype_val;
   assign rd_rtype_val[31:2] = 30'b0;
   comparator_controller get_rd_value(rd_rtype_val[1:0], lt, eq, gt);

   wire [31:0] rd_or_final_value;
   mux2_32 select_rd_or_final_value(rd_or_final_value, final_value, rd_rtype_val, sig_r_type);


   wire [31:0] lui_value;
   assign lui_value[31:16] = instruction[15:0];
   assign lui_value[15:0] = 16'b0;
   mux2_32 select_write_data(write_data, rd_or_final_value, lui_value, sig_lui);

   wire [31:0] sign_extended_immediate;
   sign_extend16_32 extend_sign(sign_extended_immediate, instruction[15:0]);

   wire [31:0] zero_extended_immediate;
   assign zero_extended_immediate[31:16] = 16'b0;
   assign zero_extended_immediate[15:0] = instruction[15:0];

   mux2_32 select_which_immediate(extended_immediate, sign_extended_immediate, zero_extended_immediate, sig_ori);

   shift_left2_32 get_shifted_immediate(left_2shifted_immediate, extended_immediate);

endmodule
