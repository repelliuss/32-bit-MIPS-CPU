module mux2_5 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b, select
   ) ;

   input [4:0] a;
   input [4:0] b;
   input select;
   output [4:0] out;

   mux2_1 m0(out[0], a[0], b[0], select);
   mux2_1 m1(out[1], a[1], b[1], select);
   mux2_1 m2(out[2], a[2], b[2], select);
   mux2_1 m3(out[3], a[3], b[3], select);
   mux2_1 m4(out[4], a[4], b[4], select);

endmodule // mux2_5
