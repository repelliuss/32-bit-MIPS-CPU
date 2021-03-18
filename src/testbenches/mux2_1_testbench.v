`define DELAY 20
module mux2_1_testbench();
   reg a, b, select;
   reg expected;
   wire tresult;
   wire out;

   mux2_1 m21 (out, a, b, select);
   xnor xn(tresult, out, expected);

   initial begin
      a = 1'b1; b = 1'b0; select = 1'b0;
      expected = 1'b1;
      #`DELAY;
      a = 1'b0; b = 1'b1; select = 1'b1;
      expected = 1'b1;
   end

   initial begin
      $monitor("time = %2d, a =%1b, b=%1b, select=%1b, out=%1b, expected=%1b, tresult=%1b", $time, a, b, select, out, expected, tresult);
   end

endmodule //mux2_1_testbench
