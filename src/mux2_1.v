module mux2_1 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b, select
   ) ;
   input a;
   input b;
   input select;
   output out;

   wire   nselect;
   wire   and_a_nselect;
   wire   and_b_select;

   not g_not(nselect, select);
   and g_and0(and_a_nselect, a, nselect);
   and g_and1(and_b_select, b, select);
   or g_or(out, and_a_nselect, and_b_select);

endmodule // mux2_1
