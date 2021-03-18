`define DELAY 20
module or1x32_1_testbench();
   reg expected;
   wire tresult;
   wire out;
   reg
        r0,
        r1,
        r2,
        r3,
        r4,
        r5,
        r6,
        r7,
        r8,
        r9,
        r10,
        r11,
        r12,
        r13,
        r14,
        r15,
        r16,
        r17,
        r18,
        r19,
        r20,
        r21,
        r22,
        r23,
        r24,
        r25,
        r26,
        r27,
        r28,
        r29,
        r30,
        r31;

   or1x32_1 o(out,
              r0,
              r1,
              r2,
              r3,
              r4,
              r5,
              r6,
              r7,
              r8,
              r9,
              r10,
              r11,
              r12,
              r13,
              r14,
              r15,
              r16,
              r17,
              r18,
              r19,
              r20,
              r21,
              r22,
              r23,
              r24,
              r25,
              r26,
              r27,
              r28,
              r29,
              r30,
              r31
              );

   xnor xn(tresult, out, expected);

   initial begin
      r0=1'b0; r1=1'b0; r2=1'b0; r3=1'b0; r4=1'b0; r5=1'b0; r6=1'b0; r7=1'b0; r8=1'b0; r9=1'b0; r10=1'b0; r11=1'b0; r12=1'b0; r13=1'b0; r14=1'b0; r15=1'b0; r16=1'b0; r17=1'b0; r18=1'b0; r19=1'b0; r20=1'b0; r21=1'b0; r22=1'b0; r23=1'b0; r24=1'b0; r25=1'b0; r26=1'b0; r27=1'b0; r28=1'b0; r29=1'b0; r30=1'b0; r31=1'b0; expected = 1'b0;
      #`DELAY;
      r0=1'b0; r1=1'b0; r2=1'b0; r3=1'b0; r4=1'b0; r5=1'b0; r6=1'b0; r7=1'b0; r8=1'b0; r9=1'b0; r10=1'b0; r11=1'b0; r12=1'b0; r13=1'b0; r14=1'b0; r15=1'b0; r16=1'b0; r17=1'b0; r18=1'b0; r19=1'b0; r20=1'b0; r21=1'b0; r22=1'b0; r23=1'b0; r24=1'b1; r25=1'b0; r26=1'b0; r27=1'b0; r28=1'b0; r29=1'b0; r30=1'b0; r31=1'b0; expected = 1'b1;
      #`DELAY;
      r0=1'b0; r1=1'b0; r2=1'b0; r3=1'b1; r4=1'b0; r5=1'b0; r6=1'b0; r7=1'b0; r8=1'b0; r9=1'b0; r10=1'b1; r11=1'b0; r12=1'b0; r13=1'b0; r14=1'b1; r15=1'b0; r16=1'b0; r17=1'b0; r18=1'b1; r19=1'b0; r20=1'b0; r21=1'b0; r22=1'b1; r23=1'b0; r24=1'b1; r25=1'b0; r26=1'b0; r27=1'b0; r28=1'b0; r29=1'b0; r30=1'b0; r31=1'b0; expected = 1'b1;
   end

   initial begin
      $monitor("time = %2d, out=%1b, expected=%1b, tresult=%1b", $time, out, expected, tresult);
   end

endmodule //or1x32_1_testbench
