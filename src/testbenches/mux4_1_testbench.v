`define DELAY 20
module mux4_1_testbench();
   reg a, b,c, d;
   reg [1:0] select;
   reg expected;
   wire tresult;
   wire out;

   mux4_1 m41 (out, a, b, c, d, select);
   xnor xn(tresult, out, expected);

   initial begin
      a = 1'b1;
      b = 1'b0;
      c= 1'b0;
      d= 1'b0;
      select = 2'b00;
      expected = 1'b1;
      #`DELAY;
      a = 1'b0;
      b = 1'b1;
      c= 1'b0;
      d= 1'b0;
      select = 2'b01;
      expected = 1'b1;
      #`DELAY;
      a = 1'b0;
      b = 1'b0;
      c= 1'b1;
      d= 1'b0;
      select = 2'b10;
      expected = 1'b1;
      #`DELAY;
      a = 1'b0;
      b = 1'b0;
      c= 1'b0;
      d= 1'b1;
      select = 2'b11;
      expected = 1'b1;
   end

   initial begin
      $monitor("time = %2d, a =%1b, b=%1b, c=%1b, d=%1b,  select=%2b, out=%1b, expected=%1b, tresult=%1b", $time, a, b, c, d,select, out, expected, tresult);
   end

endmodule //mux4_1_testbench
