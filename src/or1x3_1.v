module or1x3_1 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b, c
   ) ;
   input a, b, c;
   output out;
   wire   o0;

   or or0(o0, a, b);
   or or1(out, o0, c);

endmodule // or1x3_1
