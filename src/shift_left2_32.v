module shift_left2_32 (/*AUTOARG*/
   // Outputs
   out,
   // Inputs
   a
   ) ;
   input [31:0] a;
   output [31:0] out;

   assign out[0] = 1'b0;
   assign out[1] = 1'b0;
   assign out[2] = a[0];
   assign out[3] = a[1];
   assign out[4] = a[2];
   assign out[5] = a[3];
   assign out[6] = a[4];
   assign out[7] = a[5];
   assign out[8] = a[6];
   assign out[9] = a[7];
   assign out[10] = a[8];
   assign out[11] = a[9];
   assign out[12] = a[10];
   assign out[13] = a[11];
   assign out[14] = a[12];
   assign out[15] = a[13];
   assign out[16] = a[14];
   assign out[17] = a[15];
   assign out[18] = a[16];
   assign out[19] = a[17];
   assign out[20] = a[18];
   assign out[21] = a[19];
   assign out[22] = a[20];
   assign out[23] = a[21];
   assign out[24] = a[22];
   assign out[25] = a[23];
   assign out[26] = a[24];
   assign out[27] = a[25];
   assign out[28] = a[26];
   assign out[29] = a[27];
   assign out[30] = a[28];
   assign out[31] = a[29];

endmodule // shift_left2_32
