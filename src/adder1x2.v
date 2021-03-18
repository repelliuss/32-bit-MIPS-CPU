module adder1x2 (/*AUTOARG*/
   // Outputs
   out, c,
   // Inputs
   a, b, c_i
   ) ;

   input a, b, c_i;
   output out, c;
   wire   s1;
   wire   c1, c2, c3;

   xor x1(s1, a, b);
   xor x2(out, s1, c_i);
   and a0(c1, a, b);
   and a1(c2, b, c_i);
   and a2(c3, a, c_i);
   or o0(c, c1, c2, c3);

endmodule // adder1x2
