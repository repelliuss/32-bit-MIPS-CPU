module alu1 (/*AUTOARG*/
   // Outputs
   ri, cip1,
   // Inputs
   a, b, ci, alu_code
   ) ;
   input a, b, ci;
   input [2:0] alu_code;
   output      ri, cip1;

   wire        xb; //initial xor b
   xor x0(xb, b, alu_code[2]);

   wire        oxba, //or xb with a
               axba; //and xb with a
   or o0(oxba, xb, a);
   and a0(axba, xb, a);

   wire        naxba; //not axba
   not n0(naxba, axba);

   wire        xab; //xor a and b
   and a1(xab, naxba, oxba);

   wire        axabc; //and xab and ci
   and a2(axabc, xab, ci);

   or o1(cip1, axba, axabc);

   wire        oxabc;
   or o2(oxabc, xab, ci);

   wire        naxabc;
   not n1(naxabc, axabc);

   wire        xabc;
   and a3(xabc, naxabc, oxabc);

   mux4_1 m2(ri, axba, oxba, xabc, xab, alu_code[1:0]);

endmodule // alu1
