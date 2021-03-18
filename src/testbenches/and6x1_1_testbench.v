`define DELAY 20
module and6x1_1_testbench();
   reg [5:0] a;
   reg       expected;
   wire       tresult;
   wire      out;

   and6x1_1 ad(out, a);
   xnor xn(tresult, out, expected);

   initial begin
      a = 6'b01_1111;
      expected = 1'b0;
      #`DELAY;
      a = 6'b11_1111;
      expected = 1'b1;
   end

   initial begin
      $monitor("time = %2d, a =%6b, out=%1b, expected=%1b, tresult=%1b", $time, a, out, expected, tresult);
   end

endmodule //and6x1_1_testbench
