module mux4_32 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b, c, d, select
   ) ;

   input [31:0] a;
   input [31:0] b;
   input [31:0] c;
   input [31:0] d;
   input [1:0]  select;
   output [31:0] out;

   mux4_1 m0(out[0], a[0], b[0], c[0], d[0], select);
   mux4_1 m1(out[1], a[1], b[1], c[1], d[1], select);
   mux4_1 m2(out[2], a[2], b[2], c[2], d[2], select);
   mux4_1 m3(out[3], a[3], b[3], c[3], d[3], select);
   mux4_1 m4(out[4], a[4], b[4], c[4], d[4], select);
   mux4_1 m5(out[5], a[5], b[5], c[5], d[5], select);
   mux4_1 m6(out[6], a[6], b[6], c[6], d[6], select);
   mux4_1 m7(out[7], a[7], b[7], c[7], d[7], select);
   mux4_1 m8(out[8], a[8], b[8], c[8], d[8], select);
   mux4_1 m9(out[9], a[9], b[9], c[9], d[9], select);
   mux4_1 m10(out[10], a[10], b[10], c[10], d[10], select);
   mux4_1 m11(out[11], a[11], b[11], c[11], d[11], select);
   mux4_1 m12(out[12], a[12], b[12], c[12], d[12], select);
   mux4_1 m13(out[13], a[13], b[13], c[13], d[13], select);
   mux4_1 m14(out[14], a[14], b[14], c[14], d[14], select);
   mux4_1 m15(out[15], a[15], b[15], c[15], d[15], select);
   mux4_1 m16(out[16], a[16], b[16], c[16], d[16], select);
   mux4_1 m17(out[17], a[17], b[17], c[17], d[17], select);
   mux4_1 m18(out[18], a[18], b[18], c[18], d[18], select);
   mux4_1 m19(out[19], a[19], b[19], c[19], d[19], select);
   mux4_1 m20(out[20], a[20], b[20], c[20], d[20], select);
   mux4_1 m21(out[21], a[21], b[21], c[21], d[21], select);
   mux4_1 m22(out[22], a[22], b[22], c[22], d[22], select);
   mux4_1 m23(out[23], a[23], b[23], c[23], d[23], select);
   mux4_1 m24(out[24], a[24], b[24], c[24], d[24], select);
   mux4_1 m25(out[25], a[25], b[25], c[25], d[25], select);
   mux4_1 m26(out[26], a[26], b[26], c[26], d[26], select);
   mux4_1 m27(out[27], a[27], b[27], c[27], d[27], select);
   mux4_1 m28(out[28], a[28], b[28], c[28], d[28], select);
   mux4_1 m29(out[29], a[29], b[29], c[29], d[29], select);
   mux4_1 m30(out[30], a[30], b[30], c[30], d[30], select);
   mux4_1 m31(out[31], a[31], b[31], c[31], d[31], select);

endmodule // mux4_32
