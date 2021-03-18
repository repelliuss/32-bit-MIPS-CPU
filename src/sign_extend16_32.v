module sign_extend16_32 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a
   ) ;
   input [15:0] a;
   output [31:0] out;

   assign out[15:0] = a;
   assign out[16] = a[15];
   assign out[17] = a[15];
   assign out[18] = a[15];
   assign out[19] = a[15];
   assign out[20] = a[15];
   assign out[21] = a[15];
   assign out[22] = a[15];
   assign out[23] = a[15];
   assign out[24] = a[15];
   assign out[25] = a[15];
   assign out[26] = a[15];
   assign out[27] = a[15];
   assign out[28] = a[15];
   assign out[29] = a[15];
   assign out[30] = a[15];
   assign out[31] = a[15];

endmodule // sign_extend16_32
