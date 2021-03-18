module equal6x2_1 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a, b
   ) ;
   input [5:0] a;
   input [5:0] b;
   output      out;
   wire [5:0]  middle;

   xnor a0(middle[0], a[0], b[0]);
   xnor a1(middle[1], a[1], b[1]);
   xnor a2(middle[2], a[2], b[2]);
   xnor a3(middle[3], a[3], b[3]);
   xnor a4(middle[4], a[4], b[4]);
   xnor a5(middle[5], a[5], b[5]);

   and6x1_1 aa(out, middle);

endmodule // equal6x2_1
