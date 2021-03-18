`define DELAY 20
module alu32_testbench();
   reg [31:0] a;
   reg [31:0] b;
   reg [2:0] alu_code;
   reg [31:0] exp_alu_result;
   wire tresult;
   wire [31:0] alu_result;
   wire        zero;

   alu32 al0(alu_result, zero, a, b, alu_code);

   wire        t0, lt,eq,gt;
   comparator32x2 cmp(lt,eq,gt,alu_result, exp_alu_result);
   assign tresult = eq;

   initial begin
      a = 32'b0001_1000_0000_0000_0000_0100_0100_0001;
      b = 32'b0001_1000_0110_0100_0010_0010_0000_0001;
      alu_code = 3'b000;
      exp_alu_result = 32'b0001_1000_0000_0000_0000_0000_0000_0001;
      #`DELAY;
      a = 32'b0001_1000_0000_0000_0000_0100_0100_0001;
      b = 32'b0001_1000_0110_0100_0010_0010_0000_0001;
      alu_code = 3'b001;
      exp_alu_result = 32'b0001_1000_0110_0100_0010_0110_0100_0001;
      #`DELAY;
      a = 32'b0001_1000_0000_0000_0000_0100_0100_0001;
      b = 32'b0001_1000_0110_0100_0010_0010_0000_0001;
      alu_code = 3'b010;
      exp_alu_result = 32'b0011_0000_0110_0100_0010_0110_0100_0010;
      #`DELAY;
      a = 32'b0000_0000_0000_0001_1110_0010_0100_0000;
      b = 32'b0000_0000_0000_0101_0001_1010_0000_1001;
      alu_code = 3'b110;
      exp_alu_result = 32'b11111111111111001100100000110111;
      #`DELAY;
      a = 32'b0000_0000_0000_0101_0001_1010_0000_1001;
      b = 32'b0000_0000_0000_0001_1110_0010_0100_0000;
      alu_code = 3'b110;
      exp_alu_result = 32'b0000_0000_0000_0011_0011_0111_1100_1001;
      #`DELAY;
      a = 32'b0011_1000_0000_0000_0000_0100_0100_0001;
      b = 32'b0001_1000_0110_0100_0010_0010_0000_0001;
      alu_code = 3'b011;
      exp_alu_result = 32'b0010_0000_0110_0100_0010_0110_0100_0000;
   end

   initial begin
      $monitor("time = %2d, a =%32b, b=%32b, alu_result=%32b, exp_alu_result=%32b, alu_code=%3b, tresult=%1b", $time, a, b, alu_result, exp_alu_result, alu_code, tresult);
   end

endmodule //alu32_testbench
