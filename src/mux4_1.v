module mux4_1 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b, c, d, select
   ) ;
   input a, b, c, d;
   input [1:0] select;
   output out;

   wire   s0, s1;
   mux2_1 m0(s0, a, b, select[0]);
   mux2_1 m1(s1, c, d, select[0]);
   mux2_1 m2(out, s0, s1, select[1]);

endmodule // mux4_1
