module alu_controller (/*AUTOARG*/
   // Outputs
   alu_code,
   // Inputs
   alu_op, fnctn
   ) ;
   input [1:0] alu_op;
   input [5:0] fnctn;
   output [2:0] alu_code;

   wire         m0;
   wire         naop1;

   not n0(naop1, alu_op[1]);
   and ad1(m0, naop1, alu_op[0]);

   wire         m1, t0;
   wire         nf2, nf0;
   not n1(nf2, fnctn[2]);
   not n2(nf0, fnctn[0]);
   and1x4_1 ad2(t0, alu_op[1], alu_op[0], nf2, fnctn[1]);
   and ad6(m1, t0, nf0);

   or o0(alu_code[2], m0, m1);

   wire         m2, t1, t2, t9;
   and ad7(t1, nf2, nf0);
   and ad8(t2, fnctn[1], nf0);
   or o4(t9, t1, t2);

   and1x3_1 ad3(m2, t9, alu_op[1], alu_op[0]);
   or o2(alu_code[1], naop1, m2);

   wire         naop0;
   wire         m3, t3, t4;
   not n4(naop0, alu_op[0]);
   and ad4(t3, alu_op[1], naop0);

   xor xo0(t4, fnctn[1], fnctn[0]);
   and1x4_1 ad5(m3, alu_op[1], alu_op[0], fnctn[2], t4);

   or o3(alu_code[0], m3, t3);

endmodule // alu_controller
