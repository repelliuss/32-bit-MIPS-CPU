`define DELAY 20
module sign_extend16_32_testbench();
   reg [15:0] a;
   wire [31:0] out;

   sign_extend16_32 se(out, a);

   initial begin
      a = 16'b0011_0101_1010_0010;
      #`DELAY;
      a = 16'b1011_0101_1010_0010;
   end

   initial begin
      $monitor("time = %2d, out=%32b, a=%16b", $time, out, a);
   end

endmodule //sign_extend16_32_testbench
