module mux2_32 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b, select
   ) ;

   input [31:0] a;
   input [31:0] b;
   input select;
   output [31:0] out;

   mux2_1 m0(out[0], a[0], b[0], select);
   mux2_1 m1(out[1], a[1], b[1], select);
   mux2_1 m2(out[2], a[2], b[2], select);
   mux2_1 m3(out[3], a[3], b[3], select);
   mux2_1 m4(out[4], a[4], b[4], select);
   mux2_1 m5(out[5], a[5], b[5], select);
   mux2_1 m6(out[6], a[6], b[6], select);
   mux2_1 m7(out[7], a[7], b[7], select);
   mux2_1 m8(out[8], a[8], b[8], select);
   mux2_1 m9(out[9], a[9], b[9], select);
   mux2_1 m10(out[10], a[10], b[10], select);
   mux2_1 m11(out[11], a[11], b[11], select);
   mux2_1 m12(out[12], a[12], b[12], select);
   mux2_1 m13(out[13], a[13], b[13], select);
   mux2_1 m14(out[14], a[14], b[14], select);
   mux2_1 m15(out[15], a[15], b[15], select);
   mux2_1 m16(out[16], a[16], b[16], select);
   mux2_1 m17(out[17], a[17], b[17], select);
   mux2_1 m18(out[18], a[18], b[18], select);
   mux2_1 m19(out[19], a[19], b[19], select);
   mux2_1 m20(out[20], a[20], b[20], select);
   mux2_1 m21(out[21], a[21], b[21], select);
   mux2_1 m22(out[22], a[22], b[22], select);
   mux2_1 m23(out[23], a[23], b[23], select);
   mux2_1 m24(out[24], a[24], b[24], select);
   mux2_1 m25(out[25], a[25], b[25], select);
   mux2_1 m26(out[26], a[26], b[26], select);
   mux2_1 m27(out[27], a[27], b[27], select);
   mux2_1 m28(out[28], a[28], b[28], select);
   mux2_1 m29(out[29], a[29], b[29], select);
   mux2_1 m30(out[30], a[30], b[30], select);
   mux2_1 m31(out[31], a[31], b[31], select);

endmodule // mux2_32
