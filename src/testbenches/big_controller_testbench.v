`define DELAY 20
module big_controller_test_bench();
   reg [5:0] opcode;
   reg       expected_r_type, expected_alu_src, expected_mem_to_reg, expected_reg_write, expected_reg_write2;
   reg       expected_mem_read, expected_mem_write, expected_j, expected_jal;
   reg       expected_beq, expected_bne, expected_ori, expected_lui;
   reg [1:0] expected_alu_op;

   wire      r_type, alu_src, mem_to_reg;
   wire      reg_write, reg_write2, mem_read, mem_write, j, jal;
   wire      beq, bne, ori, lui;
   wire [1:0] alu_op;

   big_controller bc(r_type,
                     alu_src,
                     mem_to_reg,
                     reg_write,
                     reg_write2,
                     mem_read,
                     mem_write,
                     j,
                     jal,
                     beq,
                     bne,
                     ori,
                     lui,
                     alu_op,
                     opcode);

   initial begin
      opcode = 6'b00_0000;
      expected_r_type=1'b1;
      expected_alu_src=1'b0;
      expected_mem_to_reg=1'b0;
      expected_reg_write=1'b1;
      expected_reg_write2=1'b1;
      expected_mem_read=1'b0;
      expected_mem_write=1'b0;
      expected_j=1'b0;
      expected_jal=1'b0;
      expected_beq=1'b0;
      expected_bne=1'b0;
      expected_ori=1'b0;
      expected_lui=1'b0;
      expected_alu_op=2'b11;

   end

   initial begin
      $monitor("time = %2d, r_type=%1b, expected_r_type=%1b, ,alu_src=%1b, expected_alu_src=%1b,mem_to_reg=%1b, expected_mem_to_reg=%1b,reg_write=%1b, expected_reg_write=%1b,reg_write2=%1b, expected_reg_write2=%1b,mem_read=%1b, expected_mem_read=%1b,mem_write=%1b, expected_mem_write=%1b,j=%1b, expected_j=%1b,jal=%1b, expected_jal=%1b,beq=%1b, expected_beq=%1b,bne=%1b, expected_bne=%1b,ori=%1b, expected_ori=%1b,lui=%1b, expected_lui=%1b,alu_op=%2b, expected_alu_op=%2b", $time,

               r_type, expected_r_type,
               alu_src, expected_alu_src,
               mem_to_reg, expected_mem_to_reg,
               reg_write, expected_reg_write,
               reg_write2, expected_reg_write2,
               mem_read, expected_mem_read,
               mem_write, expected_mem_write,
               j, expected_j,
               jal, expected_jal,
               beq, expected_beq,
               bne, expected_bne,
               ori, expected_ori,
               lui, expected_lui,
               alu_op, expected_alu_op
               );
   end

endmodule //big_controller_test_bench
