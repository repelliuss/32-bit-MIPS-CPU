module rtype_controller (/*AUTOARG*/
   // Outputs
   rtype, reg_write, reg_write2, jr,
   // Inputs
   rtype_i, reg_write_i, reg_write2_i, fnctn
   ) ;
   input       rtype_i;
   input       reg_write_i;
   input       reg_write2_i;
   input [5:0] fnctn;
   output      rtype;
   output      reg_write;
   output      reg_write2;
   output      jr;
   wire        sig_jr;

   equal6x2_1 cmp(sig_jr, fnctn, 6'b00_1000);

   wire        nsig_jr;
   not n(nsig_jr, sig_jr);
   and a1(rtype, nsig_jr, rtype_i);

   and a2(jr, sig_jr, rtype_i);

   and a3(reg_write, reg_write_i, nsig_jr);
   and a4(reg_write2, reg_write2_i, nsig_jr);


     endmodule // rtype_controller
