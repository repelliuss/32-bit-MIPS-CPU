`define DELAY 20
module or1x4_1_testbench();
   reg a, b, c, d;
   reg expected;
   wire tresult;
   wire      out;

   or1x4_1 o(out, a, b, c, d);
   xnor xn(tresult, out, expected);

   initial begin
      a=0;
      b=0;
      c=1;
      d=0;
      expected = 1'b1;
      #`DELAY;
      a=0;
      b=0;
      c=0;
      d=0;
      expected = 1'b0;
   end

   initial begin
      $monitor("time = %2d, a =%b, b=%b, c=%b, d=%b, out=%1b, expected=%1b, tresult=%1b", $time, a, b, c, d, out, expected, tresult);
   end

endmodule //or1x4_1_testbench
