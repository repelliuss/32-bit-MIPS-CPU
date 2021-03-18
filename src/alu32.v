module alu32 (/*AUTOARG*/
              // Outputs
              out, zero,
              // Inputs
              a, b, alu_code
              ) ;
   input [31:0] a;
   input [31:0] b;
   input [2:0]  alu_code;
   output [31:0] out;
   output        zero;
   wire          set;
   wire [32:1]   c;

   alu1 a0(out[0], c[1], a[0], b[0], alu_code[2], alu_code);
   alu1 a1(out[1], c[2], a[1], b[1], c[1], alu_code);
   alu1 a2(out[2], c[3], a[2], b[2], c[2], alu_code);
   alu1 a3(out[3], c[4], a[3], b[3], c[3], alu_code);
   alu1 a4(out[4], c[5], a[4], b[4], c[4], alu_code);
   alu1 a5(out[5], c[6], a[5], b[5], c[5], alu_code);
   alu1 a6(out[6], c[7], a[6], b[6], c[6], alu_code);
   alu1 a7(out[7], c[8], a[7], b[7], c[7], alu_code);
   alu1 a8(out[8], c[9], a[8], b[8], c[8], alu_code);
   alu1 a9(out[9], c[10], a[9], b[9], c[9], alu_code);
   alu1 a10(out[10], c[11], a[10], b[10], c[10], alu_code);
   alu1 a11(out[11], c[12], a[11], b[11], c[11], alu_code);
   alu1 a12(out[12], c[13], a[12], b[12], c[12], alu_code);
   alu1 a13(out[13], c[14], a[13], b[13], c[13], alu_code);
   alu1 a14(out[14], c[15], a[14], b[14], c[14], alu_code);
   alu1 a15(out[15], c[16], a[15], b[15], c[15], alu_code);
   alu1 a16(out[16], c[17], a[16], b[16], c[16], alu_code);
   alu1 a17(out[17], c[18], a[17], b[17], c[17], alu_code);
   alu1 a18(out[18], c[19], a[18], b[18], c[18], alu_code);
   alu1 a19(out[19], c[20], a[19], b[19], c[19], alu_code);
   alu1 a20(out[20], c[21], a[20], b[20], c[20], alu_code);
   alu1 a21(out[21], c[22], a[21], b[21], c[21], alu_code);
   alu1 a22(out[22], c[23], a[22], b[22], c[22], alu_code);
   alu1 a23(out[23], c[24], a[23], b[23], c[23], alu_code);
   alu1 a24(out[24], c[25], a[24], b[24], c[24], alu_code);
   alu1 a25(out[25], c[26], a[25], b[25], c[25], alu_code);
   alu1 a26(out[26], c[27], a[26], b[26], c[26], alu_code);
   alu1 a27(out[27], c[28], a[27], b[27], c[27], alu_code);
   alu1 a28(out[28], c[29], a[28], b[28], c[28], alu_code);
   alu1 a29(out[29], c[30], a[29], b[29], c[29], alu_code);
   alu1 a30(out[30], c[31], a[30], b[30], c[30], alu_code);
   alu1 a31(out[31], c[32], a[31], b[31], c[31], alu_code);

   wire          t0;

   or1x32_1 o(t0,
              out[0],
              out[1],
              out[2],
              out[3],
              out[4],
              out[5],
              out[6],
              out[7],
              out[8],
              out[9],
              out[10],
              out[11],
              out[12],
              out[13],
              out[14],
              out[15],
              out[16],
              out[17],
              out[18],
              out[19],
              out[20],
              out[21],
              out[22],
              out[23],
              out[24],
              out[25],
              out[26],
              out[27],
              out[28],
              out[29],
              out[30],
              out[31]);

   not n(zero, t0);

endmodule // alu32
