module adder2x32_32 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b
   ) ;

   input [31:0] a, b;
   output [31:0] out;
   wire [31:0]   c;

   adder1x2 t1(out[0], c[0], a[0], b[0], 1'b0);
   adder1x2 t2(out[1], c[1], a[1], b[1], c[0]);
   adder1x2 t3(out[2], c[2], a[2], b[2], c[1]);
   adder1x2 t4(out[3], c[3], a[3], b[3], c[2]);
   adder1x2 t5(out[4], c[4], a[4], b[4], c[3]);
   adder1x2 t6(out[5], c[5], a[5], b[5], c[4]);
   adder1x2 t7(out[6], c[6], a[6], b[6], c[5]);
   adder1x2 t8(out[7], c[7], a[7], b[7], c[6]);
   adder1x2 t9(out[8], c[8], a[8], b[8], c[7]);
   adder1x2 t10(out[9], c[9], a[9], b[9], c[8]);
   adder1x2 t11(out[10], c[10], a[10], b[10], c[9]);
   adder1x2 t12(out[11], c[11], a[11], b[11], c[10]);
   adder1x2 t13(out[12], c[12], a[12], b[12], c[11]);
   adder1x2 t14(out[13], c[13], a[13], b[13], c[12]);
   adder1x2 t15(out[14], c[14], a[14], b[14], c[13]);
   adder1x2 t16(out[15], c[15], a[15], b[15], c[14]);
   adder1x2 t17(out[16], c[16], a[16], b[16], c[15]);
   adder1x2 t18(out[17], c[17], a[17], b[17], c[16]);
   adder1x2 t19(out[18], c[18], a[18], b[18], c[17]);
   adder1x2 t20(out[19], c[19], a[19], b[19], c[18]);
   adder1x2 t21(out[20], c[20], a[20], b[20], c[19]);
   adder1x2 t22(out[21], c[21], a[21], b[21], c[20]);
   adder1x2 t23(out[22], c[22], a[22], b[22], c[21]);
   adder1x2 t24(out[23], c[23], a[23], b[23], c[22]);
   adder1x2 t25(out[24], c[24], a[24], b[24], c[23]);
   adder1x2 t26(out[25], c[25], a[25], b[25], c[24]);
   adder1x2 t27(out[26], c[26], a[26], b[26], c[25]);
   adder1x2 t28(out[27], c[27], a[27], b[27], c[26]);
   adder1x2 t29(out[28], c[28], a[28], b[28], c[27]);
   adder1x2 t30(out[29], c[29], a[29], b[29], c[28]);
   adder1x2 t31(out[30], c[30], a[30], b[30], c[29]);
   adder1x2 t32(out[31], c[31], a[31], b[31], c[30]);

endmodule // adder2x32_32
