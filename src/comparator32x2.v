module comparator32x2 (/*AUTOARG*/
                       // Outputs
                       lt, eq, gt,
                       // Inputs
                       a, b
                       ) ;
   input [31:0] a;
   input [31:0] b;
   output       lt, eq, gt;
   wire [30:0]  ltm;
   wire [30:0]  eqm;
   wire [30:0]  gtm;

   wire         tlt, tgt;

   comparator1x2 cmp31(ltm[30], eqm[30], gtm[30], a[31], b[31], 1'b0, 1'b0);
   comparator1x2 cmp30(ltm[29], eqm[29], gtm[29], a[30], b[30], ltm[30], gtm[30]);
   comparator1x2 cmp29(ltm[28], eqm[28], gtm[28], a[29], b[29], ltm[29], gtm[29]);
   comparator1x2 cmp28(ltm[27], eqm[27], gtm[27], a[28], b[28], ltm[28], gtm[28]);
   comparator1x2 cmp27(ltm[26], eqm[26], gtm[26], a[27], b[27], ltm[27], gtm[27]);
   comparator1x2 cmp26(ltm[25], eqm[25], gtm[25], a[26], b[26], ltm[26], gtm[26]);
   comparator1x2 cmp25(ltm[24], eqm[24], gtm[24], a[25], b[25], ltm[25], gtm[25]);
   comparator1x2 cmp24(ltm[23], eqm[23], gtm[23], a[24], b[24], ltm[24], gtm[24]);
   comparator1x2 cmp23(ltm[22], eqm[22], gtm[22], a[23], b[23], ltm[23], gtm[23]);
   comparator1x2 cmp22(ltm[21], eqm[21], gtm[21], a[22], b[22], ltm[22], gtm[22]);
   comparator1x2 cmp21(ltm[20], eqm[20], gtm[20], a[21], b[21], ltm[21], gtm[21]);
   comparator1x2 cmp20(ltm[19], eqm[19], gtm[19], a[20], b[20], ltm[20], gtm[20]);
   comparator1x2 cmp19(ltm[18], eqm[18], gtm[18], a[19], b[19], ltm[19], gtm[19]);
   comparator1x2 cmp18(ltm[17], eqm[17], gtm[17], a[18], b[18], ltm[18], gtm[18]);
   comparator1x2 cmp17(ltm[16], eqm[16], gtm[16], a[17], b[17], ltm[17], gtm[17]);
   comparator1x2 cmp16(ltm[15], eqm[15], gtm[15], a[16], b[16], ltm[16], gtm[16]);
   comparator1x2 cmp15(ltm[14], eqm[14], gtm[14], a[15], b[15], ltm[15], gtm[15]);
   comparator1x2 cmp14(ltm[13], eqm[13], gtm[13], a[14], b[14], ltm[14], gtm[14]);
   comparator1x2 cmp13(ltm[12], eqm[12], gtm[12], a[13], b[13], ltm[13], gtm[13]);
   comparator1x2 cmp12(ltm[11], eqm[11], gtm[11], a[12], b[12], ltm[12], gtm[12]);
   comparator1x2 cmp11(ltm[10], eqm[10], gtm[10], a[11], b[11], ltm[11], gtm[11]);
   comparator1x2 cmp10(ltm[9], eqm[9], gtm[9], a[10], b[10], ltm[10], gtm[10]);
   comparator1x2 cmp9(ltm[8], eqm[8], gtm[8], a[9], b[9], ltm[9], gtm[9]);
   comparator1x2 cmp8(ltm[7], eqm[7], gtm[7], a[8], b[8], ltm[8], gtm[8]);
   comparator1x2 cmp7(ltm[6], eqm[6], gtm[6], a[7], b[7], ltm[7], gtm[7]);
   comparator1x2 cmp6(ltm[5], eqm[5], gtm[5], a[6], b[6], ltm[6], gtm[6]);
   comparator1x2 cmp5(ltm[4], eqm[4], gtm[4], a[5], b[5], ltm[5], gtm[5]);
   comparator1x2 cmp4(ltm[3], eqm[3], gtm[3], a[4], b[4], ltm[4], gtm[4]);
   comparator1x2 cmp3(ltm[2], eqm[2], gtm[2], a[3], b[3], ltm[3], gtm[3]);
   comparator1x2 cmp2(ltm[1], eqm[1], gtm[1], a[2], b[2], ltm[2], gtm[2]);
   comparator1x2 cmp1(ltm[0], eqm[0], gtm[0], a[1], b[1], ltm[1], gtm[1]);
   comparator1x2 cmp0(tlt, eq, tgt, a[0], b[0], ltm[0], gtm[0]);

   //fix for negatives
   wire         nsa, nsb;
   wire         t0, t1, t2, t3;

   not n0(nsa, a[31]);
   not n1(nsb, b[31]);

   and a0(t0, tlt, nsb);
   and a1(t1, tgt, a[31]);
   or o0(lt, t0, t1);

   and a2(t2, tgt, nsa);
   and a3(t3, tlt, b[31]);
   or o1(gt, t2, t3);

endmodule // comparator32x2
