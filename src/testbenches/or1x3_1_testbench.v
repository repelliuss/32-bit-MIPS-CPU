`define DELAY 20
module or1x3_1_testbench();
   reg a, b, c;
   reg expected;
   wire tresult;
   wire      out;

   or1x3_1 o(out, a, b, c);
   xnor xn(tresult, out, expected);

   initial begin
      a=0;
      b=0;
      c=1;
      expected = 1'b1;
      #`DELAY;
      a=0;
      b=0;
      c=0;
      expected = 1'b0;
   end

   initial begin
      $monitor("time = %2d, a =%b, b=%b, c=%b, out=%1b, expected=%1b, tresult=%1b", $time, a, b, c, out, expected, tresult);
   end

endmodule //or1x3_1_testbench
