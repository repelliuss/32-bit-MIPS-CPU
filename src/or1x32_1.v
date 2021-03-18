module or1x32_1 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   i0, i1, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16,
   i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31
   ) ;
   input
        i0,
        i1,
        i2,
        i3,
        i4,
        i5,
        i6,
        i7,
        i8,
        i9,
        i10,
        i11,
        i12,
        i13,
        i14,
        i15,
        i16,
        i17,
        i18,
        i19,
        i20,
        i21,
        i22,
        i23,
        i24,
        i25,
        i26,
        i27,
        i28,
        i29,
        i30,
        i31;
   output out;
   wire   t0,
          t1,
          t2,
          t3,
          t4,
          t5,
          t6,
          t7,
          t8,
          t9;

   or1x4_1 o0(t0, i0, i1, i2, i3);
   or1x4_1 o1(t1, t0, i4, i5, i6);
   or1x4_1 o2(t2, t1, i7, i8, i9);
   or1x4_1 o3(t3, t2, i10, i11, i12);
   or1x4_1 o4(t4, t3, i13, i14, i15);
   or1x4_1 o5(t5, t4, i16, i17, i18);
   or1x4_1 o6(t6, t5, i19, i20, i21);
   or1x4_1 o7(t7, t6, i22, i23, i24);
   or1x4_1 o8(t8, t7, i25, i26, i27);
   or1x4_1 o9(t9, t8, i28, i29, i30);

   or o10(out, t9, i31);

endmodule // or1x32_1
