`define DELAY 20
module alu_controller_testbench();
   reg [1:0] alu_op;
   reg [5:0] fnctn;
   reg [2:0] expected;
   wire tresult;
   wire [2:0] alu_code;

   alu_controller ac(alu_code, alu_op, fnctn);

   wire [2:0] t;

   xnor x0(t[0], alu_code[0], expected[0]);
   xnor x1(t[1], alu_code[1], expected[1]);
   xnor x2(t[2], alu_code[2], expected[2]);

   and1x3_1 ad0(tresult, t[0], t[1], t[2]);

   initial begin
      alu_op = 2'b00;
      fnctn = 6'b01_1001;
      expected = 3'b010;
      #`DELAY;
      alu_op = 2'b00;
      fnctn = 6'b01_1111;
      expected = 3'b010;
      #`DELAY;
      alu_op = 2'b01;
      fnctn = 6'b01_1111;
      expected = 3'b110;
      #`DELAY;
      alu_op = 2'b10;
      fnctn = 6'b01_1111;
      expected = 3'b001;
      #`DELAY;
      alu_op = 2'b10;
      fnctn = 6'b01_0101;
      expected = 3'b001;
      #`DELAY;
      alu_op = 2'b11;
      fnctn = 6'b10_0000;
      expected = 3'b010;
      #`DELAY;
      alu_op = 2'b11;
      fnctn = 6'b10_0010;
      expected = 3'b110;
      #`DELAY;
      alu_op = 2'b11;
      fnctn = 6'b10_0110;
      expected = 3'b011;
      #`DELAY;
      alu_op = 2'b11;
      fnctn = 6'b10_0100;
      expected = 3'b000;
      #`DELAY;
      alu_op = 2'b11;
      fnctn = 6'b10_0101;
      expected = 3'b001;
   end

   initial begin
      $monitor("time = %2d, alu_op=%b2, fnctn=%6b, alu_code=%3b, expected=%4b, tresult=%1b", $time, alu_op, fnctn, alu_code, expected, tresult);
   end

endmodule //alu_controller_testbench
