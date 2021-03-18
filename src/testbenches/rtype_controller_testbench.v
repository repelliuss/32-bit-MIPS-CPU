`define DELAY 20
module rtype_controller_testbench();
   reg rtype_i;
   reg [5:0] fnctn;
   reg       exp_rtype, exp_jr;
   wire tresult;
   wire rtype, reg_write, reg_write2;
   wire jr;

   rtype_controller rc (rtype, reg_write, reg_write2, jr, rtype_i, 1'b0, 1'b0, fnctn);

   wire m1,m2;
   xnor xn1(m1, rtype, exp_rtype);
   xnor xn2(m2, jr, exp_jr);
   and ad(tresult, m1, m2);

   initial begin
      rtype_i = 1;
      fnctn = 6'b00_1000;
      exp_rtype = 0;
      exp_jr = 1;
      #`DELAY;
      rtype_i = 0;
      fnctn = 6'b00_1000;
      exp_rtype = 0;
      exp_jr = 0;
      #`DELAY;
      rtype_i = 1;
      fnctn = 6'b10_1000;
      exp_rtype = 1;
      exp_jr = 0;
      #`DELAY;
      rtype_i = 0;
      fnctn = 6'b10_1000;
      exp_rtype = 0;
      exp_jr = 0;
   end

   initial begin
      $monitor("time = %2d, rtype_i=%1b, rtype=%1b, exp_rtype=%1b, fnctn=%1b, jr=%1b, exp_jr=%1b, tresult=%1b", $time, rtype_i, rtype, exp_rtype, fnctn, jr, exp_jr, tresult);
   end

endmodule //rtype_controller_testbench
