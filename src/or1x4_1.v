module or1x4_1 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b, c, d
   ) ;
   input a, b, c, d;
   output out;
   wire   o0;

   or1x3_1 or0(o0, a, b, c);
   or or1(out, o0, d);

endmodule // or1x4_1
