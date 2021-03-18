`define DELAY 20
module adder2x32_32_testbench();
   reg [31:0] a;
   reg [31:0] b;
   reg [31:0] expected;
   wire tresult;
   wire lt, eq, gt;
   wire [31:0] out;

   adder2x32_32 adder(out, a, b);

   comparator32x2 cmp(lt,eq,gt,out, expected);
   assign tresult = eq;

   initial begin
      a = 32'b0001_1000_0000_0000_0000_0100_0100_0001;
      b = 32'b0001_1000_0110_0100_0010_0010_0000_0001;
      expected = 32'b0011_0000_0110_0100_0010_0110_0100_0010;
      #`DELAY;
      a = 32'b0001_1000_0000_0000_0000_0100_0100_1101;
      b = 32'b0001_1000_0110_0100_0010_0010_0000_0101;
      expected = 32'b0011_0000_0110_0100_0010_0110_0101_0010;
   end

   initial begin
      $monitor("time = %2d, a =%32b, b=%32b, out=%32b, expected=%32b, tresult=%1b", $time, a, b, out, expected, tresult);
   end

endmodule //adder2x32_32_testbench
