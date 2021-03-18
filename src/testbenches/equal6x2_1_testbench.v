`define DELAY 20
module equal6x2_1_testbench();
   reg [5:0] a;
   reg [5:0] b;
   reg       expected;
   wire       tresult;
   wire      out;

   equal6x2_1 ad(out, a, b);
   xnor xn(tresult, out, expected);

   initial begin
      a = 6'b01_1111; b=6'b01_1111;
      expected = 1'b1;
      #`DELAY;
      a = 6'b01_1111; b=6'b00_1111;
      expected = 1'b0;
   end

   initial begin
      $monitor("time = %2d, a =%6b, b=%6b, out=%1b, expected=%1b, tresult=%1b", $time, a, b, out, expected, tresult);
   end

endmodule //equal6x2_1_testbench
