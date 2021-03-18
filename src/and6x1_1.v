module and6x1_1 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a
   ) ;
   input [5:0] a;
   output      out;
   wire        o0, o1, o2, o3;

   and a01(o0, a[0], a[1]);
   and a12(o1, o0, a[2]);
   and a23(o2, o1, a[3]);
   and a34(o3, o2, a[4]);
   and a45(out, o3, a[5]);

endmodule // and6x1_1
