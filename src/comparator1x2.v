module comparator1x2
  (/*AUTOARG*/
   // Outputs
   lt, eq, gt,
   // Inputs
   a, b, lti, gti
   ) ;
   input a;
   input b;
   input lti, gti;
   output lt, eq, gt;

   wire   nlti, ngti;
   not n0(nlti, lti);
   not n1(ngti, gti);

   wire   t0, na;
   not n2(na, a);
   and1x4_1 a0(t0, nlti, ngti, na, b);
   or o0(lt, lti, t0);

   wire   t1, nb;
   not n3(nb, b);
   and1x4_1 a1(t1, nlti, ngti, a, nb);
   or o1(gt, gti, t1);

   wire   t2;
   xnor xn0(t2, a, b);
   and1x3_1 a2(eq, nlti, ngti, t2);

endmodule // comparator1x2
