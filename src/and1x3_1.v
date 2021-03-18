module and1x3_1 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b, c
   ) ;
   input a, b, c;
   output out;
   wire   o0;

   and ad0(o0, a, b);
   and ad1(out, o0, c);

endmodule // and1x3_1
