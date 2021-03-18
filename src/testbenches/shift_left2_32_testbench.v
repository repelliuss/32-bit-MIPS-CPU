`define DELAY 20
module shift_left2_32_testbench();
   reg [31:0] a;
   wire [31:0] out;

   shift_left2_32 sl(out, a);

   initial begin
      a = 32'b0011_0101_1010_0010_0011_0101_1010_0010;
      #`DELAY;
      a = 32'b0000_0101_1010_0010_0011_0101_1010_0010;
   end

   initial begin
      $monitor("time = %2d, out=%32b, a=%32b", $time, out, a);
   end

endmodule //shift_left2_32_testbench
