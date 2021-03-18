`define DELAY 20
module comparator_controller_testbench();
   reg lt, eq, gt;
   reg [1:0] expected;
   wire      tresult;
   wire [1:0] out;

   comparator_controller cc(out, lt, eq, gt);

   wire m1,m2;
   xnor xn1(m1, out[1], expected[1]);
   xnor xn2(m2, out[0], expected[0]);
   and ad(tresult, m1, m2);

   initial begin
      lt = 1;
      eq = 0;
      gt = 0;
      expected = 2'b10;
      #`DELAY;
      lt = 0;
      eq = 1;
      gt = 0;
      expected = 2'b01;
      #`DELAY;
      lt = 0;
      eq = 0;
      gt = 1;
      expected = 2'b11;
   end

   initial begin
      $monitor("time = %2d, lt=%1b, eq=%1b, gt=%1b, out=%2b, expected=%2b, tresult=%1b", $time, lt, eq, gt, out, expected, tresult);
   end

endmodule //comparator_controller_testbench
