module big_controller (/*AUTOARG*/
   // Outputs
   r_type, alu_src, mem_to_reg, reg_write, reg_write2, mem_read,
   mem_write, j, jal, beq, bne, ori, lui, alu_op,
   // Inputs
   opcode
   ) ;
   input [5:0] opcode;
   output      r_type, alu_src, mem_to_reg;
   output      reg_write, reg_write2, mem_read, mem_write, j, jal;
   output      beq, bne, ori, lui;
   output [1:0] alu_op;

   wire        sig_r_type, sig_j, sig_jal, sig_lw, sig_sw;
   wire        sig_beq, sig_bne, sig_ori, sig_lui;

   //generate proper signal for given opcode
   equal6x2_1 asig0(sig_r_type, opcode, 6'b00_0000);
   equal6x2_1 asig1(sig_j, opcode, 6'b00_0010);
   equal6x2_1 asig2(sig_jal, opcode, 6'b00_0011);
   equal6x2_1 asig3(sig_lw, opcode, 6'b10_0011);
   equal6x2_1 asig4(sig_sw, opcode, 6'b10_1011);
   equal6x2_1 asig5(sig_beq, opcode, 6'b00_0100);
   equal6x2_1 asig6(sig_bne, opcode, 6'b00_0101);
   equal6x2_1 asig7(sig_ori, opcode, 6'b00_1101);
   equal6x2_1 asig8(sig_lui, opcode, 6'b00_1111);

   //generate outputs for generated signal

   assign r_type = sig_r_type;

   or1x3_1 oas(alu_src, sig_lw, sig_sw, sig_ori);

   assign mem_to_reg = sig_lw;

   or1x4_1 orw(reg_write, sig_r_type, sig_lw, sig_ori, sig_lui);

   or orw2(reg_write2, sig_r_type, sig_jal);

   assign mem_read = sig_lw;

   assign mem_write = sig_sw;

   assign j = sig_j;

   assign jal = sig_jal;
	
	assign beq = sig_beq;
	
	assign bne = sig_bne;

   assign ori = sig_ori;

   assign lui = sig_lui;

   or oao1(alu_op[1], sig_r_type, sig_ori);

   or1x3_1 oao0(alu_op[0], sig_r_type, sig_beq, sig_bne);

endmodule // big_controller
