`define DELAY 20
module comparator1x2_testbench();
   reg a;
   reg b;
   reg lti, gti;
   reg exp_lt, exp_gt, exp_eq;
   wire lt, eq, gt;
   wire tresult;

   comparator1x2 cmp(lt, eq, gt, a, b, lti, gti);

   wire t0, t1, t2;
   xnor xn0(t0, lt, exp_lt);
   xnor xn1(t1, eq, exp_eq);
   xnor xn2(t2, gt, exp_gt);

   and1x3_1 a0(tresult, t0, t1, t2);

   initial begin
      a = 1'b0;
      b = 1'b0;
      lti = 1'b0;
      gti = 1'b0;
      exp_lt = 1'b0;
      exp_eq = 1'b1;
      exp_gt = 1'b0;
      #`DELAY;
      a = 1'b1;
      b = 1'b0;
      lti = 1'b0;
      gti = 1'b0;
      exp_lt = 1'b0;
      exp_eq = 1'b0;
      exp_gt = 1'b1;
      #`DELAY;
      a = 1'b0;
      b = 1'b1;
      lti = 1'b0;
      gti = 1'b0;
      exp_lt = 1'b1;
      exp_eq = 1'b0;
      exp_gt = 1'b0;
      #`DELAY;
      a = 1'b1;
      b = 1'b1;
      lti = 1'b0;
      gti = 1'b0;
      exp_lt = 1'b0;
      exp_eq = 1'b1;
      exp_gt = 1'b0;
      #`DELAY;
      a = 1'b1;
      b = 1'b1;
      lti = 1'b0;
      gti = 1'b1;
      exp_lt = 1'b0;
      exp_eq = 1'b0;
      exp_gt = 1'b1;
      #`DELAY;
      a = 1'b1;
      b = 1'b1;
      lti = 1'b1;
      gti = 1'b0;
      exp_lt = 1'b1;
      exp_eq = 1'b0;
      exp_gt = 1'b0;
      #`DELAY;
      a = 1'b1;
      b = 1'b0;
      lti = 1'b1;
      gti = 1'b0;
      exp_lt = 1'b1;
      exp_eq = 1'b0;
      exp_gt = 1'b0;
   end

   initial begin
      $monitor("time = %2d, a =%1b, b=%1b, lti=%1b, gti=%1b,  lt=%1b, eq=%1b, gt=%1b, tresult=%1b", $time, a, b, lti, gti,lt, eq, gt, tresult);
   end

endmodule //comparator1x2_testbench
