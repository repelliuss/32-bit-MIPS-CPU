module and1x4_1 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b, c, d
   ) ;
   input a, b, c, d;
   output out;
   wire   o0;

   and1x3_1 ad0(o0, a, b, c);
   and ad1(out, o0, d);

endmodule // and1x4_1
