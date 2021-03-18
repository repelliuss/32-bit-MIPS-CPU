`define DELAY 20
module comparator32x2_testbench();
   reg [31:0] a;
   reg [31:0] b;
   reg exp_lt, exp_gt, exp_eq;
   wire lt, eq, gt;
   wire tresult;

   comparator32x2 cmp(lt, eq, gt, a, b);

   wire t0, t1, t2;
   xnor xn0(t0, lt, exp_lt);
   xnor xn1(t1, eq, exp_eq);
   xnor xn2(t2, gt, exp_gt);

   and1x3_1 a0(tresult, t0, t1, t2);

   initial begin
      a = 32'b0000_0000_0000_0000;
      b = 32'b0000_0000_0000_0000;
      exp_lt = 1'b0;
      exp_eq = 1'b1;
      exp_gt = 1'b0;
      #`DELAY;
      a = 32'b0001_1000_0000_0000;
      b = 32'b0000_0110_0000_0000;
      exp_lt = 1'b0;
      exp_eq = 1'b0;
      exp_gt = 1'b1;
      #`DELAY;
      a = 32'b0001_1000_0000_0000;
      b = 32'b0100_0110_0000_0000;
      exp_lt = 1'b1;
      exp_eq = 1'b0;
      exp_gt = 1'b0;
      #`DELAY;
      a = -32'b1001_1110_0000_1100;
      b = 32'b0100_0110_0000_0000;
      exp_lt = 1'b1;
      exp_eq = 1'b0;
      exp_gt = 1'b0;
      #`DELAY;
      a = 32'b0001_1110_0000_1100;
      b = -32'b1100_0110_0000_0000;
      exp_lt = 1'b0;
      exp_eq = 1'b0;
      exp_gt = 1'b1;
      #`DELAY;
      a = 32'b0001_1110_0000_1100;
      b = 32'b0001_1110_0000_1100;
      exp_lt = 1'b0;
      exp_eq = 1'b1;
      exp_gt = 1'b0;
   end

   initial begin
      $monitor("time = %2d, a =%32b, b=%32b, lt=%1b, eq=%1b, gt=%1b, tresult=%1b", $time, a, b, lt, eq, gt, tresult);
   end

endmodule //comparator32x2_testbench
